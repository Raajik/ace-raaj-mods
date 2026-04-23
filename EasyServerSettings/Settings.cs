using System.Text.Json.Serialization;

namespace EasyServerSettings;

public class Settings
{
    [JsonPropertyName("// EnableMod")]
    public string EnableModDoc { get; set; } = "Master switch - set false to disable entire mod.";
    public bool EnableMod { get; set; } = true;

    [JsonPropertyName("// ApplyShardPreset")]
    public string ApplyShardPresetDoc { get; set; } = "Apply settings on startup through ACE PropertyManager.";
    public bool ApplyShardPreset { get; set; } = true;

    [JsonPropertyName("// ResyncVariablesAfterApply")]
    public string ResyncVariablesAfterApplyDoc { get; set; } = "Sync settings to database after applying.";
    public bool ResyncVariablesAfterApply { get; set; } = true;

    [JsonPropertyName("// VerboseLogging")]
    public string VerboseLoggingDoc { get; set; } = "Log rejected keys (unknown to this ACE version).";
    public bool VerboseLogging { get; set; } = false;

    [JsonPropertyName("// LogSummary")]
    public string LogSummaryDoc { get; set; } = "Log summary of applied settings.";
    public bool LogSummary { get; set; } = true;

    [JsonPropertyName("// MaxDiffLinesSentToPlayer")]
    public string MaxDiffLinesSentToPlayerDoc { get; set; } = "Max lines shown in-game for /essdiff command.";
    public int MaxDiffLinesSentToPlayer { get; set; } = 40;

    [JsonPropertyName("// XpModifier")]
    public string XpModifierDoc { get; set; } = "XP multiplier (1.0 = normal, 2.0 = double XP)";
    public double XpModifier { get; set; } = 0.01;

    [JsonPropertyName("// RareDropRate")]
    public string RareDropRateDoc { get; set; } = "Rare item drop rate (default: 0.04)";
    public double RareDropRate { get; set; } = 0.04;

    [JsonPropertyName("// TrophyDropRate")]
    public string TrophyDropRateDoc { get; set; } = "Trophy drop rate multiplier";
    public double TrophyDropRate { get; set; } = 3.0;

    [JsonPropertyName("// AetheriaDropRate")]
    public string AetheriaDropRateDoc { get; set; } = "Aetheria drop rate";
    public double AetheriaDropRate { get; set; } = 3.0;

    [JsonPropertyName("// CantripDropRate")]
    public string CantripDropRateDoc { get; set; } = "General cantrip drop rate scaling (1.0 = normal)";
    public double CantripDropRate { get; set; } = 1.0;

    [JsonPropertyName("// MinorCantripDropRate")]
    public string MinorCantripDropRateDoc { get; set; } = "Minor cantrip drop rate";
    public double MinorCantripDropRate { get; set; } = 1.0;

    [JsonPropertyName("// MajorCantripDropRate")]
    public string MajorCantripDropRateDoc { get; set; } = "Major cantrip drop rate";
    public double MajorCantripDropRate { get; set; } = 1.0;

    [JsonPropertyName("// EpicCantripDropRate")]
    public string EpicCantripDropRateDoc { get; set; } = "Epic cantrip drop rate";
    public double EpicCantripDropRate { get; set; } = 1.0;

    [JsonPropertyName("// LegendaryCantripDropRate")]
    public string LegendaryCantripDropRateDoc { get; set; } = "Legendary cantrip drop rate";
    public double LegendaryCantripDropRate { get; set; } = 1.0;

    [JsonPropertyName("// VitaePenalty")]
    public string VitaePenaltyDoc { get; set; } = "Vitae penalty per death (0.01 = 1%)";
    public double VitaePenalty { get; set; } = 0.1;

    [JsonPropertyName("// VitaePenaltyMax")]
    public string VitaePenaltyMaxDoc { get; set; } = "Maximum vitae penalty cap (0.1 = 10%)";
    public double VitaePenaltyMax { get; set; } = 0.99;

    [JsonPropertyName("// PkServer")]
    public string PkServerDoc { get; set; } = "PK Server mode";
    public bool PkServer { get; set; } = false;

    [JsonPropertyName("// PklServer")]
    public string PklServerDoc { get; set; } = "PK Light Server mode";
    public bool PklServer { get; set; } = false;

    [JsonPropertyName("// PkTimer")]
    public string PkTimerDoc { get; set; } = "PK kill cooldown timer (seconds)";
    public int PkTimer { get; set; } = 20;

    [JsonPropertyName("// MaxCharsPerAccount")]
    public string MaxCharsPerAccountDoc { get; set; } = "Maximum characters per account";
    public int MaxCharsPerAccount { get; set; } = 20;

    [JsonPropertyName("// CharDeleteTime")]
    public string CharDeleteTimeDoc { get; set; } = "Seconds before a deleted character slot can be reused (ACE char_delete_time; not days)";
    public int CharDeleteTime { get; set; } = 30;

    [JsonPropertyName("// Fastbuff")]
    public string FastbuffDoc { get; set; } = "Enable fast buffing (no animation delay)";
    public bool Fastbuff { get; set; } = true;

    [JsonPropertyName("// UniversalMasteries")]
    public string UniversalMasteriesDoc { get; set; } = "All skills can be specialized";
    public bool UniversalMasteries { get; set; } = true;

    [JsonPropertyName("// ShowDotMessages")]
    public string ShowDotMessagesDoc { get; set; } = "Show damage over time messages";
    public bool ShowDotMessages { get; set; } = false;

    [JsonPropertyName("// ShowAuraBuff")]
    public string ShowAuraBuffDoc { get; set; } = "Show aura buff icons";
    public bool ShowAuraBuff { get; set; } = false;

    [JsonPropertyName("// ShowAmmoBuff")]
    public string ShowAmmoBuffDoc { get; set; } = "Show ammo buff icons";
    public bool ShowAmmoBuff { get; set; } = false;

    [JsonPropertyName("// FellowshipEvenShareLevel")]
    public string FellowshipEvenShareLevelDoc { get; set; } = "Min level for even XP share";
    public int FellowshipEvenShareLevel { get; set; } = 1;

    [JsonPropertyName("// FellowshipQuestBonus")]
    public string FellowshipQuestBonusDoc { get; set; } = "Enable fellowship quest bonus";
    public bool FellowshipQuestBonus { get; set; } = true;

    [JsonPropertyName("// FellowshipKillTaskLandblock")]
    public string FellowshipKillTaskLandblockDoc { get; set; } = "Kill task counts across landblock";
    public bool FellowshipKillTaskLandblock { get; set; } = true;

    [JsonPropertyName("// House30DayCooldown")]
    public string House30DayCooldownDoc { get; set; } = "30-day house purchase cooldown";
    public bool House30DayCooldown { get; set; } = true;

    [JsonPropertyName("// HouseRentEnabled")]
    public string HouseRentEnabledDoc { get; set; } = "Enable house rent system";
    public bool HouseRentEnabled { get; set; } = true;

    [JsonPropertyName("// HousePurchaseRequirements")]
    public string HousePurchaseRequirementsDoc { get; set; } = "Require certain items to purchase houses";
    public bool HousePurchaseRequirements { get; set; } = true;

    [JsonPropertyName("// WorldClosed")]
    public string WorldClosedDoc { get; set; } = "Show world closed message";
    public bool WorldClosed { get; set; } = false;

    [JsonPropertyName("// ChessEnabled")]
    public string ChessEnabledDoc { get; set; } = "Enable chess mini-game";
    public bool ChessEnabled { get; set; } = true;

    [JsonPropertyName("// QuestInfoEnabled")]
    public string QuestInfoEnabledDoc { get; set; } = "Enable quest info commands";
    public bool QuestInfoEnabled { get; set; } = true;

    [JsonPropertyName("// RaresRealTime")]
    public string RaresRealTimeDoc { get; set; } = "Real-time rare spawns";
    public bool RaresRealTime { get; set; } = true;

    [JsonPropertyName("// AccountLoginBootsInUse")]
    public string AccountLoginBootsInUseDoc { get; set; } = "Boot duplicate account sessions";
    public bool AccountLoginBootsInUse { get; set; } = true;

    [JsonPropertyName("// AllowNegativeDispelResist")]
    public string AllowNegativeDispelResistDoc { get; set; } = "Allow negative dispel resistance";
    public bool AllowNegativeDispelResist { get; set; } = true;

    [JsonPropertyName("// AllowNegativeRatingCurve")]
    public string AllowNegativeRatingCurveDoc { get; set; } = "Allow negative rating curves";
    public bool AllowNegativeRatingCurve { get; set; } = true;

    [JsonPropertyName("// AllowPklBump")]
    public string AllowPklBumpDoc { get; set; } = "Allow PK Light bumping";
    public bool AllowPklBump { get; set; } = true;

    [JsonPropertyName("// MeleeMaxAngle")]
    public string MeleeMaxAngleDoc { get; set; } = "Max angle for melee attacks";
    public double MeleeMaxAngle { get; set; } = 0.0;

    [JsonPropertyName("// SpellcastMaxAngle")]
    public string SpellcastMaxAngleDoc { get; set; } = "Max angle for spellcasting";
    public double SpellcastMaxAngle { get; set; } = 20.0;

    [JsonPropertyName("// FastMissileModifier")]
    public string FastMissileModifierDoc { get; set; } = "Fast missile damage modifier";
    public double FastMissileModifier { get; set; } = 1.2;

    [JsonPropertyName("// EncounterDelay")]
    public string EncounterDelayDoc { get; set; } = "World encounter spawn delay";
    public double EncounterDelay { get; set; } = 60.0;

    [JsonPropertyName("// EncounterRegenInterval")]
    public string EncounterRegenIntervalDoc { get; set; } = "World encounter regeneration interval";
    public double EncounterRegenInterval { get; set; } = 60.0;

    [JsonPropertyName("// MobAwarenessRange")]
    public string MobAwarenessRangeDoc { get; set; } = "NPC awareness range";
    public double MobAwarenessRange { get; set; } = 3.0;

    [JsonPropertyName("// PlayerSaveInterval")]
    public string PlayerSaveIntervalDoc { get; set; } = "Player auto-save interval (seconds)";
    public int PlayerSaveInterval { get; set; } = 30;

    [JsonPropertyName("// VoidPvpModifier")]
    public string VoidPvpModifierDoc { get; set; } = "Void PVP damage modifier";
    public double VoidPvpModifier { get; set; } = 0.5;

    [JsonPropertyName("// ShardBooleansChat")]
    public string ShardBooleansChatDoc { get; set; } = "Global chat: channel disables, echo/reject behavior, per-channel server logging, and chat gates. Applied before top-level keys; top-level overrides the same ACE key.";
    public Dictionary<string, bool>? ShardBooleansChat { get; set; }

    [JsonPropertyName("// ShardBooleansGameplay")]
    public string ShardBooleansGameplayDoc { get; set; } = "Retail movement/consumption quirks, combat pets, fellow recruitment/KT rules, gateway ties, advocate fane, house hook/account limits, and dispel/item combat toggles.";
    public Dictionary<string, bool>? ShardBooleansGameplay { get; set; }

    [JsonPropertyName("// ShardBooleansWorldLoot")]
    public string ShardBooleansWorldLootDoc { get; set; } = "Creatures, corpses, equipment set IDs, lootgen legacy mode, encounters, olthoi play, pyreals on death, spell components, salvage, and related world rules.";
    public Dictionary<string, bool>? ShardBooleansWorldLoot { get; set; }

    [JsonPropertyName("// ShardBooleansClientUi")]
    public string ShardBooleansClientUiDoc { get; set; } = "Client/UI messaging, chess/report UI, spell FX, vendor generator, taboo filter, and similar presentation toggles.";
    public Dictionary<string, bool>? ShardBooleansClientUi { get; set; }

    [JsonPropertyName("// ShardLongsExtra")]
    public string ShardLongsExtraDoc { get; set; } = "Long shard properties not covered by the typed fields above (chat gates, corpse spam, subscription tier, mansion rank, rare timers, summoning cap, teleport fix). Applied before top-level longs.";
    public Dictionary<string, long>? ShardLongsExtra { get; set; }

    [JsonPropertyName("// ShardDoublesExtra")]
    public string ShardDoublesExtraDoc { get; set; } = "Double shard properties not covered by typed XP/loot/cantrip/vitae/PK angle/encounter fields (luminance, PVP magic scalars, PK grace/respite, quest rate, vendor rotation, unlocker window, chess AI time). Applied before top-level doubles.";
    public Dictionary<string, double>? ShardDoublesExtra { get; set; }
}