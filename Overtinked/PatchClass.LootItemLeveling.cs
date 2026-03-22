namespace Overtinked;

// Quest / inventory init only; loot-time item XP init is owned by EmpyreanAlteration (e.g. LootGrowthItem) when used.
public partial class PatchClass
{
    internal static void RunItemInitAfterInventorySuccess(WorldObject item, Player player)
    {
        InitializeQuestWorldObject(item, player);
    }
}
