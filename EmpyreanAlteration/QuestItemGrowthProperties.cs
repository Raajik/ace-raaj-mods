namespace EmpyreanAlteration;

// Custom properties for quest-growth items (align with former Overtinked IDs for save compatibility).
public static class QuestItemGrowthProperties
{
    public static readonly PropertyBool QuestGrowthItemBool = (PropertyBool)40100;

    // EA quest XP configured once per item.
    public static readonly PropertyBool EAQuestItemLevelingInitBool = (PropertyBool)40106;

    // EA quest workmanship rolled once (same inventory init as quest XP); Overtinked skips duplicate rolls when this is set.
    public static readonly PropertyBool EAQuestItemWorkmanshipInitBool = (PropertyBool)40107;

    // One-shot: quest initial phantom growth (tier 1–K) was applied so we do not grant twice.
    public static readonly PropertyBool EAQuestRewardInitialBonusAppliedBool = (PropertyBool)40108;

    // Quest reward phantom tiers: organic level-ups use growth tier = offset + (displayLevel - 1) so bonuses match
    // leveled-up quality without consuming XP toward early display levels. Set to K after granting K phantom tiers.
    public static readonly PropertyInt QuestGrowthPhantomTierOffsetInt = (PropertyInt)40152;

    public static readonly PropertyInt QuestItemCategoryInt = (PropertyInt)40102;

    public static readonly PropertyInt QuestGrowthLastAppliedItemLevelInt = (PropertyInt)40150;

    // Treasure tier used for level-appropriate spell picks (set at quest XP init).
    public static readonly PropertyInt QuestGrowthTreasureTierInt = (PropertyInt)40151;
}
