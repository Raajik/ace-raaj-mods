namespace EmpyreanAlteration;

[HarmonyPatch]
public class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    public new static Settings Settings { get; set; } = new();

    static bool _featureCommandsRegistered;
    static readonly List<AlterationFeature> LastPatchedFeatures = new();

    public override void Start()
    {
        base.Start();
        RefreshAll();
    }

    public override Task OnStartSuccess()
    {
        RefreshAll();
        return Task.CompletedTask;
    }

    public override async Task OnWorldOpen()
    {
        var deadline = DateTime.UtcNow.AddMinutes(10);
        while (WorldManager.WorldStatus != WorldManager.WorldStatusState.Open)
        {
            if (DateTime.UtcNow > deadline)
            {
                ModManager.Log("[EmpyreanAlteration] OnWorldOpen: world did not reach Open within 10 minutes; applying patches anyway.", ModManager.LogLevel.Warn);
                break;
            }

            await Task.Delay(1000);
        }

        RefreshAll();
    }

    public override void Stop()
    {
        _featureCommandsRegistered = false;

        MutatorHooks.ShutdownMutators();
        try
        {
            ModC.Harmony.UnpatchAll();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[EmpyreanAlteration] Stop UnpatchAll: {ex.Message}", ModManager.LogLevel.Warn);
        }

        SpellGrowthHelper.ResetPoolsForUnload();

        base.Stop();
    }

    void RefreshAll()
    {
        Settings = SettingsContainer.Settings ?? new Settings();
        PatchClass.Settings = Settings;
        ItemLevelUpGrowth.ItemGrowthSettings = Settings;

        try
        {
            ModC.Harmony.UnpatchCategory(nameof(ItemLevelUpGrowth));
        }
        catch (Exception ex)
        {
            ModManager.Log($"[EmpyreanAlteration] Unpatch ItemLevelUpGrowth: {ex.Message}", ModManager.LogLevel.Warn);
        }

        try
        {
            ModC.Harmony.UnpatchCategory(QuestItemGrowthHarmony.Category);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[EmpyreanAlteration] Unpatch QuestItemGrowth: {ex.Message}", ModManager.LogLevel.Warn);
        }

        try
        {
            ModC.Harmony.UnpatchCategory("QuestCompletionItemLeveling");
        }
        catch (Exception ex)
        {
            ModManager.Log($"[EmpyreanAlteration] Unpatch QuestCompletionItemLeveling: {ex.Message}", ModManager.LogLevel.Warn);
        }

        try
        {
            ModC.Harmony.UnpatchCategory("CreatureDeathItemLeveling");
        }
        catch (Exception ex)
        {
            ModManager.Log($"[EmpyreanAlteration] Unpatch CreatureDeathItemLeveling: {ex.Message}", ModManager.LogLevel.Warn);
        }

        try
        {
            ModC.Harmony.UnpatchCategory("DisableAttunedQOL");
        }
        catch (Exception ex)
        {
            ModManager.Log($"[EmpyreanAlteration] Unpatch DisableAttunedQOL: {ex.Message}", ModManager.LogLevel.Warn);
        }

        QuestGrowthSalvageEffectApplier.BuildLookup(Settings.QuestGrowthSalvageRules);

        MutatorHooks.ShutdownMutators();

        foreach (var feature in LastPatchedFeatures)
        {
            try
            {
                ModC.Harmony.UnpatchCategory(feature.ToString());
            }
            catch (Exception ex)
            {
                ModManager.Log($"[EmpyreanAlteration] Unpatch feature {feature}: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        LastPatchedFeatures.Clear();

        if (!Settings.Enabled)
            return;

        if (Settings.ItemXpCurveMode == ItemXpCurveMode.CharacterTable && Settings.ItemXpVirtualCharacterLevel > 12)
        {
            ModManager.Log(
                $"[EmpyreanAlteration] ItemXpVirtualCharacterLevel={Settings.ItemXpVirtualCharacterLevel} uses large character XP chunks per item level; progression will be slow. Lower (e.g. 3–10) or reduce ItemXpCharacterCurveMultiplier for faster items.",
                ModManager.LogLevel.Info);
        }

        if (Settings.ItemXpCurveMode == ItemXpCurveMode.Geometric && Settings.ItemXpGeometricMultiplierPerStep <= 1.0)
        {
            ModManager.Log(
                "[EmpyreanAlteration] ItemXpGeometricMultiplierPerStep must be > 1; progression would stall. Curve math clamps low multipliers until Settings are fixed.",
                ModManager.LogLevel.Warn);
        }

        MutatorHooks.SetupMutators();

        if (Settings.ItemLevelUpGrowthEnabled)
        {
            try
            {
                ModC.Harmony.PatchCategory(nameof(ItemLevelUpGrowth));
            }
            catch (Exception ex)
            {
                ModManager.Log($"[EmpyreanAlteration] PatchCategory ItemLevelUpGrowth: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        if (Settings.ChaosTriggeredGrowth)
        {
            ChaosTriggeredGrowth.TryApplyPatch(ModC.Harmony);
        }

        if (Settings.EnableLootItemLeveling)
        {
            try
            {
                ModC.Harmony.PatchCategory(QuestItemGrowthHarmony.Category);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[EmpyreanAlteration] PatchCategory QuestItemGrowth: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        // Core item-leveling point system (kill points + quest completion points)
        if (Settings.ItemLevelingKillPoints > 0 || Settings.ItemLevelingQuestCompletionPoints > 0)
        {
            try
            {
                ModC.Harmony.PatchCategory("QuestCompletionItemLeveling");
            }
            catch (Exception ex)
            {
                ModManager.Log($"[EmpyreanAlteration] PatchCategory QuestCompletionItemLeveling: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        if (Settings.ItemLevelingKillPoints > 0)
        {
            try
            {
                ModC.Harmony.PatchCategory("CreatureDeathItemLeveling");
            }
            catch (Exception ex)
            {
                ModManager.Log($"[EmpyreanAlteration] PatchCategory CreatureDeathItemLeveling: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        if (Settings.DisableAttunedGlobally)
        {
            try
            {
                ModC.Harmony.PatchCategory("DisableAttunedQOL");
            }
            catch (Exception ex)
            {
                ModManager.Log($"[EmpyreanAlteration] PatchCategory DisableAttunedQOL: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        foreach (var feature in Settings.Features)
        {
            try
            {
                ModC.Harmony.PatchCategory(feature.ToString());
                LastPatchedFeatures.Add(feature);

                if (Settings.Verbose)
                    ModManager.Log($"[EmpyreanAlteration] Enabled feature: {feature}");
            }
            catch (Exception ex)
            {
                ModManager.Log($"[EmpyreanAlteration] PatchCategory {feature}: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        if (!_featureCommandsRegistered)
        {
            ModC.RegisterCommands(Settings.Features.Select(f => (Enum)f).ToArray());
            _featureCommandsRegistered = true;
        }
    }
}
