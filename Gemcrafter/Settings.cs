namespace Gemcrafter;

public class Settings
{
	[JsonPropertyName("// Gemcrafter")]
	public string GemcrafterDoc { get; init; } = "Reading order: every // key is documentation; real settings follow in the same order. Toggles and lists through ExcludeTransferSpellNameContains.";

	[JsonPropertyName("// Enabled")]
	public string EnabledDoc { get; init; } = "Master switch for Gemcrafter patches and behavior.";
	public bool Enabled { get; set; } = false;

	[JsonPropertyName("// Verbose")]
	public string VerboseDoc { get; init; } = "Extra logging for diagnostics.";
	public bool Verbose { get; set; } = true;

	[JsonPropertyName("// EnableImmersiveUseHooks")]
	public string EnableImmersiveUseHooksDoc { get; init; } = "Immersive item-on-item UX (tool→gem, powder→equipment) via generic use handler. If patching fails, Gemcrafter falls back to /gemcrush and /gemapply.";
	public bool EnableImmersiveUseHooks { get; set; } = true;

	[JsonPropertyName("// EnableLootgenGemMagic")]
	public string EnableLootgenGemMagicDoc { get; init; } = "Lootgen gem behavior: roll spells onto qualifying gems.";
	public bool EnableLootgenGemMagic { get; set; } = true;

	[JsonPropertyName("// MinSpellsOnLootgenGem")]
	public string MinSpellsOnLootgenGemDoc { get; init; } = "Minimum spells on a lootgen-tinkering gem (first version often matches Max).";
	public int MinSpellsOnLootgenGem { get; set; } = 1;

	[JsonPropertyName("// MaxSpellsOnLootgenGem")]
	public string MaxSpellsOnLootgenGemDoc { get; init; } = "Maximum spells on a lootgen-tinkering gem.";
	public int MaxSpellsOnLootgenGem { get; set; } = 1;

	[JsonPropertyName("// GemWcidAllowlist")]
	public string GemWcidAllowlistDoc { get; init; } = "If non-empty, only these WCIDs count as lootgen tinkering gems. Empty = heuristic (ItemType.Gem + not already magical).";
	public List<uint> GemWcidAllowlist { get; set; } = new();

	[JsonPropertyName("// IncludeCantrips")]
	public string IncludeCantripsDoc { get; init; } = "Include cantrip-tier spells when building the spell pool.";
	public bool IncludeCantrips { get; set; } = true;

	[JsonPropertyName("// IncludePortalRecallSummonOnGems")]
	public string IncludePortalRecallSummonOnGemsDoc { get; init; } = "Allow portal/recall/summon-class spells in the gem pool; transfer can still exclude them separately.";
	public bool IncludePortalRecallSummonOnGems { get; set; } = true;

	[JsonPropertyName("// IncludeSpellNameContains")]
	public string IncludeSpellNameContainsDoc { get; init; } = "If non-empty, only spells whose names contain one of these substrings are candidates (pool filter).";
	public List<string> IncludeSpellNameContains { get; set; } = new();

	[JsonPropertyName("// ExcludeSpellNameContains")]
	public string ExcludeSpellNameContainsDoc { get; init; } = "Spell names containing any of these substrings are excluded from the pool (unless overridden by include rules).";
	public List<string> ExcludeSpellNameContains { get; set; } = new()
	{
		"Portal",
		"Summon",
		"Recall",
	};

	[JsonPropertyName("// CrusherToolWcid")]
	public string CrusherToolWcidDoc { get; init; } = "Mortar & Pestle (or crush tool) WCID for immersive crush flow; 0 until configured for your shard.";
	public uint CrusherToolWcid { get; set; } = 0;

	[JsonPropertyName("// InfusedPowderWcids")]
	public string InfusedPowderWcidsDoc { get; init; } = "Base-game powder WCIDs to treat as infused powder for apply flows.";
	public List<uint> InfusedPowderWcids { get; set; } = new();

	[JsonPropertyName("// TransferMaxSpellsPerApply")]
	public string TransferMaxSpellsPerApplyDoc { get; init; } = "Max spells moved from gem to equipment per apply.";
	public int TransferMaxSpellsPerApply { get; set; } = 1;

	[JsonPropertyName("// ExcludeTransferSpellNameContains")]
	public string ExcludeTransferSpellNameContainsDoc { get; init; } = "Spells whose names match these substrings are not transferred to equipment by default.";
	public List<string> ExcludeTransferSpellNameContains { get; set; } = new()
	{
		"Portal",
		"Summon",
		"Recall",
	};
}
