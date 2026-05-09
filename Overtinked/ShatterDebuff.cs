namespace Overtinked;

// Shatter stacks + "broken" (max stacks) on creatures hit by Shatter weapons. Operator PropertyInt (not stock enum).
internal static class ShatterDebuff
{
    internal const int ShatterStacksPropertyInt = 40134;
    internal const int ShatterBrokenPropertyInt = 40135;

    private static readonly PropertyInt StackProp = (PropertyInt)ShatterStacksPropertyInt;
    private static readonly PropertyInt BrokenProp = (PropertyInt)ShatterBrokenPropertyInt;

    internal static int GetStacks(Creature creature)
    {
        return Math.Max(0, creature.GetProperty(StackProp) ?? 0);
    }

    internal static bool IsBroken(Creature creature)
    {
        return (creature.GetProperty(BrokenProp) ?? 0) != 0;
    }

    internal static void Clear(Creature creature)
    {
        if (creature == null)
            return;

        creature.RemoveProperty(StackProp);
        creature.RemoveProperty(BrokenProp);
    }

    internal static void OnHit(Creature victim, ShatterImbueConfig cfg)
    {
        if (victim == null || victim.IsDead)
            return;

        int stacks = GetStacks(victim);
        int add = Math.Max(0, cfg.StacksPerHit);
        int max = Math.Max(1, cfg.MaxStacks);
        int next = Math.Min(max, stacks + add);
        victim.SetProperty(StackProp, next);
        if (next >= max)
            victim.SetProperty(BrokenProp, 1);
    }
}
