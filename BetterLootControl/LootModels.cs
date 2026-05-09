namespace SharedLoot;

// JSON shape for LootConfig.json (default beside Loremaster; BetterLootControl uses the same file).

// Minimum rarity floor for guaranteed-tier loot selection (used by hunt placement rewards).
public enum LootRarityFloor
{
    Any = 0,       // all categories eligible (common through extremely rare)
    Uncommon = 1,  // uncommon, rare, extremely rare
    Rare = 2,      // rare or extremely rare only
    ExtremelyRare = 3,
}

public class LootConfig
{
    // Salvage and gear each roll independently before the normal rarity chain.
    public double SalvageChance { get; set; } = 0.25;
    public double GearChance { get; set; } = 0.25;

    // Chance that a gear-pool item spawns pre-awakened (EmpyreanAlteration).
    // Most gear should be normal so players manually awaken with Coalesced Mana.
    public double GearPreAwakenedChance { get; set; } = 0.10;

    // Imbue salvage and foolproof imbue salvage each roll independently.
    public double ImbueSalvageChance { get; set; } = 0.25;
    public double FoolproofImbueSalvageChance { get; set; } = 0.05;

    // Rarity roll order matches LootRoller: extremely rare, then rare, then uncommon, remainder = common.
    public double ExtremelyRareChance { get; set; } = 0.0001;
    public double RareChance { get; set; } = 0.01;
    public double UncommonChance { get; set; } = 0.1;

    public LootCategory common { get; set; } = new();
    public LootCategory uncommon { get; set; } = new();
    public LootCategory rare { get; set; } = new();
    public LootCategory extremelyRare { get; set; } = new();
    public LootCategory salvage { get; set; } = new();
    public LootCategory imbueSalvage { get; set; } = new();
    public LootCategory foolproofImbueSalvage { get; set; } = new();
    public LootCategory gear { get; set; } = new();
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
    // When both are > 0, overrides stackSize and stackSizeChance with a random range.
    public int stackSizeMin { get; set; } = 0;
    public int stackSizeMax { get; set; } = 0;
}

// Weighted pool selection for one-shot bonus rolls (e.g. sale landblock corpse extras).
// Common dominates by default; rarer pools use small relative weights.
public sealed class BonusEventLootWeights
{
    public bool Enable { get; set; } = true;

    // Chance (0–1) to roll any bonus item at all before pool selection.
    public double ProcChance { get; set; } = 0.10;

    public double CommonWeight { get; set; } = 900;
    public double UncommonWeight { get; set; } = 70;
    public double RareWeight { get; set; } = 25;
    public double ExtremelyRareWeight { get; set; } = 3;
    public double SalvageWeight { get; set; } = 1;
    public double GearWeight { get; set; } = 0.5;
    public double ImbueSalvageWeight { get; set; } = 0.25;
    public double FoolproofImbueSalvageWeight { get; set; } = 0.1;
}
