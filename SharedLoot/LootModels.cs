namespace SharedLoot;

// JSON shape for LootConfig.json (default beside Loremaster; BetterChestLoot uses the same file).

public class LootConfig
{
    // Rarity roll order matches LootRoller: extremely rare, then rare, then uncommon, remainder = common.
    public double ExtremelyRareChance { get; set; } = 0.0001;
    public double RareChance { get; set; } = 0.01;
    public double UncommonChance { get; set; } = 0.1;

    public LootCategory common { get; set; } = new();
    public LootCategory uncommon { get; set; } = new();
    public LootCategory rare { get; set; } = new();
    public LootCategory extremelyRare { get; set; } = new();
}

public class LootCategory
{
    public List<LootItem> items { get; set; } = new();
    public double stackSizeChance { get; set; }
}

public class LootItem
{
    public int wcid { get; set; }
    public string name { get; set; } = "";
    public int stackSize { get; set; } = 1;
}
