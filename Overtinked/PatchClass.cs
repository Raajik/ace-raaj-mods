using ACE.Database;
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

    // Set when PreTryMutate short-circuits TryMutate with success; cleared in PostHandleRecipe / failure paths.
    [ThreadStatic]
    static bool _tryMutateShortCircuitSuccess;

    // Last tinkering CreateDestroyItems success flag; reset at HandleRecipe entry (prefix First).
    static bool _tinkerCraftSuccessFromLastCreateDestroy;

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

    // Postfix: vanilla GetNewRecipe has no branch for Salvaged Yellow Garnet (21087); cookbook rarely lists custom weapon WCIDs. Supply a template tinkering recipe so GetRecipe succeeds; TryMutate still applies Hemorrhage from salvage WCID in PreTryMutate.
    [HarmonyPostfix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.GetRecipe), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject) })]
    public static void PostGetRecipeHemorrhage(Player player, WorldObject source, WorldObject target, ref Recipe __result)
    {
        if (__result != null || player == null || source == null || target == null)
            return;

        HemorrhageImbueConfig? hem = CurrentSettings?.HemorrhageImbue;
        if (hem?.Enabled != true || hem.SalvageWcids == null || hem.SalvageWcids.Length == 0)
            return;

        if (!hem.SalvageWcids.Contains(source.WeenieClassId))
            return;

        if (target.Workmanship == null)
            return;

        if (target.WeenieType != WeenieType.MeleeWeapon && target.WeenieType != WeenieType.MissileLauncher)
            return;

        uint rid = hem.BaseRecipeId;
        if (rid == 0)
            return;

        Recipe? cooked = DatabaseManager.World.GetCachedRecipe(rid);
        if (cooked == null)
        {
            ModManager.Log($"[Overtinked] Hemorrhage GetRecipe: BaseRecipeId {rid} not in world cache; cannot synthesize recipe.", ModManager.LogLevel.Warn);
            return;
        }

        __result = cooked;
    }

    // Postfix: same cookbook gap as Hemorrhage — supply template recipe when Shatter salvage has no GetRecipe match.
    [HarmonyPostfix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.GetRecipe), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject) })]
    public static void PostGetRecipeShatter(Player player, WorldObject source, WorldObject target, ref Recipe __result)
    {
        if (__result != null || player == null || source == null || target == null)
            return;

        ShatterImbueConfig? sh = CurrentSettings?.ShatterImbue;
        if (sh?.Enabled != true || sh.SalvageWcids == null || sh.SalvageWcids.Length == 0)
            return;

        if (!sh.SalvageWcids.Contains(source.WeenieClassId))
            return;

        if (target.Workmanship == null)
            return;

        if (target.WeenieType != WeenieType.MeleeWeapon && target.WeenieType != WeenieType.MissileLauncher)
            return;

        uint rid = sh.BaseRecipeId;
        if (rid == 0)
            return;

        Recipe? cooked = DatabaseManager.World.GetCachedRecipe(rid);
        if (cooked == null)
        {
            ModManager.Log($"[Overtinked] Shatter GetRecipe: BaseRecipeId {rid} not in world cache; cannot synthesize recipe.", ModManager.LogLevel.Warn);
            return;
        }

        __result = cooked;
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
    static bool PreTryMutateCore(Player player, WorldObject source, WorldObject target, Recipe recipe, uint dataId, ref bool __result, Action markTargetModified)
    {
        Settings? s = CurrentSettings;
        if (s == null)
            return true;

        _tryMutateShortCircuitSuccess = false;

        uint wcid = source.WeenieClassId;

        // 1) New imbues: Hemorrhage (e.g. Salvaged Yellow Garnet), Cleaving (Tiger Eye), Nether Rending (Onyx).
        if (TryApplyNewImbue(s, wcid, target))
        {
            RecipeManager.HandleTinkerLog(source, target);
            markTargetModified();
            if (s.ShowPlayerSalvageMessage)
                player.SendMessage($"You apply the imbue to your {target.NameWithMaterial}.");
            __result = true;
            _tryMutateShortCircuitSuccess = true;
            return false;
        }

        // 2) Custom salvage rule (random or fixed numeric effect).
        SalvageTinkerRule? rule = SalvageEffectApplier.GetRule(s, wcid);
        if (rule != null)
        {
            int value = SalvageEffectApplier.RollValue(rule);
            if (SalvageEffectApplier.ApplyEffect(target, rule, value, isFailure: false))
            {
                bool mergeIntoBroadcast = s.MergeSalvageTinkerEffectIntoBroadcast && s.ShowPlayerSalvageMessage;

                // Armor salvages (ArmorLevel + ArmorModVs*) apply all bane spells at once.
                // Weapon salvages use incremental bane spell upgrading.
                if (rule.EffectKind == "ArmorLevel" || rule.EffectKind.StartsWith("ArmorModVs"))
                    SalvageEffectApplier.ApplyFullBaneSpells(target, rule, player, quietPlayerBaneMessage: mergeIntoBroadcast);
                else
                    SalvageEffectApplier.ApplyBaneSpell(target, rule, player, quietPlayerBaneMessage: mergeIntoBroadcast);

                SalvageEffectApplier.EnsureManaPool(target);
                RecipeManager.HandleTinkerLog(source, target);
                if (mergeIntoBroadcast)
                {
                    string desc = SalvageEffectApplier.GetEffectDescription(rule, value, isFailure: false);
                    var parts = new List<string>();
                    if (!string.IsNullOrWhiteSpace(desc))
                        parts.Add(desc.TrimEnd('.'));
                    if (rule.BaneSpellIds != null && rule.BaneSpellIds.Length > 0)
                        parts.Add($"Bane x{rule.BaneSpellIds.Length}");
                    if (parts.Count > 0)
                        TinkerBroadcastSuffix.Set(string.Join(". ", parts));
                }
                else if (s.ShowPlayerSalvageMessage)
                {
                    string desc = SalvageEffectApplier.GetEffectDescription(rule, value, isFailure: false);
                    if (!string.IsNullOrEmpty(desc))
                        player.SendMessage($"Your {target.NameWithMaterial}: {desc}.", ChatMessageType.Craft);
                }
                ModManager.Log($"[Overtinked] {player?.Name} applied {rule.Name ?? wcid.ToString()} -> {rule.EffectKind} {value} on {target.Guid}", ModManager.LogLevel.Debug);
                markTargetModified();
                __result = true;
                _tryMutateShortCircuitSuccess = true;
                return false;
            }
        }

        // 3) Buffed jewelry imbue (Hematite HP, Malachite Stam, etc.).
        if (TryApplyBuffedImbue(s, wcid, target, player))
        {
            RecipeManager.HandleTinkerLog(source, target);
            markTargetModified();
            __result = true;
            _tryMutateShortCircuitSuccess = true;
            return false;
        }

        // 4) Standard imbue by dataId.
        if (!imbueDataIDs.TryGetValue(dataId, out var imbueEffect))
            return true;

        LesserImbueUpgrade.ApplyStrips(target, imbueEffect, s.EnableLesserImbueUpgradeToFull);

        if (RendingDamageTypes.ContainsKey(imbueEffect))
        {
            target.ImbuedEffect &= ~AllRendingFlags;
            // Also strip NetherRending from the custom 40133 bitmask. OvertinkedImbueStore.Get()
            // checks EITHER the 40133 bit OR ImbuedEffect.NetherRending, so clearing only
            // ImbuedEffect is not enough — Nether combat effects would still fire.
            OvertinkedImbueStore.ClearFlags(target, OvertinkedImbueFlags.NetherRending);
        }

        target.ImbuedEffect |= imbueEffect;
        if (RendingDamageTypes.TryGetValue(imbueEffect, out var rendDamageType))
        {
            target.SetProperty(PropertyInt.DamageType, (int)rendDamageType);
            ConvertBoltSpellsForDamageType(target, rendDamageType);
        }

        if (RecipeManager.incItemTinkered.Contains(dataId))
            RecipeManager.HandleTinkerLog(source, target);

        markTargetModified();
        __result = true;
        _tryMutateShortCircuitSuccess = true;
        return false;
    }

#if REALM
    [HarmonyPrefix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.TryMutate), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(uint), typeof(HashSet<ulong>) })]
    public static bool PreTryMutate(Player player, WorldObject source, WorldObject target, Recipe recipe, uint dataId, HashSet<ulong> modified, ref bool __result)
    {
        return PreTryMutateCore(player, source, target, recipe, dataId, ref __result, () =>
        {
            if (modified == null)
                ModManager.Log("[Overtinked] TryMutate: modified set is null (e.g. CreateDestroyItems aborted); HandleRecipe will skip UpdateObj.", ModManager.LogLevel.Error);
            else
                modified.Add(target.Guid.Full);
        });
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.TryMutate), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(uint), typeof(HashSet<ulong>) })]
    public static void PostTryMutate(Player player, WorldObject source, WorldObject target, Recipe recipe, uint dataId, HashSet<ulong> modified, ref bool __result)
    {
        if (!__result || target == null)
            return;

        HemorrhageWeaponVisual.ApplyIfHemorrhageWeapon(CurrentSettings, target);
    }
#else
    [HarmonyPrefix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.TryMutate), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(uint), typeof(HashSet<uint>) })]
    public static bool PreTryMutate(Player player, WorldObject source, WorldObject target, Recipe recipe, uint dataId, HashSet<uint> modified, ref bool __result)
    {
        return PreTryMutateCore(player, source, target, recipe, dataId, ref __result, () =>
        {
            if (modified == null)
                ModManager.Log("[Overtinked] TryMutate: modified set is null (e.g. CreateDestroyItems aborted); HandleRecipe will skip UpdateObj.", ModManager.LogLevel.Error);
            else
                modified.Add(target.Guid.Full);
        });
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.TryMutate), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(uint), typeof(HashSet<uint>) })]
    public static void PostTryMutate(Player player, WorldObject source, WorldObject target, Recipe recipe, uint dataId, HashSet<uint> modified, ref bool __result)
    {
        if (!__result || target == null)
            return;

        HemorrhageWeaponVisual.ApplyIfHemorrhageWeapon(CurrentSettings, target);
    }
#endif

    private static bool TryApplyNewImbue(Settings s, uint wcid, WorldObject target)
    {
        HemorrhageImbueConfig? hem = s.HemorrhageImbue;
        if (hem?.Enabled == true && hem.SalvageWcids != null && hem.SalvageWcids.Contains(wcid))
        {
            // Hemorrhage is custom (40133). Do not strip existing ImbuedEffect rend bits (e.g. Bludgeon Rending); gameplay and appraisal use them.
            // Fire-only glow + CB underlay: HemorrhageWeaponVisual / HemorrhageWeaponVisualReassert.
            if (!OvertinkedImbueStore.TryAddCustomTier(target, OvertinkedImbueFlags.Hemorrhage, out _))
                return false;
            HemorrhageWeaponVisual.ApplyIfHemorrhageWeapon(s, target);
            return true;
        }
        if (s.CleavingImbue?.Enabled == true && s.CleavingImbue.SalvageWcids != null && s.CleavingImbue.SalvageWcids.Contains(wcid))
        {
            return OvertinkedImbueStore.TryAddCustomTier(target, OvertinkedImbueFlags.Cleaving, out _);
        }
        if (s.NetherRendingImbue?.Enabled == true && s.NetherRendingImbue.SalvageWcids != null && s.NetherRendingImbue.SalvageWcids.Contains(wcid))
        {
            target.ImbuedEffect &= ~AllRendingFlags;
            OvertinkedImbueStore.Add(target, OvertinkedImbueFlags.NetherRending);
            target.ImbuedEffect |= ImbuedEffectType.NetherRending;
            target.SetProperty(PropertyInt.DamageType, (int)DamageType.Nether);
            return true;
        }
        if (s.ShatterImbue?.Enabled == true && s.ShatterImbue.SalvageWcids != null && s.ShatterImbue.SalvageWcids.Contains(wcid))
        {
            return OvertinkedImbueStore.TryAddCustomTier(target, OvertinkedImbueFlags.Shatter, out _);
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

    // Clears per-HandleRecipe tinkering success latch before CreateDestroyItems (so early HandleRecipe returns do not reuse stale state).
    [HarmonyPrefix]
    [HarmonyPriority(Priority.First)]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.HandleRecipe), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(double) })]
    public static void PreHandleRecipeResetTinkerCraftSuccess(Player player, WorldObject source, WorldObject target, Recipe recipe, double successChance)
    {
        _tinkerCraftSuccessFromLastCreateDestroy = false;
        TinkerBroadcastSuffix.ClearPending();
    }

    // Imbue/salvage failure redesign runs only in PreCreateDestroyItemsTinkerFailure (after vanilla's single roll in HandleRecipe).
    // Do not prefix HandleRecipe with a second roll here — that made success rate chance^2 and felt like "only chaos fails".

    // Failure redesign skips vanilla fail-branch in CreateDestroyItems; refresh objdesc, broadcast, pack order.
    static void SyncTinkerTargetAfterOvertinkedFailure(Player player, WorldObject target)
    {
        if (player == null || target == null)
            return;

        target.CalculateObjDesc();
        CraftInventorySync.MirrorRecipeManagerUpdateObj(player, target);
    }

    // Shared imbue-fail body when vanilla HandleRecipe roll fails (PreCreateDestroyItemsTinkerFailure).
    static void ApplyImbueTinkerFailure(Player player, WorldObject source, WorldObject target, Settings s, uint wcid)
    {
        player.TryConsumeFromInventoryWithNetworking(wcid, 1);

        if (s.EnableFailureRedesign)
        {
            ChaosFailureEffects.ApplyContextualChaos(player, target, null, s, wcid);
            RecipeManager.HandleTinkerLog(source, target);
            SyncTinkerTargetAfterOvertinkedFailure(player, target);
        }
        else if (s.EnableDefaultImbueFailureWorkmanship)
        {
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
            SyncTinkerTargetAfterOvertinkedFailure(player, target);
        }
    }

    // When HandleRecipe's roll fails, vanilla CreateDestroyItems would run fail-branch (destroy target / wrong fail mods). Intercept and reuse redesign path.
#if REALM
    [HarmonyPrefix]
    [HarmonyPriority(Priority.First)]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.CreateDestroyItems), new Type[] { typeof(Player), typeof(Recipe), typeof(WorldObject), typeof(WorldObject), typeof(double), typeof(bool) })]
    public static bool PreCreateDestroyItemsTinkerFailure(Player player, Recipe recipe, WorldObject source, WorldObject target, double successChance, bool success, ref HashSet<ulong>? __result)
    {
        if (success || player == null || source == null || target == null || !recipe.IsTinkering())
            return true;

        Settings? s = CurrentSettings;
        if (s == null)
            return true;

        uint wcid = source.WeenieClassId;
        HashSet<uint> imbueWcids = ImbueSalvageWcids.Build(s);

        if (imbueWcids.Contains(wcid))
        {
            if (!s.EnableFailureRedesign && !s.EnableDefaultImbueFailureWorkmanship)
                return true;

            ApplyImbueTinkerFailure(player, source, target, s, wcid);
            __result = new HashSet<ulong> { (ulong)target.Guid.Full };
            _tryMutateShortCircuitSuccess = false;
            return false;
        }

        SalvageTinkerRule? rule = SalvageEffectApplier.GetRule(s, wcid);
        if (rule == null || !s.EnableFailureRedesign)
            return true;

        player.TryConsumeFromInventoryWithNetworking(wcid, 1);
        ChaosFailureEffects.ApplyContextualChaos(player, target, rule, s, wcid);
        RecipeManager.HandleTinkerLog(source, target);
        SyncTinkerTargetAfterOvertinkedFailure(player, target);
        __result = new HashSet<ulong> { (ulong)target.Guid.Full };
        _tryMutateShortCircuitSuccess = false;
        return false;
    }

    // Postfix: optional craft inventory diagnostics; safety net if successful tinkering returns modified without target (UpdateObj would skip).
    [HarmonyPostfix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.CreateDestroyItems), new Type[] { typeof(Player), typeof(Recipe), typeof(WorldObject), typeof(WorldObject), typeof(double), typeof(bool) })]
    public static void PostCreateDestroyItems(Player player, Recipe recipe, WorldObject source, WorldObject target, double successChance, bool success, HashSet<ulong>? __result)
    {
        if (recipe.IsTinkering())
            _tinkerCraftSuccessFromLastCreateDestroy = success;

        Settings? cfg = CurrentSettings;

        if (recipe.IsTinkering() && success && target != null && __result != null && !__result.Contains(target.Guid.Full))
        {
            ModManager.Log($"[Overtinked][CraftInventorySync] WARNING: tinkering success but target {target.Guid} missing from modified (recipe {recipe.Id}); running UpdateObj mirror so pack slot can sync.", ModManager.LogLevel.Warn);
            CraftInventorySync.MirrorRecipeManagerUpdateObj(player, target);
        }

        if (cfg?.DebugCraftInventorySync != true || !recipe.IsTinkering())
            return;

        bool inSet = __result?.Contains(target?.Guid.Full ?? 0) ?? false;
        string wield = target?.CurrentWieldedLocation?.ToString() ?? "null";
        bool inInv = target != null && player.FindObject(target.Guid.Full, Player.SearchLocations.MyInventory, out _, out _, out _) != null;
        ModManager.Log($"[Overtinked][CraftInventorySync] recipe={recipe.Id} success={success} modifiedNull={__result == null} modifiedCount={__result?.Count ?? -1} targetInModified={inSet} wieldedLoc={wield} targetInMyInventory={inInv} targetGuid={target?.Guid}", ModManager.LogLevel.Info);

        if (__result == null && success)
            ModManager.Log($"[Overtinked][CraftInventorySync] modified is null on tinkering success (recipe {recipe.Id}); HandleRecipe skips all UpdateObj. Check SuccessWCID/FailWCID weenie exists.", ModManager.LogLevel.Warn);
    }
#else
    [HarmonyPrefix]
    [HarmonyPriority(Priority.First)]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.CreateDestroyItems), new Type[] { typeof(Player), typeof(Recipe), typeof(WorldObject), typeof(WorldObject), typeof(double), typeof(bool) })]
    public static bool PreCreateDestroyItemsTinkerFailure(Player player, Recipe recipe, WorldObject source, WorldObject target, double successChance, bool success, ref HashSet<uint>? __result)
    {
        if (success || player == null || source == null || target == null || !recipe.IsTinkering())
            return true;

        Settings? s = CurrentSettings;
        if (s == null)
            return true;

        uint wcid = source.WeenieClassId;
        HashSet<uint> imbueWcids = ImbueSalvageWcids.Build(s);

        if (imbueWcids.Contains(wcid))
        {
            if (!s.EnableFailureRedesign && !s.EnableDefaultImbueFailureWorkmanship)
                return true;

            ApplyImbueTinkerFailure(player, source, target, s, wcid);
            __result = new HashSet<uint> { target.Guid.Full };
            _tryMutateShortCircuitSuccess = false;
            return false;
        }

        SalvageTinkerRule? rule = SalvageEffectApplier.GetRule(s, wcid);
        if (rule == null || !s.EnableFailureRedesign)
            return true;

        player.TryConsumeFromInventoryWithNetworking(wcid, 1);
        ChaosFailureEffects.ApplyContextualChaos(player, target, rule, s, wcid);
        RecipeManager.HandleTinkerLog(source, target);
        SyncTinkerTargetAfterOvertinkedFailure(player, target);
        __result = new HashSet<uint> { target.Guid.Full };
        _tryMutateShortCircuitSuccess = false;
        return false;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.CreateDestroyItems), new Type[] { typeof(Player), typeof(Recipe), typeof(WorldObject), typeof(WorldObject), typeof(double), typeof(bool) })]
    public static void PostCreateDestroyItems(Player player, Recipe recipe, WorldObject source, WorldObject target, double successChance, bool success, HashSet<uint>? __result)
    {
        if (recipe.IsTinkering())
            _tinkerCraftSuccessFromLastCreateDestroy = success;

        Settings? cfg = CurrentSettings;

        if (recipe.IsTinkering() && success && target != null && __result != null && !__result.Contains(target.Guid.Full))
        {
            ModManager.Log($"[Overtinked][CraftInventorySync] WARNING: tinkering success but target {target.Guid} missing from modified (recipe {recipe.Id}); running UpdateObj mirror so pack slot can sync.", ModManager.LogLevel.Warn);
            CraftInventorySync.MirrorRecipeManagerUpdateObj(player, target);
        }

        if (cfg?.DebugCraftInventorySync != true || !recipe.IsTinkering())
            return;

        bool inSet = __result?.Contains(target?.Guid.Full ?? 0) ?? false;
        string wield = target?.CurrentWieldedLocation?.ToString() ?? "null";
        bool inInv = target != null && player.FindObject(target.Guid.Full, Player.SearchLocations.MyInventory, out _, out _, out _) != null;
        ModManager.Log($"[Overtinked][CraftInventorySync] recipe={recipe.Id} success={success} modifiedNull={__result == null} modifiedCount={__result?.Count ?? -1} targetInModified={inSet} wieldedLoc={wield} targetInMyInventory={inInv} targetGuid={target?.Guid}", ModManager.LogLevel.Info);

        if (__result == null && success)
            ModManager.Log($"[Overtinked][CraftInventorySync] modified is null on tinkering success (recipe {recipe.Id}); HandleRecipe skips all UpdateObj. Check SuccessWCID/FailWCID weenie exists.", ModManager.LogLevel.Warn);
    }
#endif

    // Postfix: optional second UpdateObj mirror after Overtinked TryMutate short-circuit (operator toggle; see Settings).
    [HarmonyPostfix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.HandleRecipe), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject), typeof(Recipe), typeof(double) })]
    public static void PostHandleRecipe(Player player, WorldObject source, WorldObject target, Recipe recipe, double successChance)
    {
        Settings? cfg = CurrentSettings;
        try
        {
            if (cfg == null || !recipe.IsTinkering() || target == null || player == null)
                return;

            if (cfg.MirrorRecipeUpdateObjAfterOvertinkedShortCircuit && _tryMutateShortCircuitSuccess && _tinkerCraftSuccessFromLastCreateDestroy)
                CraftInventorySync.MirrorRecipeManagerUpdateObj(player, target);
        }
        finally
        {
            _tryMutateShortCircuitSuccess = false;
            TinkerBroadcastSuffix.ClearPending();
        }
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
        {
            ImbuedEffectType existing = target.ImbuedEffect;

            ImbuedEffectType[] rendingTier =
            {
                ImbuedEffectType.AcidRending,
                ImbuedEffectType.FireRending,
                ImbuedEffectType.ColdRending,
                ImbuedEffectType.ElectricRending,
                ImbuedEffectType.PierceRending,
                ImbuedEffectType.SlashRending,
                ImbuedEffectType.BludgeonRending,
                ImbuedEffectType.NetherRending,
            };

            ImbuedEffectType[] procTier =
            {
                ImbuedEffectType.ArmorRending,
                ImbuedEffectType.CriticalStrike,
                ImbuedEffectType.CripplingBlow,
            };

            if (existing.HasFlag(effectType))
            {
                ModManager.Log($"[Overtinked] Skipping {effectType} on {target.NameWithMaterial} - item already has this imbue", ModManager.LogLevel.Warn);
            }
            else if (rendingTier.Contains(effectType) && rendingTier.Any(e => existing.HasFlag(e)))
            {
                ModManager.Log($"[Overtinked] Skipping {effectType} on {target.NameWithMaterial} - item already has a rending-tier imbue", ModManager.LogLevel.Warn);
            }
            else if (procTier.Contains(effectType) && procTier.Any(e => existing.HasFlag(e)))
            {
                ModManager.Log($"[Overtinked] Skipping {effectType} on {target.NameWithMaterial} - item already has a proc-tier imbue", ModManager.LogLevel.Warn);
            }
            else
            {
                target.ImbuedEffect |= effectType;
            }
        }
        if (!string.IsNullOrEmpty(buffed.SecondaryStat) && buffed.SecondaryValue > 0)
            BuffedJewelrySecondaryStore.Add(target.Guid.Full, buffed.SecondaryStat, buffed.SecondaryValue);

        // Stamp the source WCID at PropertyInt 40136 so BetterSupportSkills can grant the
        // matching salvage when this jewelry is auto-salvaged. Only the last applied rule's
        // WCID is stored; items with multiple buffed imbue rules are not expected.
        target.SetProperty((PropertyInt)40136, (int)wcid);

        bool mergeJewelry = s.MergeSalvageTinkerEffectIntoBroadcast && s.ShowPlayerSalvageMessage;
        if (mergeJewelry)
            TinkerBroadcastSuffix.Set($"{buffed.PrimaryStat} +{rolled}");
        else if (s.ShowPlayerSalvageMessage && player != null)
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

    // Defense imbue: vanilla adds +1 effective defense per equipped piece with that imbue (count). When DefenseImbueBonus > 0, multiply that count (e.g. 5 => +5 per piece).
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GetDefenseImbues))]
    public static void PostGetDefenseImbues(Creature __instance, ImbuedEffectType imbuedEffectType, ref int __result)
    {
        int mult = CurrentSettings?.DefenseImbueBonus ?? 0;
        if (mult > 0 && __result > 0)
            __result *= mult;
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
