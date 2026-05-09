namespace AchievementUnlocked;

internal static class AchievementProperties
{
    // Base IDs for achievement storage. Range 45000–49999 gives 5000 slots.
    // Each achievement index maps to Base + index for both FakeBool (unlocked) and FakeInt (progress).
    internal const int BaseFakeBoolId = 45000;
    internal const int BaseFakeIntId = 45000;
    internal const int MaxAchievementCount = 5000;

    // Decoupled progression counters (not tied to achievement index)
    internal const FakeInt LifetimeKills = (FakeInt)46000;
    internal const FakeInt CachedQuestCount = (FakeInt)46001;
}
