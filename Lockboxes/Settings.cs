namespace Lockboxes;

public class Settings
{
    [JsonPropertyName("EnableRandomLootDrops")]
    public bool EnableRandomLootDrops { get; set; } = false;

    [JsonPropertyName("LootDropChance")]
    public double LootDropChance { get; set; } = 0.05;

    [JsonPropertyName("DropFromMonsters")]
    public bool DropFromMonsters { get; set; } = true;

    [JsonPropertyName("DropFromChests")]
    public bool DropFromChests { get; set; } = true;

    [JsonPropertyName("LootMinItems")]
    public int LootMinItems { get; set; } = 1;

    [JsonPropertyName("LootMaxItems")]
    public int LootMaxItems { get; set; } = 3;

    [JsonPropertyName("Tier1LootDropWeight")]
    public int Tier1LootDropWeight { get; set; } = 60;

    [JsonPropertyName("Tier2LootDropWeight")]
    public int Tier2LootDropWeight { get; set; } = 30;

    [JsonPropertyName("Tier3LootDropWeight")]
    public int Tier3LootDropWeight { get; set; } = 10;
}

public class LootItem
{
    [JsonPropertyName("wcid")]
    public int wcid { get; set; }

    [JsonPropertyName("name")]
    public string name { get; set; } = "";

    [JsonPropertyName("stackSize")]
    public int stackSize { get; set; } = 1;

    [JsonPropertyName("stackSizeMax")]
    public int stackSizeMax { get; set; } = 0;
}

public class LootCategory
{
    [JsonPropertyName("items")]
    public List<LootItem> items { get; set; } = new();

    [JsonPropertyName("stackSizeChance")]
    public double stackSizeChance { get; set; } = 0.2;
}

public class LootConfig
{
    [JsonPropertyName("common")]
    public LootCategory common { get; set; } = new();
}