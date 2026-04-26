namespace AchievementUnlocked;

/// <summary>
/// DEPRECATED — Racial augments are now granted automatically to all characters on login
/// via Loremaster.AccountAugmentStore.GrantRacialAugments, with no level requirement.
/// This file is kept as a no-op placeholder to avoid breaking existing builds.
/// </summary>
public static class RespectingYourTime
{
    internal static void Initialize()
    {
        // No-op: augments are auto-granted on PlayerEnterWorld by Loremaster.
    }
}
