using SpellSiphon.Features;

namespace SpellSiphon;

[HarmonyPatch]
public class PatchClass : BasicPatch<Settings>
{
	private static readonly object HookLock = new();
	private static bool HooksApplied;

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
				ModManager.Log($"[SpellSiphon] UnpatchAll on Stop: {ex.Message}", ModManager.LogLevel.Warn);
			}
			finally
			{
				HooksApplied = false;
			}
		}
	}

	private void TryApplyHooks()
	{
		Settings? s = Settings;
		if (s == null || !s.Enabled)
			return;

		lock (HookLock)
		{
			if (HooksApplied)
				return;

			try
			{
				// 1. Use-on-target hooks (apply step only)
				if (s.EnableImmersiveUseHooks)
				{
					IEnumerable<MethodBase> targets = UseOnTargetHooks.FindTargets();
					int patched = 0;

					MethodInfo? prefix = AccessTools.Method(typeof(UseOnTargetHooks), nameof(UseOnTargetHooks.Prefix));
					if (prefix != null)
					{
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
								ModManager.Log($"[SpellSiphon] Skipping use hook patch target: {target.DeclaringType?.FullName ?? target.ToString()}. Reason: {ex.Message}", ModManager.LogLevel.Warn);
							}
						}
					}

					if (patched > 0)
						ModManager.Log($"[SpellSiphon] Immersive use hooks enabled. Patched {patched} overload(s).", ModManager.LogLevel.Info);
					else
						ModManager.Log("[SpellSiphon] Immersive use hook targets not found.", ModManager.LogLevel.Warn);
				}

				// 2. Native recipe hooks (extraction dialog + skill check)
				TryPatchRecipeHooks();

				// 3. OnCastSpell hook (Mana Lattice WCID: spellbook self-cast, Endless or BLC-pre-rolled)
				TryPatchOnCastSpell();

				// 4. Infinite gem hooks (all gems reusable)
				TryPatchInfiniteGems();

				// 4. Vendor integration (sell tool at mage/jeweler vendors)
				if (s.EnableVendorSales)
				{
					var approachVendor = AccessTools.Method(typeof(Vendor), nameof(Vendor.ApproachVendor),
						new Type[] { typeof(Player), typeof(VendorType), typeof(uint) });
					if (approachVendor != null)
					{
						var prefix = AccessTools.Method(typeof(VendorIntegration), nameof(VendorIntegration.OnVendorApproachPrefix));
						if (prefix != null)
						{
							ModC.Harmony.Patch(approachVendor, prefix: new HarmonyMethod(prefix));
							ModManager.Log("[SpellSiphon] Vendor integration enabled.", ModManager.LogLevel.Info);
						}
					}
				}

				HooksApplied = true;
			}
			catch (Exception ex)
			{
				ModManager.Log($"[SpellSiphon] Failed to apply hooks: {ex.Message}", ModManager.LogLevel.Warn);
			}
		}
	}

	private void TryPatchRecipeHooks()
	{
		try
		{
			// Patch GetRecipe to inject Spellsiphon recipe
			var getRecipe = AccessTools.Method(typeof(RecipeManager), nameof(RecipeManager.GetRecipe));
			if (getRecipe != null)
			{
				var postfix = AccessTools.Method(typeof(RecipeHooks), nameof(RecipeHooks.PostGetRecipe));
				if (postfix != null)
				{
					ModC.Harmony.Patch(getRecipe, postfix: new HarmonyMethod(postfix));
					ModManager.Log("[SpellSiphon] Recipe hook applied (GetRecipe postfix).", ModManager.LogLevel.Info);
				}
			}

			// Patch GetRecipeChance for custom success formula
			var getRecipeChance = AccessTools.Method(typeof(RecipeManager), nameof(RecipeManager.GetRecipeChance));
			if (getRecipeChance != null)
			{
				var postfix = AccessTools.Method(typeof(RecipeHooks), nameof(RecipeHooks.PostGetRecipeChance));
				if (postfix != null)
				{
					ModC.Harmony.Patch(getRecipeChance, postfix: new HarmonyMethod(postfix));
					ModManager.Log("[SpellSiphon] Recipe hook applied (GetRecipeChance postfix).", ModManager.LogLevel.Info);
				}
			}

			// Patch HandleRecipe prefix to capture spells before destruction
			var handleRecipe = AccessTools.Method(typeof(RecipeManager), nameof(RecipeManager.HandleRecipe));
			if (handleRecipe != null)
			{
				var prefix = AccessTools.Method(typeof(RecipeHooks), nameof(RecipeHooks.PreHandleRecipe));
				if (prefix != null)
				{
					ModC.Harmony.Patch(handleRecipe, prefix: new HarmonyMethod(prefix));
					ModManager.Log("[SpellSiphon] Recipe hook applied (HandleRecipe prefix).", ModManager.LogLevel.Info);
				}
			}

			// Patch CreateDestroyItems postfix to capture success/fail
			var createDestroy = AccessTools.Method(typeof(RecipeManager), nameof(RecipeManager.CreateDestroyItems));
			if (createDestroy != null)
			{
				var postfix = AccessTools.Method(typeof(RecipeHooks), nameof(RecipeHooks.PostCreateDestroyItems));
				if (postfix != null)
				{
					ModC.Harmony.Patch(createDestroy, postfix: new HarmonyMethod(postfix));
					ModManager.Log("[SpellSiphon] Recipe hook applied (CreateDestroyItems postfix).", ModManager.LogLevel.Info);
				}
			}

			// Patch HandleRecipe postfix to create charged Spellsiphon
			if (handleRecipe != null)
			{
				var postfix = AccessTools.Method(typeof(RecipeHooks), nameof(RecipeHooks.PostHandleRecipe));
				if (postfix != null)
				{
					ModC.Harmony.Patch(handleRecipe, postfix: new HarmonyMethod(postfix));
					ModManager.Log("[SpellSiphon] Recipe hook applied (HandleRecipe postfix).", ModManager.LogLevel.Info);
				}
			}
		}
		catch (Exception ex)
		{
			ModManager.Log($"[SpellSiphon] Recipe hooks failed: {ex.Message}", ModManager.LogLevel.Warn);
		}
	}

	private void TryPatchOnCastSpell()
	{
		try
		{
			var onCastSpell = AccessTools.Method(typeof(WorldObject), nameof(WorldObject.OnCastSpell));
			if (onCastSpell != null)
			{
				var prefix = AccessTools.Method(typeof(RecipeHooks), nameof(RecipeHooks.PrefixOnCastSpell));
				if (prefix != null)
				{
					ModC.Harmony.Patch(onCastSpell, prefix: new HarmonyMethod(prefix));
					ModManager.Log("[SpellSiphon] OnCastSpell hook applied (Mana Lattice self-cast).", ModManager.LogLevel.Info);
				}
			}
		}
		catch (Exception ex)
		{
			ModManager.Log($"[SpellSiphon] OnCastSpell hook failed: {ex.Message}", ModManager.LogLevel.Warn);
		}
	}

	private void TryPatchInfiniteGems()
	{
		try
		{
			MethodInfo? gemUseMethod = AccessTools.Method(typeof(WorldObject), "UseGem");
			if (gemUseMethod != null)
			{
				MethodInfo? postfix = AccessTools.Method(typeof(InfiniteGemHooks), nameof(InfiniteGemHooks.PostUseGem));
				if (postfix != null)
				{
					ModC.Harmony.Patch(gemUseMethod, postfix: new HarmonyMethod(postfix));
					ModManager.Log("[SpellSiphon] Infinite gem hook applied (Gem.UseGem postfix).", ModManager.LogLevel.Info);
				}
			}
		}
		catch (Exception ex)
		{
			ModManager.Log($"[SpellSiphon] Infinite gem hook failed: {ex.Message}", ModManager.LogLevel.Warn);
		}
	}
}
