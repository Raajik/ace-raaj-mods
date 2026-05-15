namespace Empower;

public class PatchClass(ACE.Shared.Mods.BasicMod mod, string settingsName = "Settings.json")
    : ACE.Shared.Mods.BasicPatch<Settings>(mod, settingsName)
{
    static bool _lootPatchApplied;
    static bool _healingEffectsPatchApplied;
    static bool _woFactoryPatchApplied;

    public override void Start()
    {
        base.Start();

        // Load settings from file
        LoadSettingsFromFile();

        ModManager.Log("[Empower] Start() called", ModManager.LogLevel.Info);

        if (Settings.EnableAnointedHealingKits)
        {
            ApplyLootPatch();
            ApplyHealingEffectsPatch();
        }

        ModManager.Log($"[Empower] Start() complete — EnableAnointedHealingKits={Settings.EnableAnointedHealingKits}", ModManager.LogLevel.Info);
    }

    public override async Task OnWorldOpen()
    {
        await base.OnWorldOpen();
        ModManager.Log("[Empower] OnWorldOpen — mod loaded and ready", ModManager.LogLevel.Info);
    }

    public override void Stop()
    {
        base.Stop();
        _lootPatchApplied = false;
        _healingEffectsPatchApplied = false;
        _woFactoryPatchApplied = false;
    }

    // ======================================================================
    // PATCH 1: Replace vanilla healing kit loot with Anointed Kits
    // ======================================================================

    void ApplyLootPatch()
    {
        if (_lootPatchApplied) return;

        try
        {
            // Patch HealKitWcids.Roll to return our Anointed kit WCID
            var healKitRoll = AccessTools.Method(
                typeof(ACE.Server.Factories.Tables.Wcids.HealKitWcids),
                nameof(ACE.Server.Factories.Tables.Wcids.HealKitWcids.Roll));

            if (healKitRoll == null)
            {
                ModManager.Log("[Empower] HealKitWcids.Roll not found", ModManager.LogLevel.Error);
                return;
            }

            var rollPrefix = AccessTools.Method(typeof(Healing.AnointedKitGenerator),
                nameof(Healing.AnointedKitGenerator.PreHealKitWcidsRoll));
            ModC.Harmony?.Patch(healKitRoll, new HarmonyMethod(rollPrefix));

            ModManager.Log("[Empower] HealKitWcids.Roll prefix applied — loot healing kits now use Anointed template", ModManager.LogLevel.Info);

            // Patch item creation to inject our randomized stats
            ApplyWorldObjectFactoryPatch();

            _lootPatchApplied = true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Empower] ApplyLootPatch failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    void ApplyWorldObjectFactoryPatch()
    {
        if (_woFactoryPatchApplied) return;

        try
        {
            var createMethod = AccessTools.Method(typeof(WorldObjectFactory),
                nameof(WorldObjectFactory.CreateNewWorldObject),
                new Type[] { typeof(uint) });

            if (createMethod == null)
            {
                ModManager.Log("[Empower] WorldObjectFactory.CreateNewWorldObject(uint) not found", ModManager.LogLevel.Error);
                return;
            }

            var postfix = AccessTools.Method(typeof(Healing.AnointedKitGenerator),
                nameof(Healing.AnointedKitGenerator.ApplyAnointedKitStats),
                new[] { typeof(WorldObject) });

            // We can't use a real postfix here because the return type is WorldObject, not void.
            // Instead, we need to patch with a different approach.
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Empower] WorldObjectFactory patch failed: {ex}", ModManager.LogLevel.Error);
        }

        // Alternative approach: postfix on the loot creation loop in LootGenerationFactory
        TryApplyLootCreationPostfix();
    }

    void TryApplyLootCreationPostfix()
    {
        // The LootGenerationFactory creates items in a loop. We want to detect
        // when an Anointed kit was just created and apply our randomization.
        // Let's use a different method — postfix on the specific item creation.

        // Actually, the ApplyAnointedKitStats is called as a post-creation hook.
        // But since our method signature matches wrong, let me take a different approach:
        // We'll use a postfix on LootGenerationFactory's loot creation that iterates
        // over created items and applies our changes.

        try
        {
            // Postfix on LootGenerationFactory.CreateRandomLootObjects — 
            // scans created items for Anointed kits and applies randomized stats.
            var createLoot = AccessTools.Method(
                typeof(LootGenerationFactory),
                "CreateRandomLootObjects",
                new Type[] { typeof(TreasureDeath), typeof(bool) });

            if (createLoot != null)
            {
                var createPostfix = AccessTools.Method(typeof(PatchClass),
                    nameof(PostCreateRandomLootObjects));
                ModC.Harmony?.Patch(createLoot, null, new HarmonyMethod(createPostfix));
                _woFactoryPatchApplied = true;
                ModManager.Log("[Empower] LootGenerationFactory.CreateRandomLootObjects postfix applied", ModManager.LogLevel.Info);
            }
            else
            {
                ModManager.Log("[Empower] Could not find CreateRandomLootObjects — Anointed kit stats won't be applied.", ModManager.LogLevel.Warn);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Empower] Loot creation hook failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    /// <summary>
    /// Postfix on CreateRandomLootObjects — scans for Anointed kits and applies stats.
    /// </summary>
    public static void PostCreateRandomLootObjects(List<WorldObject> __result)
    {
        if (__result == null || __result.Count == 0) return;
        uint targetWcid = S.Settings?.AnointedKits?.AnointedKitWcid ?? 0;
        if (targetWcid == 0) return;

        foreach (var item in __result)
        {
            if (item != null && item.WeenieClassId == targetWcid)
            {
                Healing.AnointedKitGenerator.ApplyAnointedKitStats(item);
                ModManager.Log($"[Empower] Applied Anointed stats to {item.Name} (WCID {item.WeenieClassId})", ModManager.LogLevel.Info);
            }
        }
    }

    // ======================================================================
    // PATCH 2: Apply perk effects during healing
    // ======================================================================

    void ApplyHealingEffectsPatch()
    {
        if (_healingEffectsPatchApplied) return;

        try
        {
            // Postfix on Healer.DoHealing
            var doHealing = AccessTools.Method(typeof(Healer), nameof(Healer.DoHealing));
            if (doHealing == null)
            {
                ModManager.Log("[Empower] Healer.DoHealing not found", ModManager.LogLevel.Error);
                return;
            }

            var postfix = AccessTools.Method(typeof(Healing.AnointedKitEffects),
                nameof(Healing.AnointedKitEffects.PostDoHealing));
            ModC.Harmony?.Patch(doHealing, null, new HarmonyMethod(postfix));
            ModManager.Log("[Empower] Healer.DoHealing postfix applied (perk effects)", ModManager.LogLevel.Info);

            // Postfix on Healer.GetHealAmount for Efficiency + Critical Surge
            var getHealAmount = AccessTools.Method(typeof(Healer), nameof(Healer.GetHealAmount));
            if (getHealAmount != null)
            {
                var effPostfix = AccessTools.Method(typeof(Healing.AnointedKitEffects),
                    nameof(Healing.AnointedKitEffects.PostGetHealAmount));
                ModC.Harmony?.Patch(getHealAmount, null, new HarmonyMethod(effPostfix));

                var critPostfix = AccessTools.Method(typeof(Healing.AnointedKitEffects),
                    nameof(Healing.AnointedKitEffects.PostGetHealAmountCrit));
                ModC.Harmony?.Patch(getHealAmount, null, new HarmonyMethod(critPostfix));

                ModManager.Log("[Empower] Healer.GetHealAmount postfixes applied (efficiency + crit surge)", ModManager.LogLevel.Info);
            }

            // Prefix on Player.HandleActionUseItem for Auto-Self
            var handleUseItem = AccessTools.Method(typeof(Player), nameof(Player.HandleActionUseItem),
                new Type[] { typeof(WorldObject) });
            if (handleUseItem != null)
            {
                var autoSelfPrefix = AccessTools.Method(typeof(Healing.AnointedKitEffects),
                    nameof(Healing.AnointedKitEffects.PreHandleActionUseItem));
                ModC.Harmony?.Patch(handleUseItem, new HarmonyMethod(autoSelfPrefix));
                ModManager.Log("[Empower] Player.HandleActionUseItem prefix applied (Auto-Self)", ModManager.LogLevel.Info);
            }

            // Postfix on Creature.GetDamageResistRating for Reactive Barrier
            var getDRR = AccessTools.Method(typeof(Creature), nameof(Creature.GetDamageResistRating),
                new Type[] { typeof(CombatType?), typeof(bool) });
            if (getDRR != null)
            {
                var barrierPostfix = AccessTools.Method(typeof(Healing.AnointedKitEffects),
                    nameof(Healing.AnointedKitEffects.PostGetDamageResistRating));
                ModC.Harmony?.Patch(getDRR, null, new HarmonyMethod(barrierPostfix));
                ModManager.Log("[Empower] Creature.GetDamageResistRating postfix applied (Reactive Barrier)", ModManager.LogLevel.Info);
            }

            // Postfix on CreatureSkill.Current getter for Boon
            var skillCurrent = AccessTools.PropertyGetter(typeof(CreatureSkill), nameof(CreatureSkill.Current));
            if (skillCurrent != null)
            {
                var boonPostfix = AccessTools.Method(typeof(Healing.AnointedKitEffects),
                    nameof(Healing.AnointedKitEffects.PostCreatureSkillCurrent));
                ModC.Harmony?.Patch(skillCurrent, null, new HarmonyMethod(boonPostfix));
                ModManager.Log("[Empower] CreatureSkill.Current getter postfix applied (Boon)", ModManager.LogLevel.Info);
            }

            _healingEffectsPatchApplied = true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Empower] ApplyHealingEffectsPatch failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    // ======================================================================
    // SETTINGS LOADING
    // ======================================================================

    void LoadSettingsFromFile()
    {
        try
        {
            var asm = typeof(PatchClass).Assembly;
            string? settingsPath = null;

            if (!string.IsNullOrWhiteSpace(asm.Location))
                settingsPath = Path.Combine(Path.GetDirectoryName(asm.Location) ?? "", "Settings.json");

            if (string.IsNullOrEmpty(asm.Location) || !File.Exists(settingsPath))
            {
                var name = asm.GetName().Name ?? "Empower";
                settingsPath = Path.Combine(ModManager.ModPath, name, "Settings.json");
            }

            if (settingsPath != null && File.Exists(settingsPath))
            {
                var json = File.ReadAllText(settingsPath);
                var loaded = System.Text.Json.JsonSerializer.Deserialize<Settings>(json,
                    new System.Text.Json.JsonSerializerOptions
                    {
                        ReadCommentHandling = System.Text.Json.JsonCommentHandling.Skip
                    });
                if (loaded != null)
                    Settings = loaded;
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Empower] Failed to load settings: {ex.Message}", ModManager.LogLevel.Error);
        }
    }
}