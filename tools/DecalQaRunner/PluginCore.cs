using System;
using System.Collections.Generic;
using System.IO;
using System.Globalization;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text;
using System.Text.RegularExpressions;

using Decal.Adapter;
using Decal.Adapter.Wrappers;

namespace DecalQaRunner;

// Minimal Decal plugin:
// - Provides /qa runall
// - Runs /gemqa runall (Gemcrafter server QA; former Aptitude /aptqa suite removed)
// - Captures chat until Gemcrafter summary line seen
// - Writes a timestamped log file
//
// This intentionally relies on your server-side QA commands for determinism.
public sealed class PluginCore : PluginBase
{
	private readonly object _lock = new();

	private bool _running;
	private bool _stopRequested;
	private readonly List<string> _captured = new();

	private bool _gemSummarySeen;

	private DateTime _runStartedUtc;
	private string _activeSuites = string.Empty;

	private readonly Queue<(int DelayMs, string Command)> _script = new();
	private bool _scriptRunning;

	private static readonly Regex GemSummary = new(@"\[Gemcrafter QA\]\s+Summary:\s+PASS=\d+\s+FAIL=\d+\s+SKIP=\d+", RegexOptions.Compiled);
	private static readonly Regex GemApplyGains = new(@"\[Gemcrafter\]\s+(.+?)\s+gains:\s+(.+)$", RegexOptions.Compiled);
	private static readonly Regex GemCrushNoSpells = new(@"\[Gemcrafter\]\s+That gem has no spells to crush\.", RegexOptions.Compiled);
	private static readonly Regex MortarNotInfused = new(@"\[Gemcrafter\]\s+Your mortar isn't infused with any spells yet\.", RegexOptions.Compiled);

	private bool _awaitingGemApply;
	private string _awaitingGemApplyTargetName = string.Empty;
	private DateTime _awaitingGemApplyDeadlineUtc;

	private bool _prepGemRetryUsed;
	private string _lastPrepGemFrag = string.Empty;
	private string _lastPrepEquipFrag = string.Empty;

	protected override void Startup()
	{
		try
		{
			CoreManager.Current.ChatBoxMessage += (_, e) => OnChatBoxMessage(e);
			CoreManager.Current.CommandLineText += (_, e) => OnCommandLineText(e);
			TryHookLoginForAutoRun();
			WriteToChat("[QA] DecalQaRunner loaded. One-shot: /qa auto   (optional qa-auto.cfg next to DLL)");
		}
		catch (Exception ex)
		{
			WriteToChat($"[QA] Failed to start: {ex.Message}");
		}
	}

	private void TryHookLoginForAutoRun()
	{
		try
		{
			QaAutoConfig cfg = QaAutoConfig.Load(AssemblyDirectory);
			if (!cfg.RunOnLogin)
				return;

			Core.CharacterFilter.LoginComplete += (_, _) =>
			{
				try
				{
					WriteToChat($"[QA] AUTO (on login) starting in {cfg.LoginDelayMs}ms...");
					Schedule(cfg.LoginDelayMs, () => StartAutomatedPipeline(null, null));
				}
				catch
				{
				}
			};
		}
		catch
		{
		}
	}

	protected override void Shutdown()
	{
		try
		{
			// Lambdas cannot be unsubscribed easily; rely on plugin shutdown instead.
		}
		catch
		{
		}
	}

	private void OnCommandLineText(object e)
	{
		try
		{
			string text = (TryGetStringProperty(e, "Text") ?? string.Empty).Trim();
			if (!text.StartsWith("/qa", StringComparison.OrdinalIgnoreCase))
				return;

			// Prevent the client from sending this as a server command.
			TrySetBoolProperty(e, "Eat", true);

			ProcessQaCommandText(text);
		}
		catch (Exception ex)
		{
			WriteToChat($"[QA] Command error: {ex.Message}");
		}
	}

	private void ProcessQaCommandText(string text)
	{
		string[] parts = text.Split(new[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
		if (parts.Length < 2)
		{
			PrintUsage();
			return;
		}

		string sub = parts[1].ToLowerInvariant();
		if (sub == "help" || sub == "?")
		{
			PrintHelp();
			return;
		}
		if (sub == "auto")
		{
			// /qa auto garnet bracelet
			string? gemOv = parts.Length >= 4 ? parts[2] : null;
			string? equipOv = parts.Length >= 4 ? parts[3] : null;
			StartAutomatedPipeline(gemOv, equipOv);
			return;
		}
		if (sub == "runall")
		{
			StartRunAll();
			return;
		}
		if (sub == "run")
		{
			if (parts.Length < 3)
			{
				PrintUsage();
				return;
			}

			string suite = parts[2].ToLowerInvariant();
			if (suite == "gemcrafter" || suite == "gem")
			{
				StartRunGemcrafterOnly();
				return;
			}

			if (suite == "aptitude" || suite == "apt")
			{
				WriteToChat("[QA] Aptitude QA (/aptqa) is no longer available (mod merged into ChallengeModes). Use /qa run gem.");
				return;
			}

			WriteToChat("[QA] Unknown suite. Try: /qa run gem");
			return;
		}
		if (sub == "stop")
		{
			StopRun();
			return;
		}
		if (sub == "status")
		{
			PrintStatus();
			return;
		}
		if (sub == "sel" || sub == "selection")
		{
			PrintSelection();
			return;
		}
		if (sub == "inv")
		{
			if (parts.Length < 3)
			{
				WriteToChat("[QA] Usage: /qa inv find <namefrag> | /qa inv sel <hexid>");
				return;
			}

			string invSub = parts[2].ToLowerInvariant();
			if (invSub == "find")
			{
				if (parts.Length < 4)
				{
					WriteToChat("[QA] Usage: /qa inv find <namefrag>");
					return;
				}

				string frag = text.Substring(text.IndexOf("find", StringComparison.OrdinalIgnoreCase) + 4).Trim();
				InvFind(frag);
				return;
			}

			if (invSub == "sel")
			{
				if (parts.Length < 4)
				{
					WriteToChat("[QA] Usage: /qa inv sel <hexid>");
					return;
				}

				string hex = parts[3];
				InvSelect(hex);
				return;
			}

			WriteToChat("[QA] Usage: /qa inv find <namefrag> | /qa inv sel <hexid>");
			return;
		}
		if (sub == "prep")
		{
			if (parts.Length < 3)
			{
				WriteToChat("[QA] Usage: /qa prep gem <gemFrag> <equipFrag>");
				return;
			}

			string which = parts[2].ToLowerInvariant();
			if (which == "gem")
			{
				if (parts.Length < 5)
				{
					WriteToChat("[QA] Usage: /qa prep gem <gemFrag> <equipFrag>");
					return;
				}

				string gemFrag = parts[3];
				string equipFrag = parts[4];
				PrepGemcrafter(gemFrag, equipFrag);
				return;
			}

			WriteToChat("[QA] Usage: /qa prep gem <gemFrag> <equipFrag>");
			return;
		}
		if (sub == "ub")
		{
			// Passthrough to UtilityBelt, ex: /qa ub select name \"Yellow Garnet\"
			string ub = text.Substring(3).TrimStart(); // remove "/qa"
			string cmd = "/" + ub;
			WriteToChat("[QA] UB> " + cmd);
			bool ok = DispatchClientCommand(cmd);
			WriteToChat(ok ? "[QA] UB dispatch: OK" : "[QA] UB dispatch: FAILED");
			return;
		}
		if (sub == "diag")
		{
			if (parts.Length >= 3 && parts[2].Equals("actions", StringComparison.OrdinalIgnoreCase))
			{
				DiagActions();
				return;
			}

			if (parts.Length >= 3 && (parts[2].Equals("interp", StringComparison.OrdinalIgnoreCase) || parts[2].Equals("interpreter", StringComparison.OrdinalIgnoreCase)))
			{
				DiagCommandInterpreter();
				return;
			}

			WriteToChat("[QA] Usage: /qa diag actions | /qa diag interp");
			return;
		}
		if (sub == "script")
		{
			if (parts.Length < 3)
			{
				WriteToChat("[QA] Usage: /qa script demo | /qa script stop");
				return;
			}

			string which = parts[2].ToLowerInvariant();
			if (which == "stop")
			{
				StopScript();
				return;
			}

			if (which == "demo")
			{
				StartDemoScript();
				return;
			}

			WriteToChat("[QA] Unknown script. Try: /qa script demo");
			return;
		}

		PrintUsage();
	}

	private void PrintUsage()
	{
		WriteToChat("[QA] Usage: /qa auto | /qa help | /qa runall | /qa run gem | /qa prep gem ... | /qa stop");
	}

	private void PrintHelp()
	{
		WriteToChat("[QA] ---");
		WriteToChat("[QA] /qa auto  -> full pipeline (qa-auto.cfg next to DLL): gemspawn, prep gem, then server suites");
		WriteToChat("[QA] /qa auto garnet bracelet  -> same, override name fragments");
		WriteToChat("[QA] /qa runall  -> /gemqa runall (fast smoke)");
		WriteToChat("[QA] Copy qa-auto.example.cfg -> qa-auto.cfg and set runOnLogin=true for hands-off after login");
		WriteToChat("[QA] ---");
	}

	private void StartAutomatedPipeline(string? gemFragmentOverride, string? equipFragmentOverride)
	{
		try
		{
			QaAutoConfig cfg = QaAutoConfig.Load(AssemblyDirectory);
			if (!string.IsNullOrWhiteSpace(gemFragmentOverride))
				cfg.GemFragment = gemFragmentOverride!.Trim();
			if (!string.IsNullOrWhiteSpace(equipFragmentOverride))
				cfg.EquipFragment = equipFragmentOverride!.Trim();

			WriteToChat("[QA] AUTO: pipeline start (tune delays in qa-auto.cfg)");
			WriteToChat($"[QA] AUTO: spawn={cfg.SpawnGems} prep={cfg.RunPrepGem} suites={cfg.RunServerSuites} gem='{cfg.GemFragment}' equip='{cfg.EquipFragment}'");

			int prepStartDelayMs = 0;
			if (cfg.SpawnGems)
			{
				InvokeChatParser("/gemspawn " + Math.Max(1, Math.Min(50, cfg.SpawnCount)).ToString(CultureInfo.InvariantCulture));
				prepStartDelayMs = Math.Max(0, cfg.MsAfterSpawnBeforePrep);
			}
			else
			{
				prepStartDelayMs = 500;
			}

			if (cfg.RunPrepGem
				&& !string.IsNullOrWhiteSpace(cfg.GemFragment)
				&& !string.IsNullOrWhiteSpace(cfg.EquipFragment))
			{
				Schedule(prepStartDelayMs, () =>
				{
					try
					{
						PrepGemcrafter(cfg.GemFragment, cfg.EquipFragment);
					}
					catch
					{
					}
				});
			}

			int scheduledRunAllMs = 0;
			if (cfg.RunServerSuites)
			{
				scheduledRunAllMs = prepStartDelayMs;
				if (cfg.RunPrepGem
					&& !string.IsNullOrWhiteSpace(cfg.GemFragment)
					&& !string.IsNullOrWhiteSpace(cfg.EquipFragment))
					scheduledRunAllMs += Math.Max(3000, cfg.MsAfterPrepStartBeforeRunAll);
				else
					scheduledRunAllMs += 2000;

				Schedule(scheduledRunAllMs, StartRunAll);
				WriteToChat($"[QA] AUTO: /qa runall scheduled in ~{scheduledRunAllMs}ms");
			}
			else
				WriteToChat("[QA] AUTO: server suites skipped (runServerSuites=false in qa-auto.cfg)");
		}
		catch (Exception ex)
		{
			WriteToChat($"[QA] AUTO failed: {ex.Message}");
		}
	}

	private void PrintStatus()
	{
		lock (_lock)
		{
			if (!_running)
			{
				WriteToChat("[QA] Idle.");
				return;
			}

			double secs = (DateTime.UtcNow - _runStartedUtc).TotalSeconds;
			WriteToChat($"[QA] Running: {_activeSuites} ({secs:0}s) gemSummary={_gemSummarySeen}");
		}
	}

	private void PrintSelection()
	{
		try
		{
			int id = Host.Actions.CurrentSelection;
			if (id == 0)
			{
				WriteToChat("[QA] Selection: none");
				return;
			}

			WorldObject wo = Core.WorldFilter[id];
			if (wo == null)
			{
				WriteToChat($"[QA] Selection: {id} (not in WorldFilter)");
				return;
			}

			WriteToChat($"[QA] Selection: {wo.Name} (0x{wo.Id:X8})");
		}
		catch (Exception ex)
		{
			WriteToChat($"[QA] Selection error: {ex.Message}");
		}
	}

	private void PrepGemcrafter(string gemFragment, string equipFragment, bool isRetry = false)
	{
		try
		{
			string gemFrag = (gemFragment ?? string.Empty).Trim();
			string equipFrag = (equipFragment ?? string.Empty).Trim();
			if (gemFrag.Length == 0 || equipFrag.Length == 0)
			{
				WriteToChat("[QA] Usage: /qa prep gem <gemFrag> <equipFrag>");
				return;
			}

			WorldObject? gem = FindBestInventoryMatch(gemFrag);
			if (gem == null)
			{
				WriteToChat($"[QA] prep gem: no inventory match for gem '{gemFrag}'. Try: /qa inv find {gemFrag}");
				return;
			}

			WorldObject? equip = FindBestInventoryMatch(equipFrag);
			if (equip == null)
			{
				WriteToChat($"[QA] prep gem: no inventory match for equip '{equipFrag}'. Try: /qa inv find {equipFrag}");
				return;
			}

			WriteToChat($"[QA] prep gem: gem={gem.Name} (0x{gem.Id:X8}) equip={equip.Name} (0x{equip.Id:X8})");
			_lastPrepGemFrag = gemFrag;
			_lastPrepEquipFrag = equipFrag;
			if (!isRetry)
				_prepGemRetryUsed = false;

			// Phase 1: appraise gem, then crush (server command uses appraisal fallback).
			if (!TryRequestId(gem.Id))
				WriteToChat("[QA] prep gem: could not request ID on gem (continuing).");

			Schedule(600, () =>
			{
				try
				{
					// Server matches by instance id (disambiguates duplicate spawned gems with same name/WCID).
					string hex = "0x" + unchecked((uint)gem.Id).ToString("X8", CultureInfo.InvariantCulture);
					InvokeChatParser("/gemcrush " + hex);
				}
				catch
				{
				}
			});

			// Phase 2: appraise equip, then apply.
			Schedule(1200, () =>
			{
				try
				{
					if (!TryRequestId(equip.Id))
						WriteToChat("[QA] prep gem: could not request ID on equip (continuing).");
				}
				catch
				{
				}
			});

			_awaitingGemApply = true;
			_awaitingGemApplyTargetName = equip.Name;
			_awaitingGemApplyDeadlineUtc = DateTime.UtcNow.AddSeconds(8);

			Schedule(1800, () =>
			{
				try
				{
					string hexEq = "0x" + unchecked((uint)equip.Id).ToString("X8", CultureInfo.InvariantCulture);
					InvokeChatParser("/gemapply " + hexEq);
				}
				catch
				{
				}
			});
		}
		catch (Exception ex)
		{
			WriteToChat($"[QA] prep gem error: {ex.Message}");
		}
	}

	private WorldObject? FindBestInventoryMatch(string fragment)
	{
		string frag = (fragment ?? string.Empty).Trim();
		if (frag.Length == 0)
			return null;

		List<WorldObject> items = GetAllInventoryItems();
		WorldObject? best = null;
		int bestId = 0;
		foreach (WorldObject wo in items)
		{
			if (wo == null || string.IsNullOrWhiteSpace(wo.Name))
				continue;

			if (wo.Name.IndexOf(frag, StringComparison.OrdinalIgnoreCase) >= 0)
			{
				if (best == null || wo.Id > bestId)
				{
					best = wo;
					bestId = wo.Id;
				}
			}
		}

		return best;
	}

	private bool TryRequestId(int objectId)
	{
		try
		{
			object actions = Host.Actions;
			Type t = actions.GetType();

			// Typical Decal API name.
			MethodInfo? req = t.GetMethod("RequestId", BindingFlags.Instance | BindingFlags.Public, null, new[] { typeof(int) }, null);
			if (req != null)
			{
				req.Invoke(actions, new object[] { objectId });
				return true;
			}

			// Fallback: any method containing "RequestId" with an int arg.
			foreach (MethodInfo m in t.GetMethods(BindingFlags.Instance | BindingFlags.Public))
			{
				if (m.Name.IndexOf("RequestId", StringComparison.OrdinalIgnoreCase) < 0
					&& m.Name.IndexOf("Identify", StringComparison.OrdinalIgnoreCase) < 0
					&& m.Name.IndexOf("Id", StringComparison.OrdinalIgnoreCase) < 0)
					continue;

				ParameterInfo[] ps = m.GetParameters();
				if (ps.Length != 1 || ps[0].ParameterType != typeof(int))
					continue;

				m.Invoke(actions, new object[] { objectId });
				return true;
			}

			return false;
		}
		catch
		{
			return false;
		}
	}

	private void InvFind(string fragment)
	{
		try
		{
			string frag = (fragment ?? string.Empty).Trim();
			if (frag.Length == 0)
			{
				WriteToChat("[QA] inv find: provide a name fragment.");
				return;
			}

			List<WorldObject> items = GetAllInventoryItems();
			List<WorldObject> matches = new();

			foreach (WorldObject wo in items)
			{
				if (wo == null || string.IsNullOrWhiteSpace(wo.Name))
					continue;

				if (wo.Name.IndexOf(frag, StringComparison.OrdinalIgnoreCase) >= 0)
					matches.Add(wo);
			}

			if (matches.Count == 0)
			{
				WriteToChat($"[QA] inv find: no matches for '{frag}'.");
				return;
			}

			WriteToChat($"[QA] inv find: {matches.Count} match(es) for '{frag}' (showing up to 10):");
			for (int i = 0; i < matches.Count && i < 10; i++)
			{
				WorldObject wo = matches[i];
				WriteToChat($"[QA] - {wo.Name} (0x{wo.Id:X8})");
			}
		}
		catch (Exception ex)
		{
			WriteToChat($"[QA] inv find error: {ex.Message}");
		}
	}

	private void InvSelect(string hexId)
	{
		try
		{
			string s = (hexId ?? string.Empty).Trim();
			if (s.StartsWith("0x", StringComparison.OrdinalIgnoreCase))
				s = s.Substring(2);

			if (!uint.TryParse(s, NumberStyles.HexNumber, CultureInfo.InvariantCulture, out uint id))
			{
				WriteToChat("[QA] inv sel: invalid hex id. Example: /qa inv sel 800000C0");
				return;
			}

			bool ok = TrySelectObject(unchecked((int)id));
			if (!ok)
			{
				WriteToChat("[QA] inv sel: no selection method available on this Decal Actions object.");
				return;
			}

			// Report selection afterwards.
			Schedule(50, PrintSelection);
		}
		catch (Exception ex)
		{
			WriteToChat($"[QA] inv sel error: {ex.Message}");
		}
	}

	private List<WorldObject> GetAllInventoryItems()
	{
		List<WorldObject> results = new();
		HashSet<int> visitedContainers = new();

		int playerId = Core.CharacterFilter.Id;
		Queue<int> q = new();
		q.Enqueue(playerId);
		visitedContainers.Add(playerId);

		while (q.Count > 0)
		{
			int containerId = q.Dequeue();
			foreach (WorldObject wo in Core.WorldFilter.GetByContainer(containerId))
			{
				if (wo == null)
					continue;

				results.Add(wo);

				// Recurse into containers (packs/sacks) by id.
				int nextContainerId = wo.Id;
				if (!visitedContainers.Contains(nextContainerId))
				{
					visitedContainers.Add(nextContainerId);
					q.Enqueue(nextContainerId);
				}
			}
		}

		return results;
	}

	private bool TrySelectObject(int objectId)
	{
		try
		{
			object actions = Host.Actions;
			Type t = actions.GetType();

			// Common candidates across Decal builds.
			string[] names =
			{
				"SelectItem",
				"SelectObject",
				"Select",
				"SetSelection",
				"SetCurrentSelection",
			};

			foreach (string name in names)
			{
				MethodInfo? m = t.GetMethod(name, BindingFlags.Instance | BindingFlags.Public, null, new[] { typeof(int) }, null);
				if (m == null)
					continue;

				m.Invoke(actions, new object[] { objectId });
				return true;
			}

			// Fallback: find any public method containing "Select" with a single int parameter.
			foreach (MethodInfo m in t.GetMethods(BindingFlags.Instance | BindingFlags.Public))
			{
				if (m.Name.IndexOf("Select", StringComparison.OrdinalIgnoreCase) < 0)
					continue;

				ParameterInfo[] ps = m.GetParameters();
				if (ps.Length != 1 || ps[0].ParameterType != typeof(int))
					continue;

				m.Invoke(actions, new object[] { objectId });
				return true;
			}

			return false;
		}
		catch
		{
			return false;
		}
	}

	private void StopRun()
	{
		lock (_lock)
		{
			if (!_running)
			{
				WriteToChat("[QA] Idle.");
				return;
			}

			_stopRequested = true;
		}

		WriteToChat("[QA] Stop requested. Finalizing log...");
		Schedule(50, FinalizeIfStillRunning);
	}

	private void StopScript()
	{
		lock (_lock)
		{
			_script.Clear();
			_scriptRunning = false;
		}

		WriteToChat("[QA] Script stopped.");
	}

	private void StartDemoScript()
	{
		lock (_lock)
		{
			if (_scriptRunning)
			{
				WriteToChat("[QA] Script already running.");
				return;
			}

			_script.Clear();

			// This is intentionally generic: proves we can drive UB commands and then kick off server QA.
			// Customize the UB selects/appraises once we decide your preferred prep flow.
			_script.Enqueue((0, "/ub delay 0.2"));
			_script.Enqueue((0, "/ub echo DecalQaRunner demo script starting"));
			_script.Enqueue((200, "/qa runall"));

			_scriptRunning = true;
		}

		WriteToChat("[QA] Script started: demo");
		RunNextScriptStep();
	}

	private void RunNextScriptStep()
	{
		(int delayMs, string command) step;
		lock (_lock)
		{
			if (!_scriptRunning)
				return;

			if (_script.Count == 0)
			{
				_scriptRunning = false;
				WriteToChat("[QA] Script finished.");
				return;
			}

			step = _script.Dequeue();
		}

		Schedule(step.delayMs, () =>
		{
			try
			{
				// Run /qa commands internally (do NOT send to server chat parser).
				if (step.command.StartsWith("/qa", StringComparison.OrdinalIgnoreCase))
					ProcessQaCommandText(step.command);
				else
					InvokeChatParser(step.command);
			}
			catch
			{
			}
			finally
			{
				RunNextScriptStep();
			}
		});
	}

	private void StartRunAll()
	{
		StartRunGemcrafterOnly();
	}

	private void StartRunGemcrafterOnly()
	{
		lock (_lock)
		{
			if (_running)
			{
				WriteToChat("[QA] Already running.");
				return;
			}

			_running = true;
			_stopRequested = false;
			_runStartedUtc = DateTime.UtcNow;
			_activeSuites = "Gemcrafter";
			_captured.Clear();
			_gemSummarySeen = false;
		}

		WriteToChat("[QA] Running suite: Gemcrafter");
		InvokeChatParser("/gemqa runall");
		Schedule(15000, FinalizeIfStillRunning);
	}

	private void OnChatBoxMessage(object e)
	{
		try
		{
			string msg = TryGetStringProperty(e, "Text") ?? string.Empty;
			if (string.IsNullOrWhiteSpace(msg))
				return;

			TryHandleAwaitingGemApply(msg);

			bool shouldCapture;
			lock (_lock)
				shouldCapture = _running;

			if (!shouldCapture)
				return;

			bool finalizeNow = false;

			lock (_lock)
			{
				if (_stopRequested)
				{
					_captured.Add(msg);
					return;
				}

				_captured.Add(msg);

				if (!_gemSummarySeen && GemSummary.IsMatch(msg))
				{
					_gemSummarySeen = true;
					finalizeNow = true;
				}
			}

			if (finalizeNow)
				FinalizeIfStillRunning();
		}
		catch
		{
		}
	}

	private void TryHandleAwaitingGemApply(string msg)
	{
		try
		{
			if (!_awaitingGemApply)
				return;

			if (GemCrushNoSpells.IsMatch(msg))
			{
				_awaitingGemApply = false;
				WriteToChat("[QA] prep gem: FAIL (selected gem had no spells).");
				if (!_prepGemRetryUsed && !string.IsNullOrWhiteSpace(_lastPrepGemFrag) && !string.IsNullOrWhiteSpace(_lastPrepEquipFrag))
				{
					_prepGemRetryUsed = true;
					WriteToChat("[QA] prep gem: attempting recovery: /gemspawn 10 then retry...");
					Schedule(200, () => InvokeChatParser("/gemspawn 10"));
					Schedule(900, () => PrepGemcrafter(_lastPrepGemFrag, _lastPrepEquipFrag, isRetry: true));
				}
				return;
			}

			if (MortarNotInfused.IsMatch(msg))
			{
				_awaitingGemApply = false;
				WriteToChat("[QA] prep gem: FAIL (mortar not infused).");
				return;
			}

			if (DateTime.UtcNow > _awaitingGemApplyDeadlineUtc)
			{
				_awaitingGemApply = false;
				WriteToChat("[QA] prep gem: FAIL (timeout waiting for '[Gemcrafter] <item> gains: ...').");
				return;
			}

			Match m = GemApplyGains.Match(msg);
			if (!m.Success)
				return;

			string itemName = m.Groups[1].Value.Trim();
			string gains = m.Groups[2].Value.Trim();

			if (!string.IsNullOrWhiteSpace(_awaitingGemApplyTargetName)
				&& itemName.IndexOf(_awaitingGemApplyTargetName, StringComparison.OrdinalIgnoreCase) < 0)
			{
				return;
			}

			_awaitingGemApply = false;
			WriteToChat($"[QA] prep gem: PASS (applied to '{itemName}'): {gains}");
		}
		catch
		{
		}
	}

	private void FinalizeIfStillRunning()
	{
		lock (_lock)
		{
			if (!_running)
				return;

			FinalizeLocked();
		}
	}

	private void FinalizeLocked()
	{
		_running = false;

		bool ok = _gemSummarySeen;
		string stamp = DateTime.Now.ToString("yyyyMMdd-HHmmss", CultureInfo.InvariantCulture);
		string fileName = $"qa-run-{stamp}.log";
		string dir = AssemblyDirectory;
		string path = System.IO.Path.Combine(dir, fileName);

		try
		{
			File.WriteAllLines(path, _captured);
		}
		catch
		{
		}

		WriteToChat(ok
			? $"[QA] Done. Wrote {fileName}"
			: $"[QA] Done (timeout). Wrote {fileName} (missing summary line(s))");
	}

	private void InvokeChatParser(string command)
	{
		try
		{
			Host.Actions.InvokeChatParser(command);
		}
		catch (Exception ex)
		{
			WriteToChat($"[QA] Failed to send '{command}': {ex.Message}");
		}
	}

	private bool DispatchClientCommand(string command)
	{
		try
		{
			// UtilityBelt (and other client-side command handlers) often hook the "typed command line" pipeline.
			// InvokeChatParser can bypass those and send to server. We attempt multiple Action APIs via reflection.
			object actions = Host.Actions;
			Type t = actions.GetType();

			// 0) Try CommandInterpreter first (most likely to be "client side").
			PropertyInfo? interpProp = t.GetProperty("CommandInterpreter", BindingFlags.Instance | BindingFlags.Public);
			if (interpProp != null)
			{
				object? interp = interpProp.GetValue(actions);
				if (interp != null && TryInvokeInterpreter(interp, command))
					return true;
			}

			// 1) Try SendText(string) style APIs.
			MethodInfo? sendText = t.GetMethod("SendText", new[] { typeof(string) });
			if (sendText != null)
			{
				sendText.Invoke(actions, new object[] { command });
				return true;
			}

			// 2) Try SetCommandLineText(string) + ExecuteCommandLine() style APIs.
			MethodInfo? setCmd = t.GetMethod("SetCommandLineText", new[] { typeof(string) })
				?? t.GetMethod("SetCommandLine", new[] { typeof(string) });

			if (setCmd != null)
			{
				setCmd.Invoke(actions, new object[] { command });

				MethodInfo? execCmd = t.GetMethod("ExecuteCommandLine", Type.EmptyTypes)
					?? t.GetMethod("ExecuteCommand", Type.EmptyTypes)
					?? t.GetMethod("SubmitCommandLine", Type.EmptyTypes);

				if (execCmd != null)
				{
					execCmd.Invoke(actions, Array.Empty<object>());
					return true;
				}
			}

			// 3) Fallback: simulate typing into the AC client.
			// This is the most compatible way to reach client-side slash-command plugins (like UtilityBelt).
			if (TrySimulateTypingCommand(command))
				return true;

			return false;
		}
		catch (Exception ex)
		{
			WriteToChat($"[QA] Dispatch failed: {ex.Message}");
			return false;
		}
	}

	private bool TrySimulateTypingCommand(string command)
	{
		try
		{
			if (string.IsNullOrWhiteSpace(command))
				return false;

			IntPtr hwnd = GetForegroundOrCurrentProcessWindow();
			if (hwnd == IntPtr.Zero)
			{
				WriteToChat("[QA] UB dispatch: no window handle.");
				return false;
			}

			// Bring the game window to the front so keystrokes go to the right place.
			bool focused = SetForegroundWindow(hwnd);
			if (!focused)
				WriteToChat("[QA] UB dispatch: failed to focus window (continuing).");

			// Open chat input, type, submit.
			uint a = SendKeyPress(VK_RETURN);
			uint b = SendUnicodeString(command);
			uint c = SendKeyPress(VK_RETURN);

			if (a == 0 || b == 0 || c == 0)
			{
				int err = Marshal.GetLastWin32Error();
				WriteToChat($"[QA] UB dispatch: SendInput failed (a={a}, b={b}, c={c}) err={err}");
				return false;
			}

			return true;
		}
		catch
		{
			return false;
		}
	}

	private static IntPtr GetForegroundOrCurrentProcessWindow()
	{
		try
		{
			// We are running inside acclient.exe (Decal loads plugins into the client process),
			// so CurrentProcess.MainWindowHandle is usually the right target.
			IntPtr hwnd = GetCurrentProcessMainWindow();
			if (hwnd != IntPtr.Zero)
				return hwnd;

			hwnd = FindWindowByTitleFragment("Asheron's Call");
			if (hwnd != IntPtr.Zero)
				return hwnd;

			return GetForegroundWindow();
		}
		catch
		{
			return IntPtr.Zero;
		}
	}

	private static IntPtr GetCurrentProcessMainWindow()
	{
		try
		{
			using System.Diagnostics.Process p = System.Diagnostics.Process.GetCurrentProcess();
			return p.MainWindowHandle;
		}
		catch
		{
			return IntPtr.Zero;
		}
	}

	private const ushort VK_RETURN = 0x0D;

	[DllImport("user32.dll")]
	private static extern IntPtr GetForegroundWindow();

	[DllImport("user32.dll")]
	private static extern bool SetForegroundWindow(IntPtr hWnd);

	[DllImport("user32.dll", SetLastError = true)]
	private static extern uint SendInput(uint nInputs, INPUT[] pInputs, int cbSize);

	[DllImport("user32.dll", SetLastError = true)]
	private static extern bool EnumWindows(EnumWindowsProc lpEnumFunc, IntPtr lParam);

	private delegate bool EnumWindowsProc(IntPtr hWnd, IntPtr lParam);

	[DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
	private static extern int GetWindowText(IntPtr hWnd, StringBuilder lpString, int nMaxCount);

	[DllImport("user32.dll", SetLastError = true)]
	private static extern bool IsWindowVisible(IntPtr hWnd);

	private static IntPtr FindWindowByTitleFragment(string fragment)
	{
		try
		{
			if (string.IsNullOrWhiteSpace(fragment))
				return IntPtr.Zero;

			IntPtr found = IntPtr.Zero;
			string frag = fragment.Trim();

			EnumWindows((hWnd, _) =>
			{
				try
				{
					if (!IsWindowVisible(hWnd))
						return true;

					StringBuilder sb = new(512);
					int len = GetWindowText(hWnd, sb, sb.Capacity);
					if (len <= 0)
						return true;

					string title = sb.ToString();
					if (title.IndexOf(frag, StringComparison.OrdinalIgnoreCase) >= 0)
					{
						found = hWnd;
						return false;
					}
				}
				catch
				{
				}

				return true;
			}, IntPtr.Zero);

			return found;
		}
		catch
		{
			return IntPtr.Zero;
		}
	}

	// P/Invoke structs must match Win32 exactly; incorrect sizing causes ERROR_INVALID_PARAMETER (87).
	// This is the canonical layout used for SendInput.
	[StructLayout(LayoutKind.Sequential)]
	private struct INPUT
	{
		public uint type;
		public InputUnion u;
	}

	[StructLayout(LayoutKind.Explicit)]
	private struct InputUnion
	{
		[FieldOffset(0)]
		public MOUSEINPUT mi;

		[FieldOffset(0)]
		public KEYBDINPUT ki;

		[FieldOffset(0)]
		public HARDWAREINPUT hi;
	}

	[StructLayout(LayoutKind.Sequential)]
	private struct MOUSEINPUT
	{
		public int dx;
		public int dy;
		public uint mouseData;
		public uint dwFlags;
		public uint time;
		public UIntPtr dwExtraInfo;
	}

	[StructLayout(LayoutKind.Sequential)]
	private struct KEYBDINPUT
	{
		public ushort wVk;
		public ushort wScan;
		public uint dwFlags;
		public uint time;
		public UIntPtr dwExtraInfo;
	}

	[StructLayout(LayoutKind.Sequential)]
	private struct HARDWAREINPUT
	{
		public uint uMsg;
		public ushort wParamL;
		public ushort wParamH;
	}

	private const uint INPUT_KEYBOARD = 1;
	private const uint KEYEVENTF_KEYUP = 0x0002;
	private const uint KEYEVENTF_UNICODE = 0x0004;

	private static uint SendKeyPress(ushort vk)
	{
		INPUT down = new()
		{
			type = INPUT_KEYBOARD,
			u = new InputUnion
			{
				ki = new KEYBDINPUT { wVk = vk, wScan = 0, dwFlags = 0, time = 0, dwExtraInfo = UIntPtr.Zero }
			}
		};

		INPUT up = new()
		{
			type = INPUT_KEYBOARD,
			u = new InputUnion
			{
				ki = new KEYBDINPUT { wVk = vk, wScan = 0, dwFlags = KEYEVENTF_KEYUP, time = 0, dwExtraInfo = UIntPtr.Zero }
			}
		};

		return SendInput(2, new[] { down, up }, Marshal.SizeOf(typeof(INPUT)));
	}

	private static uint SendUnicodeString(string text)
	{
		uint total = 0;
		foreach (char ch in text)
		{
			ushort scan = ch;

			INPUT down = new()
			{
				type = INPUT_KEYBOARD,
				u = new InputUnion
				{
					ki = new KEYBDINPUT { wVk = 0, wScan = scan, dwFlags = KEYEVENTF_UNICODE, time = 0, dwExtraInfo = UIntPtr.Zero }
				}
			};

			INPUT up = new()
			{
				type = INPUT_KEYBOARD,
				u = new InputUnion
				{
					ki = new KEYBDINPUT { wVk = 0, wScan = scan, dwFlags = KEYEVENTF_UNICODE | KEYEVENTF_KEYUP, time = 0, dwExtraInfo = UIntPtr.Zero }
				}
			};

			uint sent = SendInput(2, new[] { down, up }, Marshal.SizeOf(typeof(INPUT)));
			if (sent == 0)
				return 0;

			total += sent;
		}

		return total;
	}

	private bool TryInvokeInterpreter(object interpreter, string command)
	{
		try
		{
			Type it = interpreter.GetType();

			// Try a handful of common method names. We only try signatures that take a single string.
			string[] names =
			{
				"Execute",
				"Process",
				"Parse",
				"Interpret",
				"Handle",
				"Run",
				"Invoke",
				"Dispatch",
			};

			foreach (string name in names)
			{
				MethodInfo? m = it.GetMethod(name, BindingFlags.Instance | BindingFlags.Public, null, new[] { typeof(string) }, null);
				if (m == null)
					continue;

				m.Invoke(interpreter, new object[] { command });
				return true;
			}

			// Some interpreters expose something like Execute(string, bool) where bool is "eat".
			foreach (string name in names)
			{
				MethodInfo? m = it.GetMethod(name, BindingFlags.Instance | BindingFlags.Public, null, new[] { typeof(string), typeof(bool) }, null);
				if (m == null)
					continue;

				m.Invoke(interpreter, new object[] { command, true });
				return true;
			}

			return false;
		}
		catch
		{
			return false;
		}
	}

	private void DiagActions()
	{
		try
		{
			object actions = Host.Actions;
			Type t = actions.GetType();

			// Print a small, high-signal subset to chat (avoid spamming).
			List<string> hits = new();
			foreach (MethodInfo m in t.GetMethods(BindingFlags.Instance | BindingFlags.Public))
			{
				string name = m.Name;
				if (name.IndexOf("Command", StringComparison.OrdinalIgnoreCase) >= 0
					|| name.IndexOf("Text", StringComparison.OrdinalIgnoreCase) >= 0
					|| name.IndexOf("Chat", StringComparison.OrdinalIgnoreCase) >= 0
					|| name.IndexOf("Send", StringComparison.OrdinalIgnoreCase) >= 0
					|| name.IndexOf("Select", StringComparison.OrdinalIgnoreCase) >= 0
					|| name.IndexOf("Selection", StringComparison.OrdinalIgnoreCase) >= 0)
				{
					hits.Add(m.ToString() ?? name);
				}
			}

			hits.Sort(StringComparer.OrdinalIgnoreCase);

			WriteToChat($"[QA] Actions type: {t.FullName}");
			WriteToChat("[QA] Actions methods (filtered):");

			int shown = 0;
			foreach (string h in hits)
			{
				WriteToChat("[QA] - " + h);
				shown++;
				if (shown >= 25)
				{
					WriteToChat($"[QA] ... ({hits.Count - shown} more)");
					break;
				}
			}
		}
		catch (Exception ex)
		{
			WriteToChat($"[QA] diag failed: {ex.Message}");
		}
	}

	private void DiagCommandInterpreter()
	{
		try
		{
			object actions = Host.Actions;
			Type at = actions.GetType();
			PropertyInfo? interpProp = at.GetProperty("CommandInterpreter", BindingFlags.Instance | BindingFlags.Public);
			if (interpProp == null)
			{
				WriteToChat("[QA] CommandInterpreter property not found on Actions.");
				return;
			}

			object? interp = interpProp.GetValue(actions);
			if (interp == null)
			{
				WriteToChat("[QA] CommandInterpreter is null.");
				return;
			}

			Type it = interp.GetType();
			WriteToChat($"[QA] CommandInterpreter type: {it.FullName}");

			List<string> hits = new();
			foreach (MethodInfo m in it.GetMethods(BindingFlags.Instance | BindingFlags.Public))
			{
				string name = m.Name;
				if (name.IndexOf("Execute", StringComparison.OrdinalIgnoreCase) >= 0
					|| name.IndexOf("Process", StringComparison.OrdinalIgnoreCase) >= 0
					|| name.IndexOf("Parse", StringComparison.OrdinalIgnoreCase) >= 0
					|| name.IndexOf("Interpret", StringComparison.OrdinalIgnoreCase) >= 0
					|| name.IndexOf("Handle", StringComparison.OrdinalIgnoreCase) >= 0
					|| name.IndexOf("Invoke", StringComparison.OrdinalIgnoreCase) >= 0
					|| name.IndexOf("Dispatch", StringComparison.OrdinalIgnoreCase) >= 0)
				{
					hits.Add(m.ToString() ?? name);
				}
			}

			hits.Sort(StringComparer.OrdinalIgnoreCase);
			WriteToChat("[QA] CommandInterpreter methods (filtered):");

			int shown = 0;
			foreach (string h in hits)
			{
				WriteToChat("[QA] - " + h);
				shown++;
				if (shown >= 25)
				{
					WriteToChat($"[QA] ... ({hits.Count - shown} more)");
					break;
				}
			}
		}
		catch (Exception ex)
		{
			WriteToChat($"[QA] diag interp failed: {ex.Message}");
		}
	}

	private void WriteToChat(string message)
	{
		try
		{
			Host.Actions.AddChatText(message, 1);
		}
		catch
		{
		}
	}

	private void Schedule(int delayMs, Action action)
	{
		try
		{
			new System.Threading.Timer(_ =>
			{
				try { action(); } catch { }
			}, null, delayMs, System.Threading.Timeout.Infinite);
		}
		catch
		{
		}
	}

	private static string AssemblyDirectory
	{
		get
		{
			try
			{
				string? loc = typeof(PluginCore).Assembly.Location;
				if (string.IsNullOrWhiteSpace(loc))
					return Environment.CurrentDirectory;

				return System.IO.Path.GetDirectoryName(loc) ?? Environment.CurrentDirectory;
			}
			catch
			{
				return Environment.CurrentDirectory;
			}
		}
	}

	private static string? TryGetStringProperty(object obj, string propertyName)
	{
		try
		{
			PropertyInfo? prop = obj.GetType().GetProperty(propertyName, BindingFlags.Instance | BindingFlags.Public);
			if (prop == null)
				return null;

			return prop.GetValue(obj) as string;
		}
		catch
		{
			return null;
		}
	}

	private static void TrySetBoolProperty(object obj, string propertyName, bool value)
	{
		try
		{
			PropertyInfo? prop = obj.GetType().GetProperty(propertyName, BindingFlags.Instance | BindingFlags.Public);
			if (prop == null || prop.PropertyType != typeof(bool) || !prop.CanWrite)
				return;

			prop.SetValue(obj, value);
		}
		catch
		{
		}
	}
}

