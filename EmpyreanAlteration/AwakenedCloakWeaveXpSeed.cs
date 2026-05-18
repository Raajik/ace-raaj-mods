namespace EmpyreanAlteration;

// ACE Cloak.RollProc returns false when ItemLevel < 1. Awakened cloaks start at ItemTotalXp 0, which maps to
// AwakenedItemAwakener.ComputeLevelFromTotalXp(...) == 0, so weave never rolls. Seed cumulative XP to the
// minimum that yields item level 1 on the profile curve (same math as ItemLevel getter / harmony patches).
internal static class AwakenedCloakWeaveXpSeed
{
    internal static void EnsureMinimumXpForWeave(WorldObject item, Settings settings)
    {
        if (item is null || settings is null)
            return;

        if (!Cloak.IsCloak(item))
            return;

        if (item.GetProperty(LivingEquipmentProperties.IsAwakened) != true)
            return;

        if (!Cloak.HasProcSpell(item) && !Cloak.HasDamageProc(item))
            return;

        long baseXp = item.GetProperty(PropertyInt64.ItemBaseXp) ?? 15;
        double divisor = item.GetProperty(LivingEquipmentProperties.ProfileDivisor) ?? 8.0;
        double power = item.GetProperty(LivingEquipmentProperties.ProfilePower) ?? 3.2;
        int maxLevel = item.ItemMaxLevel ?? settings.ItemLevelingCap;
        if (maxLevel < 1)
            maxLevel = 1;

        long totalPoints = item.GetProperty(PropertyInt64.ItemTotalXp) ?? 0;
        int level = AwakenedItemAwakener.ComputeLevelFromTotalXp(totalPoints, baseXp, divisor, power, maxLevel);
        if (level >= 1)
            return;

        ulong minTotal = AwakenedItemAwakener.ComputeTotalXpForLevel(1, baseXp, divisor, power, maxLevel);
        item.SetProperty(PropertyInt64.ItemTotalXp, (long)minTotal);
    }
}
