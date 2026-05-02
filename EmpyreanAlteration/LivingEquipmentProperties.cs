using ACE.Entity.Enum.Properties;

namespace EmpyreanAlteration;

/// <summary>
/// Cross-mod property constants originally from LivingEquipment, now owned by EmpyreanAlteration.
/// These properties track whether an item has been "awakened" (granted item XP / leveling potential).
/// </summary>
internal static class LivingEquipmentProperties
{
    // Bool
    internal static readonly PropertyBool IsAwakened = (PropertyBool)40130;

    // Int
    internal static readonly PropertyInt AwakenedTier = (PropertyInt)40131; // highest tier ever applied (legacy, not used for cap math)
    internal static readonly PropertyInt PreImbuedCount = (PropertyInt)40132;
    internal static readonly PropertyInt CurveVersion = (PropertyInt)40133; // item-leveling curve version for auto-migration

    // Float
    internal static readonly PropertyFloat ProfileDivisor = (PropertyFloat)11035; // curve divisor stored on item
    internal static readonly PropertyFloat ProfilePower = (PropertyFloat)11036;   // curve power stored on item

    // String
    internal static readonly PropertyString OriginalName = (PropertyString)11033;
    internal static readonly PropertyString ProfileName = (PropertyString)11034;
}
