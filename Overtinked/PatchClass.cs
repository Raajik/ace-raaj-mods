using ACE.Database.Models.World;

namespace Overtinked;

// Overtinked: recipe/tinkering logic lives here; item XP / loot init patches use HarmonyPatchCategory(ItemLevelingHarmonyCategory).
// RecipeManager / Creature rating patches run only when Settings.RecipeManagerCategory is patched (see OnWorldOpen).
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
public partial class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    // Static reference for use in static patch methods (e.g. PreTryMutate).
    // Must be set from Start() as well as OnWorldOpen(): if the mod loads after the world is already up,
    // OnWorldOpen never runs and item level-ups would see null here and skip all growth effects.
    internal static Settings? CurrentSettings;

    static bool _itemLevelingCategoryPatched;

    public override void Start()
    {
        base.Start();
        RefreshSettingsAndSalvageLookup();
    }

    public override async Task OnWorldOpen()
    {
        RefreshSettingsAndSalvageLookup();

        // Extend tinkering difficulty table (world is up; safe to mutate RecipeManager list).
        ModifyTinkering();

        if (Settings?.EnableRecipeManagerPatch == true)
            ModC.Harmony.PatchCategory(Overtinked.Settings.RecipeManagerCategory);
        await Task.CompletedTask;
    }

    public override void Stop()
    {
        try
        {
            ModC.Harmony.UnpatchCategory(Settings.RecipeManagerCategory);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Overtinked] Unpatch {Settings.RecipeManagerCategory}: {ex.Message}", ModManager.LogLevel.Warn);
        }

        if (_itemLevelingCategoryPatched)
        {
            try
            {
                ModC.Harmony.UnpatchCategory(Settings.ItemLevelingHarmonyCategory);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Overtinked] Unpatch {Settings.ItemLevelingHarmonyCategory}: {ex.Message}", ModManager.LogLevel.Warn);
            }

            _itemLevelingCategoryPatched = false;
        }

        RestoreTinkering();
        SpellGrowthHelper.ResetPoolsForUnload();
        CurrentSettings = null;
        base.Stop();
    }

    void RefreshSettingsAndSalvageLookup()
    {
        try
        {
            Settings = SettingsContainer.Settings ?? new Settings();
        }
        catch
        {
            Settings ??= new Settings();
        }

        Settings cfg = Settings ?? new Settings();
        Settings = cfg;
        CurrentSettings = cfg;
        SalvageEffectApplier.BuildLookup(cfg);

        if (cfg.ItemXpCurveMode == ItemXpCurveMode.CharacterTable && cfg.ItemXpVirtualCharacterLevel > 12)
        {
            ModManager.Log(
                $"[Overtinked] ItemXpVirtualCharacterLevel={cfg.ItemXpVirtualCharacterLevel} uses large character XP chunks per item level; progression will be slow. Lower (e.g. 3–10) or reduce ItemXpCharacterCurveMultiplier for faster items.",
                ModManager.LogLevel.Info);
        }

        if (cfg.ItemXpCurveMode == ItemXpCurveMode.Geometric && cfg.ItemXpGeometricMultiplierPerStep <= 1.0)
        {
            ModManager.Log(
                "[Overtinked] ItemXpGeometricMultiplierPerStep must be > 1; progression would stall. Curve math clamps low multipliers until Settings are fixed.",
                ModManager.LogLevel.Warn);
        }

        ApplyItemLevelingHarmonyCategory(cfg);
    }

    void ApplyItemLevelingHarmonyCategory(Settings cfg)
    {
        if (cfg.EnableItemLevelingHooks && !_itemLevelingCategoryPatched)
        {
            ModC.Harmony.PatchCategory(Settings.ItemLevelingHarmonyCategory);
            _itemLevelingCategoryPatched = true;
        }
        else if (!cfg.EnableItemLevelingHooks && _itemLevelingCategoryPatched)
        {
            try
            {
                ModC.Harmony.UnpatchCategory(Settings.ItemLevelingHarmonyCategory);
            }
            catch
            {
            }
            _itemLevelingCategoryPatched = false;
        }
    }

    // Snapshot of default TinkeringDifficulty; can be used to restore on shutdown.
    static readonly List<float> difficulty = RecipeManager.TinkeringDifficulty.ToList();

    private void RestoreTinkering()
    {
        RecipeManager.TinkeringDifficulty = difficulty.ToList();
    }

    // Appends extra difficulty steps so RecipeManager has one entry per allowed tinker (up to MaxTries), scaled by Settings.Scale.
    private void ModifyTinkering()
    {
        if (Settings is null)
            return;

        var diffs = RecipeManager.TinkeringDifficulty.Count;
        if (diffs == 0)
        {
            ModManager.Log("Overtinked: RecipeManager.TinkeringDifficulty is empty; skipping difficulty extension.", ModManager.LogLevel.Warn);
            return;
        }

        var last = RecipeManager.TinkeringDifficulty.Last();
        var toAdd = Math.Max(0, Settings.MaxTries - diffs);
        var steps = Enumerable.Range(diffs, toAdd)
            .Select((x, i) => last + (i + 1) * Settings.Scale);

        RecipeManager.TinkeringDifficulty.AddRange(steps);
        ModManager.Log($"Overtinked diffs ({RecipeManager.TinkeringDifficulty.Count}): {string.Join(", ", RecipeManager.TinkeringDifficulty)}");
    }

    // Prefix: replaces RecipeManager.VerifyRequirements. Uses Settings.MaxTries for NumTimesTinkered and Settings.MaxImbueEffects for ImbuedEffect; delegates other requirement types to RecipeManager.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.VerifyRequirements), new Type[] { typeof(Recipe), typeof(Player), typeof(WorldObject), typeof(RequirementType) })]
    public static bool PreVerifyRequirements(Recipe recipe, Player player, WorldObject obj, RequirementType reqType, ref bool __result)
    {
        #region Setup
        __result = true;

        var boolReqs = recipe.RecipeRequirementsBool.Where(i => i.Index == (int)reqType).ToList();
        var intReqs = recipe.RecipeRequirementsInt.Where(i => i.Index == (int)reqType).ToList();
        var floatReqs = recipe.RecipeRequirementsFloat.Where(i => i.Index == (int)reqType).ToList();
        var strReqs = recipe.RecipeRequirementsString.Where(i => i.Index == (int)reqType).ToList();
        var iidReqs = recipe.RecipeRequirementsIID.Where(i => i.Index == (int)reqType).ToList();
        var didReqs = recipe.RecipeRequirementsDID.Where(i => i.Index == (int)reqType).ToList();

        var totalReqs = boolReqs.Count + intReqs.Count + floatReqs.Count + strReqs.Count + iidReqs.Count + didReqs.Count;

        if (RecipeManager.Debug && totalReqs > 0)
            Console.WriteLine($"{reqType} Requirements: {totalReqs}");
        #endregion

        foreach (var requirement in intReqs)
        {
            int? value = obj.GetProperty((PropertyInt)requirement.Stat);
            double? normalized = value != null ? Convert.ToDouble(value.Value) : null;

            var propInt = (PropertyInt)requirement.Stat;
            var comp = (CompareType)requirement.Enum;

            if (propInt == PropertyInt.ImbuedEffect)
            {
                value = obj.GetProperty((PropertyInt)requirement.Stat) ?? 0;
            }

            var ov = CurrentSettings;
            if (ov is null)
            {
                __result = RecipeManager.VerifyRequirement(player, (CompareType)requirement.Enum, normalized, Convert.ToDouble(requirement.Value), requirement.Message);
                continue;
            }

            __result = propInt switch
            {
                PropertyInt.NumTimesTinkered => comp.Compare(ov.MaxTries - 1, value ?? 0, player, requirement.Message) ? __result : false,
                PropertyInt.ImbuedEffect => comp.Compare(ov.MaxImbueEffects - 1, BitOperations.PopCount((uint)(value ?? 0)), player, requirement.Message) ? __result : false,
                _ => RecipeManager.VerifyRequirement(player, (CompareType)requirement.Enum, normalized, Convert.ToDouble(requirement.Value), requirement.Message),
            };
            continue;
        }

        #region Unmodified Requirement Checks
        foreach (var requirement in boolReqs)
        {
            bool? value = obj.GetProperty((PropertyBool)requirement.Stat);
            double? normalized = value != null ? Convert.ToDouble(value.Value) : null;

            if (RecipeManager.Debug)
                Console.WriteLine($"PropertyBool.{(PropertyBool)requirement.Stat} {(CompareType)requirement.Enum} {requirement.Value}, current: {value}");

            if (!RecipeManager.VerifyRequirement(player, (CompareType)requirement.Enum, normalized, Convert.ToDouble(requirement.Value), requirement.Message))
                __result = false;
        }

        foreach (var requirement in floatReqs)
        {
            double? value = obj.GetProperty((PropertyFloat)requirement.Stat);

            if (RecipeManager.Debug)
                Console.WriteLine($"PropertyFloat.{(PropertyFloat)requirement.Stat} {(CompareType)requirement.Enum} {requirement.Value}, current: {value}");

            if (!RecipeManager.VerifyRequirement(player, (CompareType)requirement.Enum, value, requirement.Value, requirement.Message))
                __result = false;
        }

        foreach (var requirement in strReqs)
        {
            string value = obj.GetProperty((PropertyString)requirement.Stat);

            if (RecipeManager.Debug)
                Console.WriteLine($"PropertyString.{(PropertyString)requirement.Stat} {(CompareType)requirement.Enum} {requirement.Value}, current: {value}");

            if (!RecipeManager.VerifyRequirement(player, (CompareType)requirement.Enum, value, requirement.Value, requirement.Message))
                __result = false;
        }

        foreach (var requirement in iidReqs)
        {
            var value = obj.GetProperty((PropertyInstanceId)requirement.Stat);
            double? normalized = value != null ? Convert.ToDouble(value.Value) : null;

            if (RecipeManager.Debug)
                Console.WriteLine($"PropertyInstanceId.{(PropertyInstanceId)requirement.Stat} {(CompareType)requirement.Enum} {requirement.Value}, current: {value}");

            if (!RecipeManager.VerifyRequirement(player, (CompareType)requirement.Enum, normalized, Convert.ToDouble(requirement.Value), requirement.Message))
                __result = false;
        }

        foreach (var requirement in didReqs)
        {
            uint? value = obj.GetProperty((PropertyDataId)requirement.Stat);
            double? normalized = value != null ? Convert.ToDouble(value.Value) : null;

            if (RecipeManager.Debug)
                Console.WriteLine($"PropertyDataId.{(PropertyDataId)requirement.Stat} {(CompareType)requirement.Enum} {requirement.Value}, current: {value}");

            if (!RecipeManager.VerifyRequirement(player, (CompareType)requirement.Enum, normalized, Convert.ToDouble(requirement.Value), requirement.Message))
                __result = false;
        }

        if (RecipeManager.Debug && totalReqs > 0)
            Console.WriteLine($"-----");
        #endregion

        return false;
    }

    // Prefix: custom salvage rules, new imbues (Bleed/Cleaving/Nether), buffed jewelry, or standard imbue by dataId; otherwise run original.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.TryMutate), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(uint), typeof(HashSet<uint>) })]
    public static bool PreTryMutate(Player player, WorldObject source, WorldObject target, Recipe recipe, uint dataId, HashSet<uint> modified, ref bool __result)
    {
        Settings? s = CurrentSettings;
        if (s == null)
            return true;

        uint wcid = source.WeenieClassId;

        // 1) New imbues: Bleed (Serpentine), Cleaving (Tiger Eye), Nether Rending (Onyx).
        if (TryApplyNewImbue(s, wcid, target))
        {
            RecipeManager.HandleTinkerLog(source, target);
            if (s.ShowPlayerSalvageMessage)
                player.SendMessage($"You apply the imbue to your {target.NameWithMaterial}.");
            __result = true;
            return false;
        }

        // 2) Custom salvage rule (random or fixed numeric effect).
        SalvageTinkerRule? rule = SalvageEffectApplier.GetRule(s, wcid);
        if (rule != null)
        {
            int value = SalvageEffectApplier.RollValue(rule);
            if (SalvageEffectApplier.ApplyEffect(target, rule, value, isFailure: false))
            {
                RecipeManager.HandleTinkerLog(source, target);
                if (s.ShowPlayerSalvageMessage)
                {
                    string desc = SalvageEffectApplier.GetEffectDescription(rule, value, isFailure: false);
                    if (!string.IsNullOrEmpty(desc))
                        player.SendMessage($"Your {target.NameWithMaterial}: {desc}.", ChatMessageType.Craft);
                }
                ModManager.Log($"[Overtinked] {player?.Name} applied {rule.Name ?? wcid.ToString()} -> {rule.EffectKind} {value} on {target.Guid}", ModManager.LogLevel.Debug);
                __result = true;
                return false;
            }
        }

        // 3) Buffed jewelry imbue (Hematite HP, Malachite Stam, etc.).
        if (TryApplyBuffedImbue(s, wcid, target, player))
        {
            RecipeManager.HandleTinkerLog(source, target);
            __result = true;
            return false;
        }

        // 4) Standard imbue by dataId.
        if (!imbueDataIDs.TryGetValue(dataId, out var imbueEffect))
            return true;

        target.ImbuedEffect |= imbueEffect;

        if (RecipeManager.incItemTinkered.Contains(dataId))
            RecipeManager.HandleTinkerLog(source, target);

        __result = true;
        return false;
    }

    private static bool TryApplyNewImbue(Settings s, uint wcid, WorldObject target)
    {
        if (s.BleedImbue?.Enabled == true && s.BleedImbue.SalvageWcids != null && s.BleedImbue.SalvageWcids.Contains(wcid))
        {
            OvertinkedImbueStore.Add(target.Guid.Full, OvertinkedImbueFlags.Bleed);
            return true;
        }
        if (s.CleavingImbue?.Enabled == true && s.CleavingImbue.SalvageWcids != null && s.CleavingImbue.SalvageWcids.Contains(wcid))
        {
            OvertinkedImbueStore.Add(target.Guid.Full, OvertinkedImbueFlags.Cleaving);
            return true;
        }
        if (s.NetherRendingImbue?.Enabled == true && s.NetherRendingImbue.SalvageWcids != null && s.NetherRendingImbue.SalvageWcids.Contains(wcid))
        {
            OvertinkedImbueStore.Add(target.Guid.Full, OvertinkedImbueFlags.NetherRending);
            return true;
        }
        return false;
    }

    const int ImbueFailureWorkmanshipCap = 10;

    // Prefix: when EnableFailureRedesign and our roll fails, apply opposite effect (numeric) or +1 Workmanship (imbue), or let original run.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.HandleRecipe), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(double) })]
    public static bool PreHandleRecipe(Player player, WorldObject source, WorldObject target, Recipe recipe, double successChance)
    {
        Settings? s = CurrentSettings;
        if (s == null || (!s.EnableFailureRedesign && !s.EnableDefaultImbueFailureWorkmanship))
            return true;

        bool rolledSuccess = Random.Shared.NextDouble() * 100.0 < successChance;
        if (rolledSuccess)
            return true;

        // Ensure a failed attempt never increases tinker count; we'll restore this after applying failure effects.
        int numTimesTinkered = target.GetProperty(PropertyInt.NumTimesTinkered) ?? 0;

        uint wcid = source.WeenieClassId;
        HashSet<uint> imbueWcids = ImbueSalvageWcids.Build(s);

        if (imbueWcids.Contains(wcid) && s.EnableDefaultImbueFailureWorkmanship)
        {
            player.TryConsumeFromInventoryWithNetworking(wcid, 1);
            int currentInt = GetWorkmanship(target);
            if (currentInt < ImbueFailureWorkmanshipCap)
            {
                SetWorkmanship(target, currentInt + 1);
                player.Session?.Network?.EnqueueSend(new GameMessageSystemChat($"Your imbue attempt failed, but the {target.NameWithMaterial} gains a point of workmanship.", ChatMessageType.Craft));
                ModManager.Log($"[Overtinked] Imbue failure Workmanship: {player.Name} +1 Workmanship on {target.Guid} (now {currentInt + 1}).");
            }
            else
            {
                player.Session?.Network?.EnqueueSend(new GameMessageSystemChat($"Your imbue attempt failed. The {target.NameWithMaterial} is already at maximum workmanship.", ChatMessageType.Craft));
            }
            target.SetProperty(PropertyInt.NumTimesTinkered, numTimesTinkered);
            return false;
        }

        SalvageTinkerRule? rule = SalvageEffectApplier.GetRule(s, wcid);
        if (rule == null || !s.EnableFailureRedesign)
            return true;

        player.TryConsumeFromInventoryWithNetworking(wcid, 1);
        int magnitude = rule.FixedValue ?? (rule.MinValue + rule.MaxValue) / 2;
        if (SalvageEffectApplier.ApplyEffect(target, rule, magnitude, isFailure: true))
        {
            string desc = SalvageEffectApplier.GetEffectDescription(rule, magnitude, isFailure: true);
            if (!string.IsNullOrEmpty(desc))
                player.Session?.Network?.EnqueueSend(new GameMessageSystemChat($"Your tinkering failed! The {target.NameWithMaterial} was damaged: {desc}.", ChatMessageType.Craft));
            else
                player.Session?.Network?.EnqueueSend(new GameMessageSystemChat($"Your tinkering failed! The {target.NameWithMaterial} is now slightly worse.", ChatMessageType.Craft));
            ModManager.Log($"[Overtinked] Failure redesign: {player.Name} applied opposite {rule.EffectKind} -{magnitude} on {target.Guid}");
        }
        target.SetProperty(PropertyInt.NumTimesTinkered, numTimesTinkered);

        return false;
    }

    private static bool TryApplyBuffedImbue(Settings s, uint wcid, WorldObject target, Player? player)
    {
        if (s.BuffedImbueRules == null)
            return false;
        BuffedImbueRule? buffed = s.BuffedImbueRules.FirstOrDefault(r => r.Enabled && r.Wcids != null && r.Wcids.Contains(wcid));
        if (buffed == null)
            return false;
        int primaryMin = buffed.PrimaryMin;
        int primaryMax = buffed.PrimaryMax;
        if (primaryMin > primaryMax)
            (primaryMin, primaryMax) = (primaryMax, primaryMin);
        int rolled = primaryMin == primaryMax ? primaryMin : Random.Shared.Next(primaryMin, primaryMax + 1);
        string stat = buffed.PrimaryStat ?? "";
        if (string.IsNullOrEmpty(stat))
            return false;
        // Map friendly names to ACE PropertyInt (exact name depends on server; adjust if needed).
        string propName = stat switch { "MaxHealth" => "HealthCapacity", "MaxStamina" => "StaminaCapacity", "MaxMana" => "ManaCapacity", _ => stat };
        if (Enum.TryParse<PropertyInt>(propName, ignoreCase: true, out var prop))
        {
            int current = target.GetProperty(prop) ?? 0;
            target.SetProperty(prop, current + rolled);
        }
        if (!string.IsNullOrEmpty(buffed.ImbuedEffectTypeName) && Enum.TryParse<ImbuedEffectType>(buffed.ImbuedEffectTypeName, ignoreCase: true, out var effectType))
            target.ImbuedEffect |= effectType;
        if (!string.IsNullOrEmpty(buffed.SecondaryStat) && buffed.SecondaryValue > 0)
            BuffedJewelrySecondaryStore.Add(target.Guid.Full, buffed.SecondaryStat, buffed.SecondaryValue);
        if (s.ShowPlayerSalvageMessage && player != null)
            player.SendMessage($"Your {target.NameWithMaterial}: {buffed.PrimaryStat} +{rolled}.");
        return true;
    }

    // Postfix: add Damage Rating from buffed jewelry secondary (e.g. 5% of MaxStamina or MaxMana per equipped item).
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GetDamageRating), new Type[] { typeof(int) })]
    public static void PostGetDamageRating(Creature __instance, int damageRating, ref float __result)
    {
        if (__instance?.EquippedObjects == null)
            return;
        double bonusRating = 0;
        foreach (WorldObject item in __instance.EquippedObjects.Values)
        {
            var entry = BuffedJewelrySecondaryStore.Get(item.Guid.Full);
            if (entry == null)
                continue;
            string stat = entry.Value.Stat;
            double pct = entry.Value.Percent / 100.0;
            if (string.Equals(stat, "DamageRatingFromStamina", StringComparison.OrdinalIgnoreCase))
                bonusRating += pct * __instance.Stamina.MaxValue;
            else if (string.Equals(stat, "DamageRatingFromMana", StringComparison.OrdinalIgnoreCase))
                bonusRating += pct * __instance.Mana.MaxValue;
        }
        if (bonusRating <= 0)
            return;
        __result *= (float)(1.0 + bonusRating / 100.0);
    }

    // Quest-item tagging properties (use IDs above 40000 to avoid collisions).
    internal static readonly PropertyBool QuestGrowthItemBool = (PropertyBool)40100;
    private static readonly PropertyBool QuestItemInitializedBool = (PropertyBool)40101;
    private static readonly PropertyInt QuestItemCategoryInt = (PropertyInt)40102;
    // Tracks last item level for which Overtinked growth ran (catch-up / no double-apply). Use a dedicated id:
    // 40110 is reserved in-repo by Swarmed (as PropertyFloat on creatures); keep Int props off that slot to avoid confusion/imports.
    private static readonly PropertyInt OvertinkedLastAppliedItemLevelInt = (PropertyInt)40150;

    // Helper: run quest-item initialization for a newly created WorldObject.
    // Call from inventory creation postfixes with the receiving player so initial imbue/slayer/salvage grants send chat.
    public static void InitializeQuestWorldObject(WorldObject __result, Player? notifyPlayer = null)
    {
        if (__result == null)
            return;

        Settings? s = CurrentSettings;
        if (s == null)
            return;

        // Only operate on items that we consider to be quest items.
        if (!IsQuestItem(__result))
            return;

        // Ensure we only initialize a quest item once.
        bool? alreadyInit = __result.GetProperty(QuestItemInitializedBool);
        if (alreadyInit == true)
            return;

        __result.SetProperty(QuestItemInitializedBool, true);

        if (s.EnableQuestItemWorkmanship)
            InitializeQuestItemWorkmanship(__result, s);

        // Configure XP and max level before rolling initial salvage/imbue text that references ItemMaxLevel.
        if (s.EnableQuestItemLeveling)
            InitializeQuestItemXp(__result, s);

        if (s.EnableQuestItemInitialEffects)
            ApplyInitialQuestItemEffects(__result, s, notifyPlayer);
    }

    // Shared shape for quest init and loot ItemXp init: weapons, all clothing, or anything with a non-zero equip mask.
    private static bool IsEquippableShapeForOvertinkedInit(WorldObject item)
    {
        if (item == null)
            return false;

        WeenieType type = item.WeenieType;

        if (type == WeenieType.MeleeWeapon || type == WeenieType.MissileLauncher || type == WeenieType.Caster || type == WeenieType.Clothing)
            return true;

        EquipMask? validLoc = item.ValidLocations;
        return validLoc.HasValue && validLoc.Value != 0;
    }

    // Cloaks use stock ACE item-level / overlay behavior; skip Overtinked init.
    private static bool IsCloakItem(WorldObject item)
    {
        if (item == null)
            return false;

        EquipMask? loc = item.ValidLocations;
        if (loc.HasValue && (loc.Value & EquipMask.Cloak) != 0)
            return true;

        string name = item.Name ?? string.Empty;
        return name.Contains("cloak", StringComparison.OrdinalIgnoreCase);
    }

    // Central predicate for whether a WorldObject should be treated as a quest item.
    private static bool IsQuestItem(WorldObject item)
    {
        if (item == null)
            return false;

        // Never treat existing growth / leveled items as quest items to avoid double systems.
        if (item.HasItemLevel)
            return false;

        bool? growth = item.GetProperty(FakeBool.GrowthItem);
        if (growth == true)
            return false;

        if (IsCloakItem(item))
            return false;

        // Weenie templates often ship ItemBaseXp + ItemMaxLevel (e.g. 1 / 1) without being real rare loot.
        // HasItemLevel already excludes stock rare / item-level gear; do not also exclude stub stats here.

        return IsEquippableShapeForOvertinkedInit(item);
    }

    // PlayerFactory and other pre-login paths may have a Player before Session/Network exists; SendMessage NREs if called too early.
    private static bool CanSendPlayerChat(Player? player) =>
        player != null && player.Session?.Network != null;

    private static void InitializeQuestItemWorkmanship(WorldObject item, Settings s)
    {
        int current = GetWorkmanship(item);
        if (current > 0)
            return;

        int min = s.QuestItemWorkmanshipMin;
        int max = s.QuestItemWorkmanshipMax;
        if (min > max)
            (min, max) = (max, min);

        int rolled = min == max ? min : Random.Shared.Next(min, max + 1);
        if (rolled < 0)
            rolled = 0;

        SetWorkmanship(item, rolled);
    }

    private static void InitializeQuestItemXp(WorldObject item, Settings s)
    {
        if (item.HasItemLevel)
            return;

        // Avoid double-dipping with EmpyreanAlteration GrowthItem (FakeBool.GrowthItem) items.
        bool? isGrowthItem = item.GetProperty(FakeBool.GrowthItem);
        if (isGrowthItem == true)
            return;

        int tierForCap = s.QuestItemMaxLevelTier > 0 ? s.QuestItemMaxLevelTier : 1;
        ItemLevelingInit.ConfigureItemXp(item, s, tierForCap);
        item.ItemTotalXp = 0;

        // Tag as a quest-growth item and store a simple category hint by WeenieType.
        item.SetProperty(QuestGrowthItemBool, true);
        item.SetProperty(QuestItemCategoryInt, (int)item.WeenieType);
    }

    internal static void ApplyCatchUpGrowth(WorldObject item, int prevItemLevel, int currentLevel, bool questGrowth, Player player, Settings s)
    {
        // Failsafe: if XP jumps cause multiple levels, or if prior runs missed applying perks,
        // always apply perks for every level between (lastApplied+1) and currentLevel, in order.
        int lastApplied = item.GetProperty(OvertinkedLastAppliedItemLevelInt) ?? prevItemLevel;
        if (lastApplied < 0)
            lastApplied = 0;

        // Stale DB, other tooling, or a prior bug can leave lastApplied > currentLevel so start skips the whole loop.
        int? maxLv = item.ItemMaxLevel;
        if (lastApplied > currentLevel || (maxLv > 0 && lastApplied > maxLv.Value))
        {
            int? badStored = item.GetProperty(OvertinkedLastAppliedItemLevelInt);
            ModManager.Log(
                $"[Overtinked] Resetting last-applied item level tracker for {item.Name} ({item.WeenieClassId}): stored={badStored} prev={prevItemLevel} current={currentLevel} max={maxLv}",
                ModManager.LogLevel.Warn);
            lastApplied = prevItemLevel;
            item.RemoveProperty(OvertinkedLastAppliedItemLevelInt);
        }

        int start = Math.Max(prevItemLevel, lastApplied) + 1;
        if (start > currentLevel)
            return;

        int delta = currentLevel - prevItemLevel;
        // Only collapse chat when many levels land in one tick; delta==5 was too aggressive (no per-line detail).
        bool summarize = delta >= 12;
        var summary = summarize ? new ItemLevelingEngine.GrowthSummary() : null;

        for (int level = start; level <= currentLevel; level++)
        {
            ModManager.Log($"[Overtinked] OnItemLevelUp: {item.Name} ({item.WeenieClassId}) level {level}/{item.ItemMaxLevel} questGrowth={questGrowth}", ModManager.LogLevel.Info);

            if (questGrowth)
                ApplyQuestItemLevelUpEffect(item, level, player, s);

            bool applied = ItemLevelingEngine.ApplyLevelUp(item, player, level, s, emitMessages: !summarize, summary: summary, maxAttempts: 4);
            if (!applied)
            {
                ModManager.Log($"[Overtinked] No growth effect applied: {item.Name} ({item.WeenieClassId}) type={item.WeenieType} level {level}/{item.ItemMaxLevel}", ModManager.LogLevel.Warn);
            }
            if (summary != null)
                summary.LevelsApplied++;

            // Record progress even if effects were no-ops to prevent infinite retry loops.
            item.SetProperty(OvertinkedLastAppliedItemLevelInt, level);
        }

        if (summarize && summary != null && CanSendPlayerChat(player))
        {
            string msg = BuildCatchUpSummaryMessage(item, delta, summary);
            player.SendMessage(msg);
        }
    }

    private static string BuildCatchUpSummaryMessage(WorldObject item, int delta, ItemLevelingEngine.GrowthSummary summary)
    {
        List<string> parts = new();

        if (summary.Imbues.Count > 0)
        {
            string imbues = string.Join(", ", summary.Imbues
                .OrderByDescending(k => k.Value)
                .ThenBy(k => k.Key, StringComparer.OrdinalIgnoreCase)
                .Select(k => k.Value == 1 ? k.Key : $"{k.Value} {k.Key}"));
            parts.Add($"imbues ({imbues})");
        }

        if (summary.Salvage.Count > 0)
        {
            string salvage = string.Join(", ", summary.Salvage
                .OrderByDescending(k => k.Value.count)
                .ThenBy(k => k.Key, StringComparer.OrdinalIgnoreCase)
                .Select(k =>
                {
                    if (k.Value.count <= 1)
                        return $"{k.Key} ({k.Value.totalValue})";
                    return $"{k.Value.count} {k.Key} ({k.Value.totalValue} total)";
                }));
            parts.Add($"tinkers ({salvage})");
        }

        if (summary.Spells.Count > 0)
        {
            string spells = string.Join(", ", summary.Spells
                .OrderByDescending(k => k.Value)
                .ThenBy(k => k.Key, StringComparer.OrdinalIgnoreCase)
                .Select(k => k.Value == 1 ? k.Key : $"{k.Value}x {k.Key}"));
            parts.Add($"spells/cantrips ({spells})");
        }

        if (summary.DamageGained > 0)
            parts.Add($"+{summary.DamageGained} Damage");
        if (summary.ArmorLevelGained > 0)
            parts.Add($"+{summary.ArmorLevelGained} Armor Level");
        if (summary.MaxManaGained > 0)
            parts.Add($"+{summary.MaxManaGained} Max Mana");
        if (summary.ValueReductions > 0)
            parts.Add($"{summary.ValueReductions} value reductions");

        string tail = parts.Count > 0 ? string.Join("; ", parts) : "no changes (unexpected)";

        // Note: we intentionally avoid calling out "no effect" rolls unless everything truly failed.
        if (parts.Count == 0 && summary.NoEffectRolls > 0)
            tail = $"no changes after {summary.NoEffectRolls} attempts (unexpected)";

        return $"[Overtinked] {item.Name} leveled up {delta} times and gained {tail}.";
    }

    private static void ApplyQuestItemLevelUpEffect(WorldObject item, int level, Player player, Settings s)
    {
        QuestItemEffectSettings cfg = s.QuestItemEffects ?? new QuestItemEffectSettings();

        // For level-ups, slightly bias further toward imbues and slayer.
        int imbueWeight = (cfg.AllowStandardImbues || cfg.AllowCustomImbues) ? cfg.ImbueWeight + 1 : 0;
        int slayerWeight = cfg.AllowSlayer ? cfg.SlayerWeight + 1 : 0;
        int salvageWeight = cfg.AllowSalvageLikeBoosts ? cfg.SalvageWeight : 0;

        int totalWeight = Math.Max(0, imbueWeight) + Math.Max(0, slayerWeight) + Math.Max(0, salvageWeight);
        if (totalWeight == 0)
            return;

        int roll = Random.Shared.Next(0, totalWeight);

        bool applied = false;
        string effectKind = "None";
        string? detailLine = null;

        if (roll < imbueWeight)
        {
            applied = TryApplyInitialImbue(item, cfg, s);
            if (applied) effectKind = "Imbue";
        }
        else
        {
            roll -= imbueWeight;
            if (roll < slayerWeight)
            {
                applied = TryApplyInitialSlayer(item, out detailLine);
                if (applied) effectKind = "Slayer";
            }
            else
            {
                roll -= slayerWeight;
                if (roll < salvageWeight)
                {
                    applied = TryApplyInitialSalvageBoost(item, out detailLine);
                    effectKind = "StatBoost";
                }
            }
        }

        if (applied && CanSendPlayerChat(player))
            player.SendMessage(FormatQuestItemPerkMessage(item, level, effectKind, detailLine, isInitialGrant: false));
    }

    private static string FormatQuestItemPerkMessage(WorldObject item, int levelForText, string effectKind, string? detailLine, bool isInitialGrant)
    {
        int maxLv = item.ItemMaxLevel ?? 0;
        string head = maxLv > 0
            ? (isInitialGrant
                ? $"{item.NameWithMaterial} begins at level {levelForText}/{maxLv}"
                : $"{item.NameWithMaterial} has reached level {levelForText}/{maxLv}")
            : (isInitialGrant
                ? $"{item.NameWithMaterial} begins growing stronger"
                : $"{item.NameWithMaterial} grows stronger at level {levelForText}");

        return effectKind switch
        {
            "Imbue" => $"{head} and gains a new imbue.",
            "Slayer" => string.IsNullOrWhiteSpace(detailLine)
                ? $"{head} and gains a new slayer bonus."
                : $"{head} and now has {detailLine}.",
            "StatBoost" => string.IsNullOrWhiteSpace(detailLine)
                ? $"{head} and gains a small stat boost."
                : $"{head}: {detailLine}.",
            _ => $"{head}.",
        };
    }

    // Loot-growth item effects now delegated to ItemLevelingEngine.

    private static void ApplyInitialQuestItemEffects(WorldObject item, Settings s, Player? notifyPlayer)
    {
        QuestItemEffectSettings cfg = s.QuestItemEffects ?? new QuestItemEffectSettings();

        int imbueWeight = cfg.AllowStandardImbues || cfg.AllowCustomImbues ? cfg.ImbueWeight : 0;
        int slayerWeight = cfg.AllowSlayer ? cfg.SlayerWeight : 0;
        int salvageWeight = cfg.AllowSalvageLikeBoosts ? cfg.SalvageWeight : 0;

        int totalWeight = Math.Max(0, imbueWeight) + Math.Max(0, slayerWeight) + Math.Max(0, salvageWeight);
        if (totalWeight == 0)
            return;

        int roll = Random.Shared.Next(0, totalWeight);
        bool applied = false;
        string effectKind = "None";
        string? detailLine = null;

        if (roll < imbueWeight)
        {
            if (TryApplyInitialImbue(item, cfg, s))
            {
                applied = true;
                effectKind = "Imbue";
            }
            else
                roll -= imbueWeight;
        }
        else
            roll -= imbueWeight;

        if (!applied)
        {
            if (roll < slayerWeight)
            {
                if (TryApplyInitialSlayer(item, out detailLine))
                {
                    applied = true;
                    effectKind = "Slayer";
                }
                else
                    roll -= slayerWeight;
            }
            else
                roll -= slayerWeight;
        }

        if (!applied && roll < salvageWeight)
        {
            applied = TryApplyInitialSalvageBoost(item, out detailLine);
            if (applied)
                effectKind = "StatBoost";
        }

        if (applied && CanSendPlayerChat(notifyPlayer))
        {
            int displayLevel = Math.Max(1, item.ItemLevel ?? 0);
            notifyPlayer!.SendMessage(FormatQuestItemPerkMessage(item, displayLevel, effectKind, detailLine, isInitialGrant: true));
        }
    }

    private static bool TryApplyInitialImbue(WorldObject item, QuestItemEffectSettings cfg, Settings s)
    {
        int? damageTypeInt = item.GetProperty(PropertyInt.DamageType);
        DamageType damageType = damageTypeInt.HasValue ? (DamageType)damageTypeInt.Value : DamageType.Undef;

        ImbuedEffectType? chosen = damageType switch
        {
            DamageType.Acid => ImbuedEffectType.AcidRending,
            DamageType.Cold => ImbuedEffectType.ColdRending,
            DamageType.Electric => ImbuedEffectType.ElectricRending,
            DamageType.Fire => ImbuedEffectType.FireRending,
            DamageType.Pierce => ImbuedEffectType.PierceRending,
            DamageType.Slash => ImbuedEffectType.SlashRending,
            _ => null,
        };

        if (cfg.AllowStandardImbues && chosen.HasValue)
        {
            item.ImbuedEffect |= chosen.Value;
            return true;
        }

        if (cfg.AllowCustomImbues)
        {
            if (s.BleedImbue?.Enabled == true)
            {
                OvertinkedImbueStore.Add(item.Guid.Full, OvertinkedImbueFlags.Bleed);
                return true;
            }

            if (s.CleavingImbue?.Enabled == true)
            {
                OvertinkedImbueStore.Add(item.Guid.Full, OvertinkedImbueFlags.Cleaving);
                return true;
            }

            if (s.NetherRendingImbue?.Enabled == true)
            {
                OvertinkedImbueStore.Add(item.Guid.Full, OvertinkedImbueFlags.NetherRending);
                return true;
            }
        }

        return false;
    }

    private static bool TryApplyInitialSlayer(WorldObject item, out string? detailLine)
    {
        detailLine = null;

        // Simple default: only weapons roll slayer.
        if (item.WeenieType != WeenieType.MeleeWeapon && item.WeenieType != WeenieType.MissileLauncher && item.WeenieType != WeenieType.Caster)
            return false;

        CreatureType[] all = Enum.GetValues<CreatureType>();
        CreatureType[] pool = all.Where(x => x != CreatureType.Invalid && x != CreatureType.Unknown && x != CreatureType.Wall).ToArray();
        if (pool.Length == 0)
            return false;

        CreatureType chosen = pool[Random.Shared.Next(0, pool.Length)];

        item.SetProperty(PropertyInt.SlayerCreatureType, (int)chosen);
        item.SetProperty(PropertyFloat.SlayerDamageBonus, 1.0f);

        detailLine = $"Slayer vs {chosen}";
        return true;
    }

    private static bool TryApplyInitialSalvageBoost(WorldObject item, out string? effectDescription)
    {
        effectDescription = null;

        string kind = item.WeenieType switch
        {
            WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster => "Damage",
            WeenieType.Clothing => "ArmorLevel",
            _ => "ArmorLevel",
        };

        SalvageTinkerRule rule = new()
        {
            Enabled = true,
            EffectKind = kind,
            MinValue = 1,
            MaxValue = 2,
        };

        int value = SalvageEffectApplier.RollValue(rule);
        SalvageEffectApplier.ApplyEffect(item, rule, value, isFailure: false);
        effectDescription = SalvageEffectApplier.GetEffectDescription(rule, value, isFailure: false);
        if (string.IsNullOrWhiteSpace(effectDescription))
            effectDescription = $"gains a {kind} bonus (+{value})";

        return true;
    }

    private static int GetWorkmanship(WorldObject wo)
    {
        var t = Traverse.Create(wo).Property("Workmanship");
        if (!t.PropertyExists())
            return 0;
        object? v = t.GetValue();
        if (v is int i)
            return i;
        if (v is double d)
            return (int)d;
        if (v is float f)
            return (int)f;
        return 0;
    }

    private static void SetWorkmanship(WorldObject wo, int value)
    {
        var t = Traverse.Create(wo).Property("Workmanship");
        if (!t.PropertyExists())
            return;

        // ACE WorldObject.Workmanship is float?; reflection rejects int (see CharacterCreate / TryAddToInventory stack).
        float f = value;
        t.SetValue(f);
    }

    // Maps recipe mutation dataIds to ImbuedEffectType flags so we can set target.ImbuedEffect when the recipe applies an imbue.
    private static readonly Dictionary<uint, ImbuedEffectType> imbueDataIDs = new()
    {
        [0x38000038] = ImbuedEffectType.MeleeDefense,
        [0x38000039] = ImbuedEffectType.MissileDefense,
        [0x38000037] = ImbuedEffectType.MagicDefense,
        [0x38000025] = ImbuedEffectType.ArmorRending,
        [0x38000024] = ImbuedEffectType.CripplingBlow,
        [0x38000023] = ImbuedEffectType.CriticalStrike,
        [0x3800003A] = ImbuedEffectType.AcidRending,
        [0x3800003B] = ImbuedEffectType.BludgeonRending,
        [0x3800003C] = ImbuedEffectType.ColdRending,
        [0x3800003D] = ImbuedEffectType.ElectricRending,
        [0x3800003E] = ImbuedEffectType.FireRending,
        [0x3800003F] = ImbuedEffectType.PierceRending,
        [0x38000040] = ImbuedEffectType.SlashRending,
        [0x38000041] = ImbuedEffectType.Spellbook,
    };
}
