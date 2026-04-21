using Numbersmith.Patches;

namespace Numbersmith;

public class Settings
{
	[JsonPropertyName("// Numbersmith")]
	public string NumbersmithDoc { get; init; } = "Reading order: every // key is documentation; real settings follow in the same order. MaxLevel, Formulas (each entry: // PatchType, // Enabled, // Formula then values), Verbose, optional EmpyreanEchoes-style toggles.";

	[JsonPropertyName("// MaxLevel")]
	public string MaxLevelDoc { get; init; } = "Maximum character level Numbersmith uses when overriding ACE's XP curve. Does not change other mods' caps.";
	public uint MaxLevel { get; set; } = 275;

	[JsonPropertyName("// Formulas")]
	public string FormulasDoc { get; init; } = "Per-patch AngouriMath overrides. Each object: // keys first, then PatchType, Enabled, Formula. Variable names are documented in each patch class.";
	public List<AngouriPatchSettings> Formulas { get; set; } = new()
	{
		new(nameof(ArmorMod)),
		new(nameof(CripplingBlowImbueMod)),
		new(nameof(CriticalStrikeImbueMod)),
		new(nameof(ElementalRendingImbue)),
		new(nameof(GrantExperience), false),
		new(nameof(HealingDifficulty)),
		new(nameof(LevelCost), false),
		new(nameof(MagicWeaponCriticalChance)),
		new(nameof(MeleeArmorRending)),
		new(nameof(MeleeAttributeDamage)),
		new(nameof(MissileArmorRending)),
		new(nameof(MissileAttributeDamage), false),
		new(nameof(NetherRating), false),
		new(nameof(PlayerAccuracyMod)),
		new(nameof(PlayerPowerMod)),
		new(nameof(WeaponCriticalChance)),
		new(nameof(SkillChance)),
		new(nameof(PlayerTakeDamage)),
		new(nameof(PlayerTakeDamageOverTime)),
	};

	[JsonPropertyName("// Verbose")]
	public string VerboseDoc { get; init; } = "When true, logs which patches loaded and which formulas are active.";
	public bool Verbose { get; set; } = false;

	[JsonPropertyName("// EnableLifeMagicElementalMod")]
	public string EnableLifeMagicElementalModDoc { get; init; } = "Originally EmpyreanEchoes; Harmony categories still use these class names.";
	public bool EnableLifeMagicElementalMod { get; set; } = false;

	[JsonPropertyName("// EnableDamageOverTimeConversion")]
	public string EnableDamageOverTimeConversionDoc { get; init; } = "EmpyreanEchoes-style DoT conversion behavior when supported by patches.";
	public bool EnableDamageOverTimeConversion { get; set; } = false;
}
