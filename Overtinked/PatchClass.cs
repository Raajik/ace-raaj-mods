using ACE.Database.Models.World;

namespace Overtinked;

// Overtinked: tinkering recipes only (limits, salvage rules, custom imbues). Item XP, quest/loot growth, and workmanship-on-first-add are EmpyreanAlteration.
// RecipeManager / Creature rating patches run only when Settings.RecipeManagerCategory is patched (see OnWorldOpen).
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
public partial class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    // Static reference for use in static patch methods (e.g. PreTryMutate).
    // Must be set from Start() as well as OnWorldOpen(): if the mod loads after the world is already up,
    // OnWorldOpen never runs and static patch paths would see null here.
    internal static Settings? CurrentSettings;

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

        RestoreTinkering();
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
        if ((cfg.HemorrhageImbue.SalvageWcids == null || cfg.HemorrhageImbue.SalvageWcids.Length == 0) && cfg.BleedImbueLegacy != null)
            cfg.HemorrhageImbue = cfg.BleedImbueLegacy;

        Settings = cfg;
        CurrentSettings = cfg;
        SalvageEffectApplier.BuildLookup(cfg);

    }

    // Snapshot of default TinkeringDifficulty; can be used to restore on shutdown.
    static readonly List<float> difficulty = RecipeManager.TinkeringDifficulty.ToList();

    // Per-item bonus to MaxTries (applied on top of Settings.MaxTries). Key = item Guid.Full.
    internal static readonly System.Collections.Concurrent.ConcurrentDictionary<uint, int> ItemMaxTriesBonus = new();

    internal static int GetEffectiveMaxTries(WorldObject obj, Settings settings)
    {
        int baseMax = settings.MaxTries - 1;
        int bonus = ItemMaxTriesBonus.GetValueOrDefault(obj.Guid.Full, 0);
        return baseMax + bonus;
    }

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
        // Extend well beyond vanilla table so overtinkering has meaningful difficulty.
        // Vanilla ACE has 30 entries; we extend to 60 so cap-expansion (up to 30)
        // and normal overtinkering both face escalating difficulty.
        int maxSupported = Math.Max(Settings.MaxTries + 30, 60);
        var toAdd = Math.Max(0, maxSupported - diffs);
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
                PropertyInt.NumTimesTinkered => comp.Compare(GetEffectiveMaxTries(obj, ov), value ?? 0, player, requirement.Message) ? __result : false,
                PropertyInt.ImbuedEffect => comp.Compare(ov.MaxImbueEffects - 1, EffectiveImbuedCount((uint)(value ?? 0)), player, requirement.Message) ? __result : false,
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

    // Prefix: custom salvage rules, new imbues (Hemorrhage/Cleaving/Nether), buffed jewelry, or standard imbue by dataId; otherwise run original.
    [HarmonyPrefix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.TryMutate), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(uint), typeof(HashSet<uint>) })]
    public static bool PreTryMutate(Player player, WorldObject source, WorldObject target, Recipe recipe, uint dataId, HashSet<uint> modified, ref bool __result)
    {
        Settings? s = CurrentSettings;
        if (s == null)
            return true;

        uint wcid = source.WeenieClassId;

        // 1) New imbues: Hemorrhage (e.g. Salvaged Ruby), Cleaving (Tiger Eye), Nether Rending (Onyx).
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
                // Armor salvages (ArmorLevel + ArmorModVs*) apply all bane spells at once.
                // Weapon salvages use incremental bane spell upgrading.
                if (rule.EffectKind == "ArmorLevel" || rule.EffectKind.StartsWith("ArmorModVs"))
                    SalvageEffectApplier.ApplyFullBaneSpells(target, rule, player);
                else
                    SalvageEffectApplier.ApplyBaneSpell(target, rule, player);

                SalvageEffectApplier.EnsureManaPool(target);
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

        LesserImbueUpgrade.ApplyStrips(target, imbueEffect, s.EnableLesserImbueUpgradeToFull);

        if (RendingDamageTypes.ContainsKey(imbueEffect))
            target.ImbuedEffect &= ~AllRendingFlags;

        target.ImbuedEffect |= imbueEffect;
        if (RendingDamageTypes.TryGetValue(imbueEffect, out var rendDamageType))
        {
            target.SetProperty(PropertyInt.DamageType, (int)rendDamageType);
            ConvertBoltSpellsForDamageType(target, rendDamageType);
        }

        if (RecipeManager.incItemTinkered.Contains(dataId))
            RecipeManager.HandleTinkerLog(source, target);

        __result = true;
        return false;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.TryMutate), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(uint), typeof(HashSet<uint>) })]
    public static void PostTryMutate(Player player, WorldObject source, WorldObject target, Recipe recipe, uint dataId, HashSet<uint> modified, ref bool __result)
    {
        if (!__result || target == null)
            return;

        HemorrhageWeaponVisual.ApplyIfHemorrhageWeapon(CurrentSettings, target);
    }

    private static bool TryApplyNewImbue(Settings s, uint wcid, WorldObject target)
    {
        HemorrhageImbueConfig? hem = s.HemorrhageImbue;
        if (hem?.Enabled == true && hem.SalvageWcids != null && hem.SalvageWcids.Contains(wcid))
        {
            OvertinkedImbueStore.Add(target.Guid.Full, OvertinkedImbueFlags.Hemorrhage);
            HemorrhageWeaponVisual.ApplyIfHemorrhageWeapon(s, target);
            return true;
        }
        if (s.CleavingImbue?.Enabled == true && s.CleavingImbue.SalvageWcids != null && s.CleavingImbue.SalvageWcids.Contains(wcid))
        {
            OvertinkedImbueStore.Add(target.Guid.Full, OvertinkedImbueFlags.Cleaving);
            return true;
        }
        if (s.NetherRendingImbue?.Enabled == true && s.NetherRendingImbue.SalvageWcids != null && s.NetherRendingImbue.SalvageWcids.Contains(wcid))
        {
            target.ImbuedEffect &= ~AllRendingFlags;
            OvertinkedImbueStore.Add(target.Guid.Full, OvertinkedImbueFlags.NetherRending);
            target.ImbuedEffect |= ImbuedEffectType.NetherRending;
            target.SetProperty(PropertyInt.DamageType, (int)DamageType.Nether);
            return true;
        }
        if (s.JewelryCleaveImbue?.Enabled == true && s.JewelryCleaveImbue.SalvageWcids != null && s.JewelryCleaveImbue.SalvageWcids.Contains(wcid))
        {
            // Only apply to jewelry items
            if ((target.ItemType & ItemType.Jewelry) != 0)
            {
                int bonus = Math.Max(1, s.JewelryCleaveImbue.BonusTargets);
                int existing = target.GetProperty(PropertyInt.Cleaving) ?? 0;
                target.SetProperty(PropertyInt.Cleaving, Math.Max(existing, 1 + bonus));
                return true;
            }
        }
        return false;
    }

    const int ImbueFailureWorkmanshipCap = 10;

    // Prefix: when a tinker fails, apply chaotic positive effects instead of destruction/damage.
    // Note: failures now increment NumTimesTinkered normally, but chaos effects can rewind it.
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

        uint wcid = source.WeenieClassId;
        HashSet<uint> imbueWcids = ImbueSalvageWcids.Build(s);

        // Imbue failures → contextual chaos (accidental success, bonus imbue, slayer, etc.)
        if (imbueWcids.Contains(wcid))
        {
            player.TryConsumeFromInventoryWithNetworking(wcid, 1);

            if (s.EnableFailureRedesign)
            {
                ChaosFailureEffects.ApplyContextualChaos(player, target, null, s, wcid);
                RecipeManager.HandleTinkerLog(source, target);
            }
            else if (s.EnableDefaultImbueFailureWorkmanship)
            {
                // Legacy: +1 workmanship
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
                RecipeManager.HandleTinkerLog(source, target);
            }
            return false;
        }

        SalvageTinkerRule? rule = SalvageEffectApplier.GetRule(s, wcid);
        if (rule == null || !s.EnableFailureRedesign)
            return true;

        player.TryConsumeFromInventoryWithNetworking(wcid, 1);

        // Phase 3: Context-aware chaotic positive failure effects
        ChaosFailureEffects.ApplyContextualChaos(player, target, rule, s, wcid);
        RecipeManager.HandleTinkerLog(source, target);

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

    // When a rending imbue changes the weapon's damage type, convert any existing bolt spells to the new element.
    private static void ConvertBoltSpellsForDamageType(WorldObject target, DamageType newType)
    {
        if (target.Biota?.PropertiesSpellBook == null || target.Biota.PropertiesSpellBook.Count == 0)
            return;

        var book = target.Biota.PropertiesSpellBook;
        var boltChains = new Dictionary<DamageType, int[]>
        {
            [DamageType.Fire]     = new[] { 27, 81, 82, 83, 84, 85, 2128, 4439 },
            [DamageType.Cold]     = new[] { 28, 70, 71, 72, 73, 74, 2136, 4447 },
            [DamageType.Electric] = new[] { 75, 76, 77, 78, 79, 80, 2140, 4451 },
            [DamageType.Bludgeon] = new[] { 64, 65, 66, 67, 68, 69, 2144, 4455 },
            [DamageType.Slash]    = new[] { 92, 93, 94, 95, 96, 97, 2146, 4457 },
            [DamageType.Pierce]   = new[] { 86, 87, 88, 89, 90, 91, 2132, 4443 },
            [DamageType.Acid]     = new[] { 58, 59, 60, 61, 62, 63, 2122, 4433 },
            [DamageType.Nether]   = new[] { 5349, 5350, 5351, 5352, 5353, 5354, 5355, 5356 },
        };

        if (!boltChains.TryGetValue(newType, out var newChain))
            return;

        var spellsToConvert = new List<(int oldId, int tier)>();
        foreach (int spellId in book.Keys.ToList())
        {
            foreach (var chain in boltChains.Values)
            {
                int tier = Array.IndexOf(chain, spellId);
                if (tier >= 0)
                {
                    spellsToConvert.Add((spellId, tier));
                    break;
                }
            }
        }

        foreach (var (oldId, tier) in spellsToConvert)
        {
            book.Remove(oldId);
            int newId = newChain[Math.Min(tier, newChain.Length - 1)];
            book[newId] = 1.0f;
        }
    }

    private static readonly ImbuedEffectType AllRendingFlags =
        ImbuedEffectType.AcidRending | ImbuedEffectType.BludgeonRending | ImbuedEffectType.ColdRending |
        ImbuedEffectType.ElectricRending | ImbuedEffectType.FireRending | ImbuedEffectType.NetherRending |
        ImbuedEffectType.PierceRending | ImbuedEffectType.SlashRending;

    // Rend-replace: one rend slot is "free" if target already has one (we replace, not stack).
    private static int EffectiveImbuedCount(uint imbuedEffect) =>
        BitOperations.PopCount(imbuedEffect) - ((imbuedEffect & (uint)AllRendingFlags) != 0 ? 1 : 0);

    // Rending imbue → matching DamageType (applied alongside ImbuedEffect so the weapon's damage type reflects the rend).
    private static readonly Dictionary<ImbuedEffectType, DamageType> RendingDamageTypes = new()
    {
        [ImbuedEffectType.AcidRending]     = DamageType.Acid,
        [ImbuedEffectType.BludgeonRending] = DamageType.Bludgeon,
        [ImbuedEffectType.ColdRending]     = DamageType.Cold,
        [ImbuedEffectType.ElectricRending] = DamageType.Electric,
        [ImbuedEffectType.FireRending]     = DamageType.Fire,
        [ImbuedEffectType.NetherRending]   = DamageType.Nether,
        [ImbuedEffectType.PierceRending]   = DamageType.Pierce,
        [ImbuedEffectType.SlashRending]    = DamageType.Slash,
    };

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
