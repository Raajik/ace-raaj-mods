namespace EmpyreanAlteration;

// One-time workmanship roll alongside quest item XP init (Overtinked quest inventory hook skips if EAQuestItemWorkmanshipInitBool is set).
internal static class QuestItemWorkmanship
{
    internal static void TryRollOnceOnQuestXpInit(WorldObject item, Settings s)
    {
        if (item == null || s == null || !s.EnableQuestItemWorkmanship)
            return;

        if (item.GetProperty(QuestItemGrowthProperties.EAQuestItemWorkmanshipInitBool) == true)
            return;

        int current = GetWorkmanship(item);
        if (current > 0)
        {
            item.SetProperty(QuestItemGrowthProperties.EAQuestItemWorkmanshipInitBool, true);
            return;
        }

        int min = s.QuestItemWorkmanshipMin;
        int max = s.QuestItemWorkmanshipMax;
        if (min > max)
            (min, max) = (max, min);

        int rolled = min == max ? min : Random.Shared.Next(min, max + 1);
        if (rolled < 0)
            rolled = 0;

        SetWorkmanship(item, rolled);
        item.SetProperty(QuestItemGrowthProperties.EAQuestItemWorkmanshipInitBool, true);
    }

    private static int GetWorkmanship(WorldObject wo)
    {
        var t = Traverse.Create(wo).Property("Workmanship");
        if (!t.PropertyExists())
            return 0;
        object? v = t.GetValue();
        if (v is int i)
            return i;
        if (v is double d)
            return (int)d;
        if (v is float f)
            return (int)f;
        return 0;
    }

    private static void SetWorkmanship(WorldObject wo, int value)
    {
        var t = Traverse.Create(wo).Property("Workmanship");
        if (!t.PropertyExists())
            return;

        float f = value;
        t.SetValue(f);
    }
}
