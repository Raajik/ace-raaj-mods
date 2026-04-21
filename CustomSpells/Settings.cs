namespace CustomSpells;

public class Settings
{
    public bool AutoloadSpreadsheet { get; set; } = false;
    public string Spreadsheet { get; set; } = Path.Combine(Mod.Instance.ModPath, "Spells.xlsx");

    public List<SpellCustomization> CustomSpells { get; set; } = new()
    {
    };

    public Dictionary<EquipmentSet, List<SetTier>> Sets { get; set; } = new()
    {
    };
}

public record struct SetTier(uint NumEquipped, List<SpellId> Spells);