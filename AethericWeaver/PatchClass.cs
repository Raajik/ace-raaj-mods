using System.Linq;
using ACE.Database;
using ACE.DatLoader.FileTypes;
using AethericWeaver;
using Ganss.Excel;

namespace AethericWeaver;

// Core patch class for AethericWeaver; applies spreadsheet-driven spell and set customizations
[HarmonyPatch]
public class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    public override void Start()
    {
        base.Start();
        Settings = SettingsContainer.Settings ?? new Settings();
        RefreshFakeSpellChainPatches();
    }

    public override async Task OnWorldOpen()
    {
        Settings = SettingsContainer.Settings ?? new Settings();
        RefreshFakeSpellChainPatches();

        if (Settings.InTesting)
        {
            ModManager.Log("AethericWeaver: InTesting is true — spell spreadsheet, CustomSpells, set overrides, and magic/foci Harmony hooks are inactive. Set InTesting to false in Settings.json when ready.");
            return;
        }

        SetupSpells();
    }

    public override void Stop()
    {
        try
        {
            ModC.Harmony.UnpatchCategory(nameof(FakeSpellChain));
        }
        catch (Exception ex)
        {
            ModManager.Log($"AethericWeaver: FakeSpellChain unpatch in Stop: {ex.Message}", ModManager.LogLevel.Warn);
        }

        base.Stop();
    }

    void RefreshFakeSpellChainPatches()
    {
        try
        {
            ModC.Harmony.UnpatchCategory(nameof(FakeSpellChain));
        }
        catch (Exception ex)
        {
            ModManager.Log($"AethericWeaver: FakeSpellChain unpatch in Refresh: {ex.Message}", ModManager.LogLevel.Warn);
        }

        if (Settings is null || Settings.InTesting || !Settings.EnableFakeSpellChain)
            return;

        ModC.Harmony.PatchCategory(nameof(FakeSpellChain));
    }

    // Applies spreadsheet overrides, inline CustomSpells, and equipment set overrides
    private static void SetupSpells()
    {
        if (Settings is null)
            return;

        if (Settings.AutoloadSpreadsheet)
            LoadSpellSpreadsheet();

        CustomizeSpells(Settings.CustomSpells);

        OverrideSpellSets();
    }

    // Applies a list of SpellCustomization entries into the dat and database spell tables
    private static void CustomizeSpells(List<SpellCustomization> customSpells)
    {
        foreach (var customSpell in customSpells)
        {
            //Get keys from SpellId, defaulting to overriding the template
            uint template = (uint)customSpell.Template;
            uint key = (uint)(customSpell.Id ?? customSpell.Template);

            try
            {
                //Get and verify spell copies
                var cachedSpell = DatabaseManager.World.GetCachedSpell(template);
                if (cachedSpell is null)
                    continue;

                var dbSpell = cachedSpell.Clone();
                var spellBase = new Spell(template)._spellBase.Clone();

                if (spellBase is null)
                    continue;

                customSpell.Apply(spellBase, dbSpell);

                //Set SpellBase - DatManager.PortalDat.SpellTable.Spells
                //if (!DatManager.PortalDat.SpellTable.Spells.ContainsKey(key))
                //    DatManager.PortalDat.SpellTable.Spells.Add(key, spellBase);
                //else
                DatManager.PortalDat.SpellTable.Spells[key] = spellBase;

                //Set DB Spell - DatabaseManager.World.spellCache / GetCachedSpell
                DatabaseManager.World.spellCache[key] = dbSpell;

                //ModManager.Log($"Customized Spell: {customSpell.Template} -> {customSpell.Id}");
            }
            catch (Exception)
            {
                ModManager.Log($"Failed to customized {customSpell.Template} -> {customSpell.Id}");
            }
        }
    }

    // Loads the configured spreadsheet and applies its customizations, optionally informing a player
    private static void LoadSpellSpreadsheet(Player? player = null)
    {
        if (Settings is null)
            return;

        var sw = Stopwatch.StartNew();
        var spells = SpellCustomization.ParseCustomizations();

        CustomizeSpells(spells);
        sw.Stop();

        var msg = $"Loaded {spells.Count} custom spells in {sw.ElapsedMilliseconds}ms from:\n{Settings.Spreadsheet}";
        ModManager.Log(msg);
        player?.SendMessage(msg);
    }

    // Replaces equipment set tiers with definitions from Settings.Sets
    private static void OverrideSpellSets()
    {
        if (Settings is null)
            return;

        try
        {
            foreach (var setOverride in Settings.Sets)
            {
                var key = (uint)setOverride.Key;

                //Add missing sets
                if (!DatManager.PortalDat.SpellTable.SpellSet.TryGetValue(key, out var datSet))
                {
                    datSet = new();
                    DatManager.PortalDat.SpellTable.SpellSet.Add(key, datSet);
                }

                var tierList = setOverride.Value;
                if (tierList is null || tierList.Count == 0)
                    continue;

                //Order overriding sets by tier
                var tiers = tierList.OrderBy(x => x.NumEquipped).ToList();
                var end = tiers.Max(x => x.NumEquipped);

                //Clear sets
                datSet.SpellSetTiers.Clear();
                datSet.SpellSetTiersNoGaps.Clear();
                datSet.HighestTier = end;

                foreach (var tier in tiers)
                {
                    //Make and add SpellSetTier
                    var spellIds = (tier.Spells ?? Enumerable.Empty<SpellId>()).Select(x => (uint)x).ToList();
                    SpellSetTiers sst = new() { Spells = spellIds };
                    datSet.SpellSetTiers.TryAdd(tier.NumEquipped, sst);
                }

                //Create the no-gaps list using ACE logic.  Could be improved
                SpellSetTiers? lastSpellSetTier = null;
                for (uint i = 0; i <= datSet.HighestTier; i++)
                {
                    if (datSet.SpellSetTiers.TryGetValue(i, out var spellSetTiers))
                        lastSpellSetTier = spellSetTiers;

                    if (lastSpellSetTier != null)
                        datSet.SpellSetTiersNoGaps.TryAdd(i, lastSpellSetTier);
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log(ex.Message, ModManager.LogLevel.Error);
            return;
        }

        ModManager.Log($"Replaced {Settings.Sets.Count} EquipmentSets with a combined {Settings.Sets.Sum(x => x.Value?.Count ?? 0)} tiers and {Settings.Sets.Sum(x => x.Value?.Sum(s => s.Spells?.Count ?? 0) ?? 0)} set spells");
    }
 

    [CommandHandler("loadspells", AccessLevel.Developer, CommandHandlerFlag.None)]
    public static void HandleLoadSpellSpreadsheet(Session session, params string[] parameters)
    {
        if (Settings is null || Settings.InTesting)
        {
            var msg = "AethericWeaver loadspells: disabled while InTesting is true in Settings.json.";
            ModManager.Log(msg);
            session?.Player?.SendMessage(msg);
            return;
        }

        LoadSpellSpreadsheet(session?.Player);
    }

    [CommandHandler("spelldump", AccessLevel.Developer, CommandHandlerFlag.ConsoleInvoke)]
    public static void HandleSpellDump(Session session, params string[] parameters)
    {
        List<SpellCustomization> sc = new();
        foreach (var spellId in Enum.GetValues<SpellId>())
        {
            var spell = new Spell(spellId);
            if (spell is null || spell._spellBase is null || spell._spell is null)
                continue;

            var custom = new SpellCustomization(spell);
            if (custom is null)
                continue;

            sc.Add(custom);
        }

        var modPath = Mod.Instance?.ModPath;
        if (string.IsNullOrWhiteSpace(modPath))
        {
            ModManager.Log("AethericWeaver spelldump: Mod.Instance.ModPath is unavailable.", ModManager.LogLevel.Warn);
            return;
        }

        var path = Path.Combine(modPath, "Dump.xlsx");

        ExcelMapper excel = new() { CreateMissingHeaders = true, IgnoreNestedTypes = true };
        excel.SetupCustomSpellMappings();
        excel.Save(path, sc, "Spells");

        var msg = $"Exported {sc.Count} spells to be customized to:\n{path}";
        ModManager.Log(msg);
    }

    [CommandHandler("listset", AccessLevel.Player, CommandHandlerFlag.None)]
    public static void HandleSS(Session session, params string[] parameters)
    {
        if (session?.Player is not Player p)
            return;

        var s = GetLastAppraisedObject(session);

        if (s is null || s.EquipmentSetId is null)
            return;

        if (!DatManager.PortalDat.SpellTable.SpellSet.TryGetValue((uint)s.EquipmentSetId, out var set))
            return;

        //ACE.Server.Entity.SpellSet loads from DatManager.PortalDat.SpellTable.SpellSet
        var sb = new StringBuilder($"\nEquipmentSet {s.EquipmentSetId}:");
        foreach (var tier in set.SpellSetTiersNoGaps)
        {
            sb.Append($"\nWearing >= {tier.Key}");
            foreach (var spellId in tier.Value.Spells)
            {
                Spell spell = new Spell(spellId);
                sb.Append($"\n  ({spellId}) {spell.Name}");
            }
        }
        p.SendMessage($"{sb}");
    }

    //[CommandHandler("setup-spells", AccessLevel.Developer, CommandHandlerFlag.None)]
    //public static void HandleSetupSpells(Session session, params string[] parameters)
    //{
    //    SetupSpells();
    //}

    //Lazy helper
    // Returns the last appraised WorldObject for the given session, if any
    public static WorldObject? GetLastAppraisedObject(Session session)
    {
        if (session?.Player is not Player player)
            return null;

        var targetID = player.RequestedAppraisalTarget;
        if (targetID == null)
        {
            return null;
        }

        var target = player.FindObject(targetID.Value, Player.SearchLocations.Everywhere, out _, out _, out _);
        if (target == null)
        {
            return null;
        }
        return target;
    }



    //[HarmonyPrefix]
    //[HarmonyPatch(typeof(Spell), nameof(Spell.GetMagicSkill))]
    //public static bool PreGetMagicSkill(ref Spell __instance, ref Skill __result)
    //{
    //    Debugger.Break();
    //    __result = __instance.School switch
    //    {
    //        MagicSchool.CreatureEnchantment => Skill.CreatureEnchantment,
    //        MagicSchool.WarMagic => Skill.WarMagic,
    //        MagicSchool.ItemEnchantment => Skill.ItemEnchantment,
    //        MagicSchool.LifeMagic => Skill.LifeMagic,
    //        MagicSchool.VoidMagic => Skill.VoidMagic,
    //        MagicSchool x when x <= (MagicSchool)Skill.Summoning => (Skill)x,
    //        _ => default,
    //    };

    //    return false;
    //}

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GetCreatureSkill), new Type[] { typeof(MagicSchool) })]
    public static bool PreGetCreatureSkill(MagicSchool skill, ref Creature __instance, ref CreatureSkill __result)
    {
        if (Settings is null || Settings.InTesting)
            return true;

        //if (__instance is Player player) 
        //    player.SendMessage($"Casting {player?.CurrentSpell?.Name} - {player.LastSuccessCast_School}");
        //Debugger.Break();

        switch (skill)
        {
            case MagicSchool.CreatureEnchantment:
                __result = __instance.GetCreatureSkill(Skill.CreatureEnchantment);
                return false;
            case MagicSchool.WarMagic:
                __result = __instance.GetCreatureSkill(Skill.WarMagic);
                return false;
            case MagicSchool.ItemEnchantment:
                __result = __instance.GetCreatureSkill(Skill.ItemEnchantment);
                return false;
            case MagicSchool.LifeMagic:
                __result = __instance.GetCreatureSkill(Skill.LifeMagic);
                return false;
            case MagicSchool.VoidMagic:
                __result = __instance.GetCreatureSkill(Skill.VoidMagic);
                return false;
            default:
                if (skill <= (MagicSchool)Skill.Summoning)
                {
                    __result = __instance.GetCreatureSkill((Skill)skill);
                    return false;
                }

                return true;
        }
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HasFoci), new Type[] { typeof(MagicSchool) })]
    public static bool PreHasFoci(MagicSchool school, ref Player __instance, ref bool __result)
    {
        if (Settings is null || Settings.InTesting)
            return true;

        // Infused magic augs waive the physical focus item for that school.
        if (school switch
            {
                MagicSchool.WarMagic => __instance.AugmentationInfusedWarMagic > 0,
                MagicSchool.LifeMagic => __instance.AugmentationInfusedLifeMagic > 0,
                MagicSchool.ItemEnchantment => __instance.AugmentationInfusedItemMagic > 0,
                MagicSchool.CreatureEnchantment => __instance.AugmentationInfusedCreatureMagic > 0,
                MagicSchool.VoidMagic => __instance.AugmentationInfusedVoidMagic > 0,
                _ => false,
            })
        {
            __result = true;
            return false;
        }

        if (Player.FociWCIDs.TryGetValue(school, out var wcid))
        {
            __result = __instance.Inventory.Values.FirstOrDefault(i => i.WeenieClassId == wcid) != null;
            return false;
        }

        return true;
    }

}

