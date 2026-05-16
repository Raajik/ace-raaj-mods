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
            ApplyLootCreationPostfix();

            _lootPatchApplied = true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Empower] ApplyLootPatch failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    void ApplyLootCreationPostfix()
    {
        if (_woFactoryPatchApplied) return;

        // Postfix on LootGenerationFactory.CreateAndMutateWcid —
        // applies randomized stats to Anointed kits right after creation.
        try
        {
            var mutateMethod = AccessTools.Method(
                typeof(ACE.Server.Factories.LootGenerationFactory),
                "CreateAndMutateWcid",
                new Type[] { typeof(ACE.Database.Models.World.TreasureDeath), typeof(ACE.Server.Factories.Entity.TreasureRoll), typeof(bool) });

            if (mutateMethod != null)
            {
                var postfix = AccessTools.Method(typeof(PatchClass),
                    nameof(PostCreateAndMutateWcid));
                ModC.Harmony?.Patch(mutateMethod, null, new HarmonyMethod(postfix));
                _woFactoryPatchApplied = true;
                ModManager.Log("[Empower] LootGenerationFactory.CreateAndMutateWcid postfix applied", ModManager.LogLevel.Info);
            }
            else
            {
                ModManager.Log("[Empower] Could not find CreateAndMutateWcid — Anointed kit stats will NOT be applied.", ModManager.LogLevel.Error);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Empower] Loot creation hook failed: {ex}", ModManager.LogLevel.Error);
        }
    }

    /// <summary>
    /// Postfix on CreateAndMutateWcid — applies Anointed Kit stats if the item is our template.
    /// </summary>
    public static void PostCreateAndMutateWcid(WorldObject __result)
    {
        if (__result == null) return;
        uint targetWcid = S.Settings?.AnointedKits?.AnointedKitWcid ?? 0;
        if (targetWcid == 0) return;
        if (__result.WeenieClassId != targetWcid) return;

        Healing.AnointedKitGenerator.ApplyAnointedKitStats(__result);
        ModManager.Log($"[Empower] Applied Anointed stats to {__result.Name} (WCID {__result.WeenieClassId})", ModManager.LogLevel.Info);
    }

    // ======================================================================
    // PATCH 2: Apply perk effects during healing
    // ======================================================================

    void ApplyHealingEffectsPatch()
    {
        if (_healingEffectsPatchApplied) return;

        try
        {
            // Prefix on Food.OnActivate — Auto-Self (one-click heal, no reticle)
            // Must patch the base virtual method on WorldObject (Food inherits it)
            var foodActivate = AccessTools.Method(typeof(WorldObject), nameof(WorldObject.OnActivate),
                new Type[] { typeof(WorldObject) });
            if (foodActivate != null)
            {
                var autoSelfPrefix = AccessTools.Method(typeof(Healing.AnointedKitEffects),
                    nameof(Healing.AnointedKitEffects.PreFoodOnActivate));
                ModC.Harmony?.Patch(foodActivate, new HarmonyMethod(autoSelfPrefix));
            }

            // Postfix on Creature.GetDamageResistRating — Reactive Barrier
            var getDRR = AccessTools.Method(typeof(Creature), nameof(Creature.GetDamageResistRating),
                new Type[] { typeof(CombatType?), typeof(bool) });
            if (getDRR != null)
            {
                var barrierPostfix = AccessTools.Method(typeof(Healing.AnointedKitEffects),
                    nameof(Healing.AnointedKitEffects.PostGetDamageResistRating));
                ModC.Harmony?.Patch(getDRR, null, new HarmonyMethod(barrierPostfix));
            }

            // Postfix on CreatureSkill.Current getter — Boon
            var skillCurrent = AccessTools.PropertyGetter(typeof(CreatureSkill), nameof(CreatureSkill.Current));
            if (skillCurrent != null)
            {
                var boonPostfix = AccessTools.Method(typeof(Healing.AnointedKitEffects),
                    nameof(Healing.AnointedKitEffects.PostCreatureSkillCurrent));
                ModC.Harmony?.Patch(skillCurrent, null, new HarmonyMethod(boonPostfix));
            }

            _healingEffectsPatchApplied = true;
            ModManager.Log("[Empower] All runtime effect patches applied.", ModManager.LogLevel.Info);
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