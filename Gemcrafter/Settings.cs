namespace Gemcrafter;

public class Settings
{
	public bool Enabled { get; set; } = true;
	public bool Verbose { get; set; } = false;

	// Immersive item-on-item UX (tool->gem, powder->equipment) by patching generic use handler.
	// If patching fails on your ACE build, Gemcrafter will automatically fall back to /gemcrush and /gemapply commands.
	public bool EnableImmersiveUseHooks { get; set; } = true;

	// Lootgen gem behavior
	public bool EnableLootgenGemMagic { get; set; } = true;

	// First version: guarantee at least one spell; you can expand later to allow multi-roll.
	public int MinSpellsOnLootgenGem { get; set; } = 1;
	public int MaxSpellsOnLootgenGem { get; set; } = 1;

	// If set, only these WCIDs will be treated as lootgen tinkering gems.
	// Leave empty to use a conservative heuristic (ItemType.Gem + not already magical).
	public List<uint> GemWcidAllowlist { get; set; } = new();

	// Spell pool build
	public bool IncludeCantrips { get; set; } = true;

	// Allow these spells to appear on gems, but they are still excluded from transfer by default.
	public bool IncludePortalRecallSummonOnGems { get; set; } = true;

	// Name filters applied while building the pool from dat
	public List<string> IncludeSpellNameContains { get; set; } = new();
	public List<string> ExcludeSpellNameContains { get; set; } = new()
	{
		"Portal",
		"Summon",
		"Recall",
	};

	// Crush/apply
	public uint CrusherToolWcid { get; set; } = 0; // Configure to the Mortar & Pestle WCID on your shard.
	public List<uint> InfusedPowderWcids { get; set; } = new(); // One or more base-game powder WCIDs to reuse.

	public int TransferMaxSpellsPerApply { get; set; } = 1;

	// Portal/recall/summon are excluded from transfer by default.
	public List<string> ExcludeTransferSpellNameContains { get; set; } = new()
	{
		"Portal",
		"Summon",
		"Recall",
	};
}

