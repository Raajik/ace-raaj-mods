using SpellSiphon.Features;

namespace SpellSiphon;

[HarmonyPatch]
public class PatchClass : BasicPatch<Settings>
{
	private static readonly object HookLock = new();
	private static bool HooksApplied;
	private static bool RecipeMutateHooksApplied;

	public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName)
	{
		try { Settings ??= SettingsContainer.Settings; }
		catch { Settings ??= new Settings(); }
	}

	public override void Start()
	{
		base.Start();
		TryApplyHooks();
	}

	public override async Task OnWorldOpen()
	{
		try { Settings = SettingsContainer.Settings; }
		catch { Settings ??= new Settings(); }

		TryApplyHooks();
	}

	public override void Stop()
	{
		base.Stop();

		lock (HookLock)
		{
			if (!HooksApplied)
				return;

			try
			{
				ModC.Harmony.UnpatchAll(ModC.Harmony.Id);
			}
			catch (Exception ex)
			{
				ModManager.Log($"[Gemcrafter] UnpatchAll on Stop: {ex.Message}", ModManager.LogLevel.Warn);
			}
			finally
			{
				HooksApplied = false;
				RecipeMutateHooksApplied = false;
			}
		}
	}

	private void TryApplyHooks()
	{
		Settings? s = Settings;
		if (s == null || !s.Enabled || !s.EnableImmersiveUseHooks)
			return;

		lock (HookLock)
		{
			if (HooksApplied)
				return;

			try
			{
				IEnumerable<MethodBase> targets = UseOnTargetHooks.FindTargets();
				int patched = 0;

				MethodInfo? prefix = AccessTools.Method(typeof(UseOnTargetHooks), nameof(UseOnTargetHooks.Prefix));
				if (prefix == null)
				{
					return;
				}

				foreach (MethodBase target in targets)
				{
					if (target == null)
						continue;

					try
					{
						ModC.Harmony.Patch(target, prefix: new HarmonyMethod(prefix));
						patched++;
					}
					catch (Exception ex)
					{
						ModManager.Log($"[Gemcrafter] Skipping use hook patch target: {target.DeclaringType?.FullName ?? target.ToString()}. Reason: {ex.Message}", ModManager.LogLevel.Warn);
					}
				}

				if (patched <= 0)
				{
					ModManager.Log("[Gemcrafter] Immersive use hook targets not found; using /gemcrush and /gemapply.", ModManager.LogLevel.Warn);
					return;
				}

				HooksApplied = true;
				ModManager.Log($"[Gemcrafter] Immersive use hooks enabled (use tool on gem, powder on equipment). Patched {patched} overload(s).", ModManager.LogLevel.Info);
			}
			catch (Exception ex)
			{
				// Never crash the server on patch failure — fall back to commands.
				ModManager.Log($"[Gemcrafter] Failed to apply immersive use hooks: {ex.Message}", ModManager.LogLevel.Warn);
			}
		}

		TryApplyRecipeMutateHooks();
	}

	void TryApplyRecipeMutateHooks()
	{
		Settings? s = Settings;
		if (s is null || !s.Enabled)
			return;

		lock (HookLock)
		{
			if (RecipeMutateHooksApplied)
				return;

			try
			{
				MethodInfo? mutate = AccessTools.Method(typeof(RecipeManager), nameof(RecipeManager.TryMutate),
					new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(uint), typeof(HashSet<uint>) });
				MethodInfo? mortar = AccessTools.Method(typeof(MortarAndPestleHooks), nameof(MortarAndPestleHooks.PreTryMutate));
				MethodInfo? powder = AccessTools.Method(typeof(InfusedPowderApplyHooks), nameof(InfusedPowderApplyHooks.PreTryMutate));

				if (mutate is null || mortar is null || powder is null)
				{
					ModManager.Log("[Gemcrafter] RecipeManager.TryMutate or Gemcrafter prefix not found; crush/powder recipes inactive.", ModManager.LogLevel.Warn);
					return;
				}

				ModC.Harmony.Patch(mutate, prefix: new HarmonyMethod(mortar));
				ModC.Harmony.Patch(mutate, prefix: new HarmonyMethod(powder));
				RecipeMutateHooksApplied = true;
				ModManager.Log("[Gemcrafter] Recipe TryMutate hooks applied (gem crush + infused powder apply).", ModManager.LogLevel.Info);
			}
			catch (Exception ex)
			{
				ModManager.Log($"[Gemcrafter] Recipe TryMutate patch failed: {ex.Message}", ModManager.LogLevel.Warn);
			}
		}
	}
}

