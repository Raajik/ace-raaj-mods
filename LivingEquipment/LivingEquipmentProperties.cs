using ACE.Entity.Enum.Properties;

namespace LivingEquipment;

internal static class LivingEquipmentProperties
{
    // Bool
    internal static readonly PropertyBool IsAwakened = (PropertyBool)40130;

    // Int
    internal static readonly PropertyInt AwakenedTier = (PropertyInt)40131; // 1=Lesser, 2=Greater, 3=Aetheric
    internal static readonly PropertyInt PreImbuedCount = (PropertyInt)40132;

    // String
    internal static readonly PropertyString OriginalName = (PropertyString)11033;
    internal static readonly PropertyString ProfileName = (PropertyString)11034;
}
