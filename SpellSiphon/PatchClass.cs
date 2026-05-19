using Spellsiphon.Features;

namespace Spellsiphon;

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
				ManaLatticeAutoBuff.Stop();
			}
			catch (Exception ex)
			{
				ModManager.Log($"[Spellsiphon] UnpatchAll on Stop: {ex.Message}", ModManager.LogLevel.Warn);
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
								ModManager.Log($"[Spellsiphon] Skipping use hook patch target: {target.DeclaringType?.FullName ?? target.ToString()}. Reason: {ex.Message}", ModManager.LogLevel.Warn);
							}
						}
					}

					if (patched > 0)
						ModManager.Log($"[Spellsiphon] Immersive use hooks enabled. Patched {patched} overload(s).", ModManager.LogLevel.Info);
					else
						ModManager.Log("[Spellsiphon] Immersive use hook targets not found.", ModManager.LogLevel.Warn);
				}

				// 2. Native recipe hooks (extraction dialog + skill check)
				TryPatchRecipeHooks();

				// 3. Infinite gem hooks (all gems reusable)
				TryPatchInfiniteGems();

				// 5. Mana Lattice Gem hook (Gem.UseGem postfix — casts all spells in spellbook)
				TryPatchManaLatticeGemHooks();

				// 6. Mana Lattice auto-buff timer
				ManaLatticeAutoBuff.TryApply();

				// 6. Vendor integration (sell tools at mage/jeweler vendors)
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
							ModManager.Log("[Spellsiphon] Vendor integration enabled.", ModManager.LogLevel.Info);
						}
					}

					MethodInfo? itemProfileToWo = AccessTools.Method(typeof(Vendor), "ItemProfileToWorldObjects", new Type[] { typeof(ItemProfile) });
					if (itemProfileToWo != null)
					{
						MethodInfo? stackPost = AccessTools.Method(typeof(VendorStackUnitPricePostfix), nameof(VendorStackUnitPricePostfix.Postfix));
						if (stackPost != null)
						{
							ModC.Harmony.Patch(itemProfileToWo, postfix: new HarmonyMethod(stackPost));
							ModManager.Log("[Spellsiphon] Vendor stack unit price postfix enabled.", ModManager.LogLevel.Info);
						}
					}
				}

				HooksApplied = true;
			}
			catch (Exception ex)
			{
				ModManager.Log($"[Spellsiphon] Failed to apply hooks: {ex.Message}", ModManager.LogLevel.Warn);
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
					ModManager.Log("[Spellsiphon] Recipe hook applied (GetRecipe postfix).", ModManager.LogLevel.Info);
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
					ModManager.Log("[Spellsiphon] Recipe hook applied (GetRecipeChance postfix).", ModManager.LogLevel.Info);
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
					ModManager.Log("[Spellsiphon] Recipe hook applied (HandleRecipe prefix).", ModManager.LogLevel.Info);
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
					ModManager.Log("[Spellsiphon] Recipe hook applied (CreateDestroyItems postfix).", ModManager.LogLevel.Info);
				}
			}

			// Patch HandleRecipe postfix (cleansing + extraction)
			if (handleRecipe != null)
			{
				var postfix = AccessTools.Method(typeof(RecipeHooks), nameof(RecipeHooks.PostHandleRecipe));
				if (postfix != null)
				{
					ModC.Harmony.Patch(handleRecipe, postfix: new HarmonyMethod(postfix));
					ModManager.Log("[Spellsiphon] Recipe hook applied (HandleRecipe postfix).", ModManager.LogLevel.Info);
				}
			}
		}
		catch (Exception ex)
		{
			ModManager.Log($"[Spellsiphon] Recipe hooks failed: {ex.Message}", ModManager.LogLevel.Warn);
		}
	}

	private void TryPatchInfiniteGems()
	{
		try
		{
			MethodInfo? gemUseMethod = AccessTools.Method(typeof(Gem), nameof(Gem.UseGem), new Type[] { typeof(Player) });
			if (gemUseMethod != null)
			{
				MethodInfo? prefix = AccessTools.Method(typeof(InfiniteGemHooks), nameof(InfiniteGemHooks.PreUseGem));
				if (prefix != null)
				{
					ModC.Harmony.Patch(gemUseMethod, prefix: new HarmonyMethod(prefix));
					ModManager.Log("[Spellsiphon] Infinite gem hook applied (Gem.UseGem prefix).", ModManager.LogLevel.Info);
				}
			}
		}
		catch (Exception ex)
		{
			ModManager.Log($"[Spellsiphon] Infinite gem hook failed: {ex.Message}", ModManager.LogLevel.Warn);
		}
	}

	private void TryPatchManaLatticeGemHooks()
	{
		try
		{
			MethodInfo? gemUseMethod = AccessTools.Method(typeof(Gem), nameof(Gem.UseGem));
			if (gemUseMethod != null)
			{
				MethodInfo? postfix = AccessTools.Method(typeof(ManaLatticeGemHooks), nameof(ManaLatticeGemHooks.PostUseGem));
				if (postfix != null)
				{
					ModC.Harmony.Patch(gemUseMethod, postfix: new HarmonyMethod(postfix));
					ModManager.Log("[Spellsiphon] Mana Lattice Gem hook applied (Gem.UseGem postfix).", ModManager.LogLevel.Info);
				}
			}
		}
		catch (Exception ex)
		{
			ModManager.Log($"[Spellsiphon] Mana Lattice Gem hook failed: {ex.Message}", ModManager.LogLevel.Warn);
		}
	}
}
