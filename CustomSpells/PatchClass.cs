using ACE.Database;
using ACE.DatLoader.FileTypes;
using Ganss.Excel;
using System.Diagnostics;

namespace CustomSpells;

[HarmonyPatch]
public class PatchClass : BasicPatch<Settings>
{
    public PatchClass() : this(null) { }
    public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName) { }

    public override async Task OnWorldOpen()
    {
        Settings = SettingsContainer.Settings;
        SpellCustomization.Settings = Settings;
        SetupSpells();
    }

    private static void SetupSpells()
    {
        if (Settings?.CustomSpells is null || Settings.CustomSpells.Count == 0)
        {
            ModManager.Log("[CustomSpells] No custom spells defined");
            return;
        }

        ModManager.Log($"[CustomSpells] Processing {Settings.CustomSpells.Count} custom spells...");

        if (Settings.AutoloadSpreadsheet)
            LoadSpellSpreadsheet();

        CustomizeSpells(Settings.CustomSpells);

        OverrideSpellSets();
    }

    private static void CustomizeSpells(List<SpellCustomization> customSpells)
    {
        var success = 0;
        var failed = 0;

        foreach (var customSpell in customSpells)
        {
            uint template = (uint)customSpell.Template;
            uint key = (uint)(customSpell.Id ?? customSpell.Template);

            try
            {
                var cachedSpell = DatabaseManager.World.GetCachedSpell(template);
                if (cachedSpell is null)
                {
                    ModManager.Log($"[CustomSpells] Template spell {template} not found, skipping");
                    failed++;
                    continue;
                }

                var dbSpell = cachedSpell.Clone();
                var spellBase = new Spell(template)._spellBase.Clone();

                if (dbSpell is null || spellBase is null)
                {
                    failed++;
                    continue;
                }

                customSpell.Apply(spellBase, dbSpell);

                DatManager.PortalDat.SpellTable.Spells[key] = spellBase;
                DatabaseManager.World.spellCache[key] = dbSpell;

                success++;
            }
            catch (Exception ex)
            {
                ModManager.Log($"[CustomSpells] Failed to customize {template} -> {key}: {ex.Message}");
                failed++;
            }
        }

        ModManager.Log($"[CustomSpells] Created/updated {success} spells, {failed} failed");
    }

    private static void LoadSpellSpreadsheet(Player player = null)
    {
        var sw = Stopwatch.StartNew();
        var spells = SpellCustomization.ParseCustomizations();

        CustomizeSpells(spells);
        sw.Stop();

        var msg = $"Loaded {spells.Count} custom spells in {sw.ElapsedMilliseconds}ms from:\n{Settings.Spreadsheet}";
        ModManager.Log($"[CustomSpells] {msg}");
        player?.SendMessage(msg);
    }

    private static void OverrideSpellSets()
    {
        if (Settings?.Sets is null || Settings.Sets.Count == 0)
            return;

        try
        {
            foreach (var setOverride in Settings.Sets)
            {
                var key = (uint)setOverride.Key;

                if (!DatManager.PortalDat.SpellTable.SpellSet.TryGetValue(key, out var datSet))
                {
                    datSet = new();
                    DatManager.PortalDat.SpellTable.SpellSet.Add(key, datSet);
                }

                var tiers = setOverride.Value.OrderBy(x => x.NumEquipped).ToList();
                var start = tiers.First().NumEquipped;
                var end = tiers.Last().NumEquipped;

                datSet.SpellSetTiers.Clear();
                datSet.SpellSetTiersNoGaps.Clear();
                datSet.HighestTier = end;

                foreach (var tier in tiers)
                {
                    SpellSetTiers sst = new() { Spells = tier.Spells.Select(x => (uint)x).ToList() };
                    datSet.SpellSetTiers.TryAdd(tier.NumEquipped, sst);
                }

                SpellSetTiers lastSpellSetTier = null;
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
            ModManager.Log($"[CustomSpells] Error overriding spell sets: {ex.Message}", ModManager.LogLevel.Error);
            return;
        }

        ModManager.Log($"[CustomSpells] Replaced {Settings.Sets.Count} EquipmentSets");
    }

    [CommandHandler("loadspells", AccessLevel.Developer, CommandHandlerFlag.None)]
    public static void HandleLoadSpellSpreadsheet(Session session, params string[] parameters)
    {
        LoadSpellSpreadsheet(session?.Player);
    }

    [CommandHandler("spelldump", AccessLevel.Developer, CommandHandlerFlag.ConsoleInvoke)]
    public static void HandleSpellDump(Session session, params string[] parameters)
    {
        var sc = new List<SpellCustomization>();
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

        var path = Path.Combine(Mod.Instance.ModPath, "Dump.xlsx");

        var excel = new ExcelMapper { CreateMissingHeaders = true, IgnoreNestedTypes = true };
        excel.SetupCustomSpellMappings();
        excel.Save(path, sc, "Spells");

        ModManager.Log($"[CustomSpells] Exported {sc.Count} spells to:\n{path}");
    }
}