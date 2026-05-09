namespace AchievementUnlocked;

public class Settings
{
    [JsonPropertyName("// EnableAchievementFramework")]
    public string EnableAchievementFrameworkDoc { get; init; } = "Master switch. When false, no patches apply and the API returns defaults (no achievements unlocked, zero progress).";
    public bool EnableAchievementFramework { get; set; } = true;

    [JsonPropertyName("// EnableKillTracking")]
    public string EnableKillTrackingDoc { get; init; } = "Patch Creature.Die to evaluate KillCreature and KillAny achievements.";
    public bool EnableKillTracking { get; set; } = true;

    [JsonPropertyName("// EnableQuestTracking")]
    public string EnableQuestTrackingDoc { get; init; } = "Patch QuestManager.Update to evaluate CompleteQuest achievements.";
    public bool EnableQuestTracking { get; set; } = true;

    [JsonPropertyName("// EnableLevelTracking")]
    public string EnableLevelTrackingDoc { get; init; } = "Patch Player.GrantXP to evaluate ReachLevel achievements after XP is applied.";
    public bool EnableLevelTracking { get; set; } = true;

    [JsonPropertyName("// EnableSkillTracking")]
    public string EnableSkillTrackingDoc { get; init; } = "Patch Player.SetSkillLevel to evaluate ReachSkill achievements.";
    public bool EnableSkillTracking { get; set; } = true;

    [JsonPropertyName("// EnablePropertyTracking")]
    public string EnablePropertyTrackingDoc { get; init; } = "Patch WorldObject.UpdateProperty to evaluate ReachPropertyInt and ReachPropertyFloat achievements.";
    public bool EnablePropertyTracking { get; set; } = true;

    [JsonPropertyName("// BaseFakeBoolId")]
    public string BaseFakeBoolIdDoc { get; init; } = "Starting FakeBool ID for unlock flags. Each achievement index maps to BaseFakeBoolId + index. Must not overlap with other mods.";
    public int BaseFakeBoolId { get; set; } = 45000;

    [JsonPropertyName("// BaseFakeIntId")]
    public string BaseFakeIntIdDoc { get; init; } = "Starting FakeInt ID for progress counters. Each achievement index maps to BaseFakeIntId + index.";
    public int BaseFakeIntId { get; set; } = 45000;

    [JsonPropertyName("// MaxAchievementCount")]
    public string MaxAchievementCountDoc { get; init; } = "Maximum number of achievements supported. FakeBool/FakeInt range must accommodate Base + Max.";
    public int MaxAchievementCount { get; set; } = 5000;

    [JsonPropertyName("// NotificationPrefix")]
    public string NotificationPrefixDoc { get; init; } = "Chat prefix for unlock notifications. Empty = no prefix.";
    public string NotificationPrefix { get; set; } = "[AchievementUnlocked]";

    [JsonPropertyName("// NotifyOnUnlock")]
    public string NotifyOnUnlockDoc { get; init; } = "When true, send a system chat message to the player on unlock. Individual achievements can override with their Notify field.";
    public bool NotifyOnUnlock { get; set; } = true;

    [JsonPropertyName("// BroadcastOnUnlock")]
    public string BroadcastOnUnlockDoc { get; init; } = "When true, broadcast the unlock message to all players.";
    public bool BroadcastOnUnlock { get; set; } = true;

    [JsonPropertyName("// AllowAdminCommands")]
    public string AllowAdminCommandsDoc { get; init; } = "When true, register /achievementadmin commands for granting, revoking, and inspecting achievements.";
    public bool AllowAdminCommands { get; set; } = true;

    [JsonPropertyName("// LoremasterTierThresholds")]
    public string LoremasterTierThresholdsDoc { get; init; } = "Ordered list of progress-point thresholds that unlock Tier 1, 2, 3, 4 for Loremaster-style ReachProgressPoints achievements. Progress points = uniqueQuestCount + floor(totalKills / KillsPerQuestEquivalent).";
    public List<int> LoremasterTierThresholds { get; set; } = new() { 50, 150, 300, 500 };

    [JsonPropertyName("// KillsPerQuestEquivalent")]
    public string KillsPerQuestEquivalentDoc { get; init; } = "How many total creature kills equals one progress point for ReachProgressPoints calculations. Default 100.";
    public int KillsPerQuestEquivalent { get; set; } = 100;

    [JsonPropertyName("// EnableActivityTelemetry")]
    public string EnableActivityTelemetryDoc { get; init; } = "When true, emit AchievementUnlocked-prefixed Info logs for operator dashboards (kills, quests, unlocks, daily rollup).";
    public bool EnableActivityTelemetry { get; set; } = true;

    [JsonPropertyName("// LogKillHooks")]
    public string LogKillHooksDoc { get; init; } = "Log each kill after LifetimeKills increments (one line per valid player kill).";
    public bool LogKillHooks { get; set; } = true;

    [JsonPropertyName("// LogKillAchievementProgress")]
    public string LogKillAchievementProgressDoc { get; init; } = "Log each time a KillAny/KillCreature achievement counter increments.";
    public bool LogKillAchievementProgress { get; set; } = true;

    [JsonPropertyName("// LogQuestManagerUpdates")]
    public string LogQuestManagerUpdatesDoc { get; init; } = "Log every QuestManager.Update hook with quest name. Chatty; off by default.";
    public bool LogQuestManagerUpdates { get; set; } = false;

    [JsonPropertyName("// LogQuestSolveMilestones")]
    public string LogQuestSolveMilestonesDoc { get; init; } = "Log when CachedQuestCount (quests with solves) increases after a stamp.";
    public bool LogQuestSolveMilestones { get; set; } = true;

    [JsonPropertyName("// LogQuestAchievementProgress")]
    public string LogQuestAchievementProgressDoc { get; init; } = "Log when a CompleteQuest achievement counter increments for a matching quest.";
    public bool LogQuestAchievementProgress { get; set; } = true;

    [JsonPropertyName("// LogUnlockEvents")]
    public string LogUnlockEventsDoc { get; init; } = "Log each new character unlock (not duplicate re-set).";
    public bool LogUnlockEvents { get; set; } = true;

    [JsonPropertyName("// LogExternalProgressCalls")]
    public string LogExternalProgressCallsDoc { get; init; } = "Log IncrementProgress / SetProgress API calls from other mods or admin.";
    public bool LogExternalProgressCalls { get; set; } = true;

    [JsonPropertyName("// LogLoginSnapshot")]
    public string LogLoginSnapshotDoc { get; init; } = "Log one line on PlayerEnterWorld with quest/kill/progress snapshot.";
    public bool LogLoginSnapshot { get; set; } = true;

    [JsonPropertyName("// Achievements")]
    public string AchievementsDoc { get; init; } = "Achievement definitions. Order determines index (and thus FakeProperty IDs). Do not reorder after players have progress.";
    public List<Achievement> Achievements { get; set; } = new()
    {
        new()
        {
            Id = "FirstBlood",
            Name = "First Blood",
            Description = "Kill any creature.",
            Category = "Combat",
            Type = AchievementType.KillAny,
            RequiredCount = 1,
        },
        new()
        {
            Id = "NoviceSlayer",
            Name = "Novice Slayer",
            Description = "Kill 100 creatures.",
            Category = "Combat",
            Type = AchievementType.KillAny,
            RequiredCount = 100,
        },
        new()
        {
            Id = "VeteranSlayer",
            Name = "Veteran Slayer",
            Description = "Kill 1,000 creatures.",
            Category = "Combat",
            Type = AchievementType.KillAny,
            RequiredCount = 1000,
            Prerequisites = new() { "NoviceSlayer" },
        },
        new()
        {
            Id = "ReachLevel50",
            Name = "Halfway There",
            Description = "Reach character level 50.",
            Category = "Progression",
            Type = AchievementType.ReachLevel,
            RequiredValue = 50,
        },
        new()
        {
            Id = "ReachLevel100",
            Name = "Centurion",
            Description = "Reach character level 100.",
            Category = "Progression",
            Type = AchievementType.ReachLevel,
            RequiredValue = 100,
            Prerequisites = new() { "ReachLevel50" },
        },
        new()
        {
            Id = "QuestNovice",
            Name = "Questing Spirit",
            Description = "Complete 10 quests.",
            Category = "Exploration",
            Type = AchievementType.CompleteQuest,
            RequiredCount = 10,
        },
    };
}
