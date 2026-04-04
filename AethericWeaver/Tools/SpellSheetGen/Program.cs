using System.Text;
using ACE.Entity.Enum;
using Ganss.Excel;

namespace AethericWeaver.Tools.SpellSheetGen;

// Standalone row shape: column names must match SpellCustomization for AethericWeaver load.
internal sealed class SheetRow
{
    public SpellId Template { get; set; }
    public uint Id { get; set; }
    public string? Name { get; set; }
    public float? StatModVal { get; set; }
    public uint? Power { get; set; }
    public uint? BaseMana { get; set; }
    public double? Duration { get; set; }
}

internal static class Program
{
    private static readonly double DurationIxSeconds = 7200;
    private static readonly double DurationXSeconds = 9000;

    // Incantation-tier beneficial skill buffs (mastery, expertise, sprint, etc.) — excludes *Ineptitude* / *Ignorance* debuffs.
    // ImpregnabilitySelf8 and MagicResistanceSelf8 are listed with attributes/armor block below, not here.
    private static readonly SpellId[] SkillBuffTemplates =
    {
        SpellId.AlchemyMasterySelf8,
        SpellId.ArcaneEnlightenmentSelf8,
        SpellId.ArmorExpertiseSelf8,
        SpellId.ArcanumSalvagingSelf8,
        SpellId.CookingMasterySelf8,
        SpellId.CreatureEnchantmentMasterySelf8,
        SpellId.CrossbowMasterySelf8,
        SpellId.DeceptionMasterySelf8,
        SpellId.DirtyFightingMasterySelf8,
        SpellId.DualWieldMasterySelf8,
        SpellId.FealtySelf8,
        SpellId.FinesseWeaponsMasterySelf8,
        SpellId.FletchingMasterySelf8,
        SpellId.GearcraftMasterySelf8,
        SpellId.HealingMasterySelf8,
        SpellId.HeavyWeaponsMasterySelf8,
        SpellId.ItemEnchantmentMasterySelf8,
        SpellId.ItemExpertiseSelf8,
        SpellId.JumpingMasterySelf8,
        SpellId.LeadershipMasterySelf8,
        SpellId.LifeMagicMasterySelf8,
        SpellId.LightWeaponsMasterySelf8,
        SpellId.LockpickMasterySelf8,
        SpellId.MaceMasterySelf8,
        SpellId.MagicItemExpertiseSelf8,
        SpellId.ManaMasterySelf8,
        SpellId.MissileWeaponsMasterySelf8,
        SpellId.RecklessnessMasterySelf8,
        SpellId.ShieldMasterySelf8,
        SpellId.SneakAttackMasterySelf8,
        SpellId.SpearMasterySelf8,
        SpellId.SprintSelf8,
        SpellId.StaffMasterySelf8,
        SpellId.SummoningMasterySelf8,
        SpellId.ThrownWeaponMasterySelf8,
        SpellId.TwoHandedMasterySelf8,
        SpellId.UnarmedCombatMasterySelf8,
        SpellId.VoidMagicMasterySelf8,
        SpellId.WarMagicMasterySelf8,
        SpellId.WeaponExpertiseSelf8,
    };

    private static int Main()
    {
        // net10.0 -> bin -> SpellSheetGen -> Tools -> AethericWeaver
        var modRoot = Path.GetFullPath(Path.Combine(AppContext.BaseDirectory, "..", "..", "..", "..", ".."));
        var outPath = Path.Combine(modRoot, "Spells.xlsx");

        var rows = BuildRows();
        var excel = new ExcelMapper { CreateMissingHeaders = true, IgnoreNestedTypes = true };
        excel.Save(outPath, rows, "Spells");

        Console.WriteLine($"Wrote {rows.Count} rows to {outPath}");
        return 0;
    }

    // "AlchemyMasterySelf8" -> "Alchemy Mastery Self" (for "… IX" / "… X" suffix)
    private static string DisplayNameFromTemplate(SpellId template)
    {
        var s = template.ToString();
        if (s.EndsWith("Self8", StringComparison.Ordinal))
            s = s[..^5];

        return PascalCaseToWords(s) + " Self";
    }

    private static string PascalCaseToWords(string pascal)
    {
        if (string.IsNullOrEmpty(pascal))
            return pascal;

        var sb = new StringBuilder();
        sb.Append(pascal[0]);
        for (var i = 1; i < pascal.Length; i++)
        {
            var c = pascal[i];
            if (char.IsUpper(c) && (char.IsLower(pascal[i - 1]) || (i + 1 < pascal.Length && char.IsLower(pascal[i + 1]))))
                sb.Append(' ');
            sb.Append(c);
        }

        return sb.ToString();
    }

    private static List<SheetRow> BuildRows()
    {
        uint id = 70001;
        var list = new List<SheetRow>();

        void AddAttrPair(SpellId template, string shortName)
        {
            list.Add(new SheetRow
            {
                Template = template,
                Id = id++,
                Name = $"{shortName} IX",
                StatModVal = 50,
                Power = 500,
                BaseMana = 90,
                Duration = DurationIxSeconds,
            });
            list.Add(new SheetRow
            {
                Template = template,
                Id = id++,
                Name = $"{shortName} X",
                StatModVal = 55,
                Power = 600,
                BaseMana = 100,
                Duration = DurationXSeconds,
            });
        }

        AddAttrPair(SpellId.StrengthSelf8, "Strength Self");
        AddAttrPair(SpellId.EnduranceSelf8, "Endurance Self");
        AddAttrPair(SpellId.CoordinationSelf8, "Coordination Self");
        AddAttrPair(SpellId.QuicknessSelf8, "Quickness Self");
        AddAttrPair(SpellId.FocusSelf8, "Focus Self");
        AddAttrPair(SpellId.WillpowerSelf8, "Willpower Self");

        void AddRatePair(SpellId template, string shortName)
        {
            list.Add(new SheetRow
            {
                Template = template,
                Id = id++,
                Name = $"{shortName} IX",
                StatModVal = 2.75f,
                Power = 500,
                BaseMana = 90,
                Duration = DurationIxSeconds,
            });
            list.Add(new SheetRow
            {
                Template = template,
                Id = id++,
                Name = $"{shortName} X",
                StatModVal = 3.05f,
                Power = 600,
                BaseMana = 100,
                Duration = DurationXSeconds,
            });
        }

        AddRatePair(SpellId.RegenerationSelf8, "Regeneration Self");
        AddRatePair(SpellId.RejuvenationSelf8, "Rejuvenation Self");
        AddRatePair(SpellId.ManaRenewalSelf8, "Mana Renewal Self");

        void AddArmorPair(SpellId template, string shortName)
        {
            list.Add(new SheetRow
            {
                Template = template,
                Id = id++,
                Name = $"{shortName} IX",
                StatModVal = 275,
                Power = 500,
                BaseMana = 90,
                Duration = DurationIxSeconds,
            });
            list.Add(new SheetRow
            {
                Template = template,
                Id = id++,
                Name = $"{shortName} X",
                StatModVal = 300,
                Power = 600,
                BaseMana = 100,
                Duration = DurationXSeconds,
            });
        }

        // Armor Self IX/X (level 9/10 armor buff — StatModVal follows +25/step from retail VII→VIII armor scaling)
        AddArmorPair(SpellId.ArmorSelf8, "Armor Self");
        AddAttrPair(SpellId.ImpregnabilitySelf8, "Impregnability Self");
        AddAttrPair(SpellId.MagicResistanceSelf8, "Magic Resistance Self");

        void AddProtPair(SpellId template, string shortName)
        {
            list.Add(new SheetRow
            {
                Template = template,
                Id = id++,
                Name = $"{shortName} IX",
                StatModVal = 0.35f,
                Power = 500,
                BaseMana = 90,
                Duration = DurationIxSeconds,
            });
            list.Add(new SheetRow
            {
                Template = template,
                Id = id++,
                Name = $"{shortName} X",
                StatModVal = 0.38f,
                Power = 600,
                BaseMana = 100,
                Duration = DurationXSeconds,
            });
        }

        AddProtPair(SpellId.AcidProtectionSelf8, "Acid Protection Self");
        AddProtPair(SpellId.BladeProtectionSelf8, "Blade Protection Self");
        AddProtPair(SpellId.BludgeonProtectionSelf8, "Bludgeon Protection Self");
        AddProtPair(SpellId.ColdProtectionSelf8, "Cold Protection Self");
        AddProtPair(SpellId.FireProtectionSelf8, "Fire Protection Self");
        AddProtPair(SpellId.LightningProtectionSelf8, "Lightning Protection Self");
        AddProtPair(SpellId.PiercingProtectionSelf8, "Piercing Protection Self");

        foreach (var template in SkillBuffTemplates)
            AddAttrPair(template, DisplayNameFromTemplate(template));

        const uint firstId = 70001;
        var expectedCount = list.Count;
        var lastId = firstId + (uint)expectedCount - 1;
        if (id != lastId + 1)
            throw new InvalidOperationException($"ID sequence broken: expected last {lastId}, next would be {id}");

        return list;
    }
}
