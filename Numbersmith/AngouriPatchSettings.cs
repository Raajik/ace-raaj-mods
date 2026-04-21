using System.Reflection;

namespace Numbersmith;

public partial class AngouriPatchSettings
{
	//public PatchType Type { get; set; }

	[JsonPropertyName("// PatchType")]
	public string PatchTypeDoc { get; init; } = "Harmony patch class name under Numbersmith.Patches (e.g. ArmorMod). Must match a real AngouriMathPatch subclass.";

	[JsonPropertyName("// Enabled")]
	public string EnabledDoc { get; init; } = "When false, this formula patch is not registered at startup.";

	[JsonPropertyName("// Formula")]
	public string FormulaDoc { get; init; } = "AngouriMath expression; empty string uses the patch class default Formula after load.";

	public string PatchType { get; set; } = "";
	public bool Enabled { get; set; } = true;
	public string Formula { get; set; } = "";

	public AngouriPatchSettings()
	{
	}

	public AngouriPatchSettings(string patchType, bool enabled = true, string formula = "")
	{
		PatchType = patchType;
		Enabled = enabled;
		Formula = formula;
	}

	//public AngouriPatchSettings(PatchType type, bool enabled = true, string formula = "")
	//{
	//    Type = type;
	//    Enabled = enabled;
	//    Formula = formula;
	//}

	public AngouriMathPatch CreatePatch()
	{
		var fqtn = $"Numbersmith.Patches.{PatchType}";
		var type = Assembly.GetExecutingAssembly().GetType(fqtn);

		if (type is null)
			throw new InvalidOperationException($"Numbersmith: formula patch type '{fqtn}' not found. Check Settings.json Formulas[].PatchType spelling.");

		var patch = Activator.CreateInstance(type);
		if (patch is not AngouriMathPatch angouriPatch)
			throw new InvalidOperationException($"Numbersmith: type '{fqtn}' must inherit AngouriMathPatch.");

		//If the formula is missing from the settings use the default of the patch, otherwise set the patch's formula to the settings value
		if (string.IsNullOrWhiteSpace(Formula))
			Formula = angouriPatch.Formula;
		else
			angouriPatch.Formula = Formula;

		return angouriPatch;

		//AngouriMathPatch patch = Type switch
		//{
		//    PatchType.ArmorMod => new ArmorMod(),
		//    PatchType.CripplingBlowImbueMod => new CripplingBlowImbueMod(),
		//    PatchType.CriticalStrikeImbueMod => new CriticalStrikeImbueMod(),
		//    PatchType.ElementalRendingImbue => new ElementalRendingImbue(),
		//    PatchType.GrantExperience => new GrantExperience(),
		//    PatchType.HealingDifficulty => new HealingDifficulty(),
		//    PatchType.LevelCost => new LevelCost(),
		//    PatchType.MagicWeaponCriticalChance => new MagicWeaponCriticalChance(),
		//    PatchType.MeleeArmorRending => new MeleeArmorRending(),
		//    PatchType.MeleeAttributeDamage => new MeleeAttributeDamage(),
		//    PatchType.MissileArmorRending => new MissileArmorRending(),
		//    PatchType.MissileAttributeDamage => new MissileAttributeDamage(),
		//    PatchType.NetherRating => new NetherRating(),
		//    PatchType.PlayerAccuracyMod => new PlayerAccuracyMod(),
		//    PatchType.PlayerPowerMod => new PlayerPowerMod(),
		//    PatchType.WeaponCriticalChance => new WeaponCriticalChance(),
		//    _ => throw new NotImplementedException(),
		//};
	}
}

//public enum PatchType
//{
//    GrantExperience,
//    LevelCost,
//    MeleeAttributeDamage,
//    MissileAttributeDamage,
//    NetherRating,
//    PlayerAccuracyMod,
//    ArmorMod,
//    MissileArmorRending,
//    MeleeArmorRending,
//    CripplingBlowImbueMod,
//    CriticalStrikeImbueMod,
//    ElementalRendingImbue,
//    MagicWeaponCriticalChance,
//    WeaponCriticalChance,
//    PlayerPowerMod,
//    HealingDifficulty,
//}
