namespace SpellSiphon;

public class Settings
{
	[JsonPropertyName("// SpellSiphon")]
	public string SpellSiphonDoc { get; init; } = "Reading order: every // key is documentation; real settings follow in the same order.";

	[JsonPropertyName("// Enabled")]
	public string EnabledDoc { get; init; } = "Master switch for SpellSiphon patches and behavior.";
	public bool Enabled { get; set; } = true;

	[JsonPropertyName("// Verbose")]
	public string VerboseDoc { get; init; } = "Extra logging for diagnostics.";
	public bool Verbose { get; set; } = true;

	[JsonPropertyName("// EnableImmersiveUseHooks")]
	public string EnableImmersiveUseHooksDoc { get; init; } = "Immersive item-on-item UX (Spellsiphon on magical items, charged Spellsiphon on equipment/gems) via generic use handler.";
	public bool EnableImmersiveUseHooks { get; set; } = true;

	// Tool WCIDs
	[JsonPropertyName("// SpellsiphonToolWcid")]
	public string SpellsiphonToolWcidDoc { get; init; } = "WCID of the Spellsiphon extraction tool (stacks to 100).";
	public uint SpellsiphonToolWcid { get; set; } = 850200;

	[JsonPropertyName("// ManaLatticeWcid")]
	public string ManaLatticeWcidDoc { get; init; } = "WCID of the Mana Lattice — dedicated base for reusable buff gems.";
	public uint ManaLatticeWcid { get; set; } = 850201;

	// Success formula
	[JsonPropertyName("// BaseExtractionSuccessRate")]
	public string BaseExtractionSuccessRateDoc { get; init; } = "Base success rate (percent) for extraction. Default 33% to match tinkering imbue base chance.";
	public float BaseExtractionSuccessRate { get; set; } = 33f;

	[JsonPropertyName("// CharmedSmithBonus")]
	public string CharmedSmithBonusDoc { get; init; } = "Bonus success rate (percent) if player has Charmed Smith augment (29273).";
	public float CharmedSmithBonus { get; set; } = 5f;

	[JsonPropertyName("// MitBonusPerPoint")]
	public string MitBonusPerPointDoc { get; init; } = "Additional success rate per point of buffed Magic Item Tinkering skill. At 0.05% per point, 600 skill = +30%.";
	public float MitBonusPerPoint { get; set; } = 0.05f;

	[JsonPropertyName("// MaxSuccessRate")]
	public string MaxSuccessRateDoc { get; init; } = "Maximum possible success rate for extraction (hard cap).";
	public float MaxSuccessRate { get; set; } = 80f;

	// Extraction behavior
	[JsonPropertyName("// EnableAnyItemExtraction")]
	public string EnableAnyItemExtractionDoc { get; init; } = "Allow extracting spells from any spell-bearing item (not just gems).";
	public bool EnableAnyItemExtraction { get; set; } = true;

	[JsonPropertyName("// AllowAttunedAndBonded")]
	public string AllowAttunedAndBondedDoc { get; init; } = "Allow extracting spells from attuned and bonded items.";
	public bool AllowAttunedAndBonded { get; set; } = true;

	[JsonPropertyName("// SuccessSourceSurviveChance")]
	public string SuccessSourceSurviveChanceDoc { get; init; } = "Chance (percent) that the source item survives intact (spells stripped) on successful extraction.";
	public float SuccessSourceSurviveChance { get; set; } = 75f;

	[JsonPropertyName("// FailureStripChance")]
	public string FailureStripChanceDoc { get; init; } = "Chance (percent) that the source item is stripped of spells but survives on failed extraction. Otherwise it is destroyed.";
	public float FailureStripChance { get; set; } = 40f;

	// Application
	[JsonPropertyName("// ExcludeTransferSpellNameContains")]
	public string ExcludeTransferSpellNameContainsDoc { get; init; } = "Spells whose names match these substrings are not transferred to equipment. Leave empty to allow all spells.";
	public List<string> ExcludeTransferSpellNameContains { get; set; } = new();

	// Mana pool for newly spelled items
	[JsonPropertyName("// DefaultItemMaxMana")]
	public string DefaultItemMaxManaDoc { get; init; } = "Default maximum mana pool given to items that receive spells but previously had no mana pool.";
	public int DefaultItemMaxMana { get; set; } = 2000;

	[JsonPropertyName("// DefaultItemManaRegen")]
	public string DefaultItemManaRegenDoc { get; init; } = "Mana regeneration rate (points per second) for items that receive a default mana pool. 1/30 = 0.0333.";
	public float DefaultItemManaRegen { get; set; } = 0.0333f;

	// Loot generation (kept from original)
	[JsonPropertyName("// EnableLootgenGemMagic")]
	public string EnableLootgenGemMagicDoc { get; init; } = "Lootgen gem behavior: roll spells onto qualifying gems.";
	public bool EnableLootgenGemMagic { get; set; } = true;

	[JsonPropertyName("// MinSpellsOnLootgenGem")]
	public string MinSpellsOnLootgenGemDoc { get; init; } = "Minimum spells on a lootgen-tinkering gem.";
	public int MinSpellsOnLootgenGem { get; set; } = 1;

	[JsonPropertyName("// MaxSpellsOnLootgenGem")]
	public string MaxSpellsOnLootgenGemDoc { get; init; } = "Maximum spells on a lootgen-tinkering gem.";
	public int MaxSpellsOnLootgenGem { get; set; } = 1;

	[JsonPropertyName("// GemWcidAllowlist")]
	public string GemWcidAllowlistDoc { get; init; } = "If non-empty, only these WCIDs count as lootgen tinkering gems. Empty = heuristic.";
	public List<uint> GemWcidAllowlist { get; set; } = new();

	[JsonPropertyName("// IncludeCantrips")]
	public string IncludeCantripsDoc { get; init; } = "Include cantrip-tier spells when building the spell pool.";
	public bool IncludeCantrips { get; set; } = true;

	[JsonPropertyName("// IncludePortalRecallSummonOnGems")]
	public string IncludePortalRecallSummonOnGemsDoc { get; init; } = "Allow portal/recall/summon-class spells in the gem pool.";
	public bool IncludePortalRecallSummonOnGems { get; set; } = true;

	[JsonPropertyName("// IncludeSpellNameContains")]
	public string IncludeSpellNameContainsDoc { get; init; } = "If non-empty, only spells whose names contain one of these substrings are candidates.";
	public List<string> IncludeSpellNameContains { get; set; } = new();

	[JsonPropertyName("// ExcludeSpellNameContains")]
	public string ExcludeSpellNameContainsDoc { get; init; } = "Spell names containing any of these substrings are excluded from the pool.";
	public List<string> ExcludeSpellNameContains { get; set; } = new()
	{
		"Portal",
		"Summon",
		"Recall",
	};

	// Vendor integration
	[JsonPropertyName("// EnableVendorSales")]
	public string EnableVendorSalesDoc { get; init; } = "When true, SpellSiphon tools are sold at jewelers (vendors selling jewelry/gems).";
	public bool EnableVendorSales { get; set; } = true;

	[JsonPropertyName("// VendorPrice")]
	public string VendorPriceDoc { get; init; } = "Price in pyreals for the SpellSiphon tool at vendors.";
	public int VendorPrice { get; set; } = 250000;
}
