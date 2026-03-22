namespace Loremaster;

public class Settings
{
    // ─────────────────────────────────────────────────────────────────────────
    // QUEST POINT SYSTEM (inherited from QuestBonus)
    // ─────────────────────────────────────────────────────────────────────────

    // XP multiplier per Quest Point (as a percentage).
    // Formula: 1 + (QP * BonusPerQuestPoint / 100)
    // Default (0.5): 100 QP → 1.5x, 200 QP → 2.0x, 50 QP → 1.25x
    public float BonusPerQuestPoint { get; set; } = 0.5f;

    // QP awarded for any quest not listed in QuestBonuses.
    // Set to 0 to only reward explicitly listed quests.
    public float DefaultPoints { get; set; } = 1;

    // Per-quest QP overrides. Keys are case-sensitive internal quest names (see Quests.txt).
    // Value 0 = tracked but awards no QP. Unlisted quests use DefaultPoints.
    public Dictionary<string, float> QuestBonuses { get; set; } = new()
    {
        ["PathwardenComplete"]        = 1,
        ["PathwardenFound1111"]       = 1,
        ["StipendsCollectedInAMonth"] = 1,
        ["StipendTimer_08"]           = 1,
        ["StipendTimer_Monthly"]      = 1,
    };

    // ─────────────────────────────────────────────────────────────────────────
    // ACCOUNT-WIDE QUEST TRACKING
    // ─────────────────────────────────────────────────────────────────────────

    // When true, QP and the XP multiplier are calculated from unique quests solved
    // across ALL characters on the account, not just the logged-in character.
    public bool UseAccountWideQuests { get; set; } = true;

    // ─────────────────────────────────────────────────────────────────────────
    // ONE-TIME COMPLETION BONUS XP
    // ─────────────────────────────────────────────────────────────────────────

    // Grant an XP bonus on each quest solve (first and repeat). Stacks with the ongoing multiplier.
    // Amount = DefaultCompletionBonusXpMultiplier × (XP needed for player's next level).
    public bool EnableCompletionBonusXp { get; set; } = true;

    // Multiplier applied to (XP needed for next level) for the completion bonus.
    // 0.30 = 30% of current level-up cost. Set to 0 to rely solely on CompletionBonusXpOverrides.
    public float DefaultCompletionBonusXpMultiplier { get; set; } = 0.30f;

    // Per-quest multiplier overrides for the first-solve XP bonus (case-sensitive, see Quests.txt).
    // Same unit as DefaultCompletionBonusXpMultiplier. Set to 0.0 to suppress for a specific quest.
    public Dictionary<string, float> CompletionBonusXpOverrides { get; set; } = new()
    {
        ["PathwardenComplete"]        = 1.0f,
        ["PathwardenFound1111"]       = 1.0f,
        ["StipendsCollectedInAMonth"] = 1.0f,
        ["StipendTimer_08"]           = 1.0f,
        ["StipendTimer_Monthly"]      = 1.0f,
    };

    // ─────────────────────────────────────────────────────────────────────────
    // REPEAT SOLVE BONUS LOOT
    // ─────────────────────────────────────────────────────────────────────────

    // Award one weighted-random item on every repeat solve (2nd+). First solves are not affected.
    // Loot tables are configured in RepeatSolveLoot.json in the mod folder.
    public bool EnableRepeatSolveLoot { get; set; } = true;

    // ─────────────────────────────────────────────────────────────────────────
    // MILESTONE BROADCASTS
    // ─────────────────────────────────────────────────────────────────────────

    // Broadcast a server-wide message when an account hits a milestone unique-quest count.
    public bool EnableMilestoneBroadcasts { get; set; } = true;

    // Account-wide unique quest counts that trigger a broadcast. Add or remove freely.
    public List<int> MilestoneThresholds { get; set; } = new()
    {
        25, 50, 100, 250, 500, 750, 1000,
        1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000,
        5500, 6000, 6500, 7000, 7500, 8000, 8500, 9000, 9500, 10000
    };

    // Formula for bonus QP per milestone: (MilestoneBonusQPPercent / 100) * MilestoneBonusQPBase.
    // Default 10% of 100 = 10 QP per milestone.
    public float MilestoneBonusQPPercent { get; set; } = 10f;
    public float MilestoneBonusQPBase { get; set; } = 100f;

    // Per-threshold overrides. When a threshold is present here, this QP is used instead of the formula.
    public Dictionary<int, float> MilestoneBonusQPOverrides { get; set; } = new();

    // Broadcast message format.
    // {0} = character name, {1} = ordinal milestone (e.g. "50th"), {2} = bonus QP awarded.
    public string MilestoneBroadcastFormat { get; set; } =
        "[Loremaster] {0} has just completed their {1} unique quest and earned {2} bonus quest points!";

    // ─────────────────────────────────────────────────────────────────────────
    // QUEST COOLDOWN REDUCTION
    // ─────────────────────────────────────────────────────────────────────────

    // When true, quest repeat cooldowns are reduced by the same percentage as the player's XP bonus.
    // E.g. 25% XP bonus → wait 75% of the normal repeat time.
    public bool EnableQuestCooldownReduction { get; set; } = true;

    // Cap on cooldown reduction (0–1). Null = uncapped. E.g. 0.9 = at most 90% reduction.
    public float? QuestCooldownReductionCap { get; set; } = 0.95f;

    // Loremaster shortens repeat timers by scaling MinDelta. ACE portals require !CanSolve while the post-completion
    // window is still active; shortening that window causes "You completed the quest this portal requires too long ago!".
    // Only apply cooldown reduction when the world quest's MinDelta (seconds) is strictly greater than this value.
    // 0 = apply reduction to all quests (retail-timer portal hubs may break). Default keeps hub-style flags (<=24h) vanilla.
    public int QuestCooldownReductionOnlyIfMinDeltaExceedsSeconds { get; set; } = 86400;

    // Quest names that skip cooldown reduction entirely (vanilla GetNextSolveTime). Use for portal keys or races
    // where MinDelta must not be scaled. Case-sensitive (see Quests.txt). Does not grant quests or bypass portal rules.
    public List<string> PermanentFlagQuests { get; set; } = new()
    {
        "AcademyTokenGiven",
    };

    // ─────────────────────────────────────────────────────────────────────────
    // XP / LUMINANCE NOTIFY DEFAULTS (/qb NotifyKillXp, etc.)
    // ─────────────────────────────────────────────────────────────────────────

    // When a character has never toggled a notify flag, these Settings.json values apply.
    // Explicit per-character choices from /qb always win. NotifyQuest (QP lines) still defaults to on when unset.
    public bool NotifyKillXpDefault { get; set; } = true;

    public bool NotifyQuestXpDefault { get; set; } = true;

    public bool NotifyKillLuminanceDefault { get; set; } = true;

    public bool NotifyQuestLuminanceDefault { get; set; } = true;

    // Same Harmony categories as EmpyreanAlteration’s relocated equip patches (class names as categories).
    public bool EnableEquipPostCreation { get; set; } = false;

    public bool EnableOverrideCheckUseRequirements { get; set; } = false;

    // ─────────────────────────────────────────────────────────────────────────
    // BARKEEPER PARCHMENT QUESTS (one active contract; bartender vendor rows; Town Crier for Explore/Fetch)
    // ─────────────────────────────────────────────────────────────────────────

    public BarkeeperParchmentsSettings BarkeeperParchments { get; set; } = new();
}

public class BarkeeperParchmentsSettings
{
    public bool Enable { get; set; }

    // 0 = disabled. After starting a parchment, Unix-time gate until another can be started.
    public int CooldownSeconds { get; set; }

    // Town Crier WCIDs — players use them to turn in Explore/Fetch (not Kill) contracts.
    public List<uint> TownCrierWeenieClassIds { get; set; } = new();

    // Each bartender vendor WCID offers exactly five template rows (0-based indices into ParchmentTemplates).
    public List<BartenderContractBoardSettings> BartenderContractBoards { get; set; } = new();

    public float TierEasyXpPercentMin { get; set; } = 0.25f;

    public float TierEasyXpPercentMax { get; set; } = 1.0f;

    public float TierAverageXpPercentMin { get; set; } = 0.75f;

    public float TierAverageXpPercentMax { get; set; } = 1.5f;

    public float TierChallengingXpPercentMin { get; set; } = 1.5f;

    public float TierChallengingXpPercentMax { get; set; } = 2.5f;

    public List<ParchmentTemplateSettings> ParchmentTemplates { get; set; } = new();
}

public class BartenderContractBoardSettings
{
    public uint BartenderVendorWeenieClassId { get; set; }

    public List<int> OfferTemplateRow0Based { get; set; } = new();
}

public class ParchmentTemplateSettings
{
    // Weenie of the parchment item. Use ParchmentActivation Gem (default) or Book; must not match LeyLineLedger luminance gem WCIDs on your shard when using gems.
    public uint ParchmentWeenieClassId { get; set; }

    // Gem (default): match only Gem.UseGem. Book: match only Book.ActOnUse (consumes the book, no read UI).
    public string ParchmentActivation { get; set; } = "Gem";

    // When set, only matches if PropertyString.Inscription on the used item equals this (after trim). Order specific rows before a same-WCID catch-all with empty inscription.
    public string? TemplateMatchInscription { get; set; }

    // Kill, Explore, or Fetch (case-insensitive).
    public string Kind { get; set; } = "Kill";

    // Easy, Average, or Challenging — drives tier XP band and RepeatSolveLoot.json quest key.
    public string Tier { get; set; } = "Easy";

    // Kill: filter by creature WCID, or 0 for any creature kill you credit. When 0 and KillTargetCreatureWcidPool is non-empty, a WCID is rolled at start.
    public uint TargetCreatureWcid { get; set; }

    // Kill: when TargetCreatureWcid is 0 and this pool is non-empty, one WCID is rolled at contract start (specific hunts). Ignored when TargetCreatureWcid is non-zero.
    public List<uint> KillTargetCreatureWcidPool { get; set; } = new();

    public int KillCount { get; set; } = 1;

    // Explore: player must use a Town Crier while standing in this landblock (raw id). Ignored as the turn-in target when ExploreLandblockRawPool is non-empty (a destination is rolled at start).
    public uint ExploreLandblockRaw { get; set; }

    // Explore: if non-empty, one landblock raw id is chosen at contract start and stored on the player (overrides ExploreLandblockRaw for turn-in and guidance).
    public List<uint> ExploreLandblockRawPool { get; set; } = new();

    // Optional LOC/0x cell string for auto guidance (ACE TryParsePosition). Used when manual explore strings are absent.
    public string? ExploreAnchorLoc { get; set; }

    // Manual explore guidance (override auto text when non-empty).
    public string? ExploreOutdoorCoordsText { get; set; }

    public string? ExploreDungeonName { get; set; }

    public string? ExploreEntranceCoordsText { get; set; }

    // Fetch: item WCID consumed from inventory when reporting to a Town Crier.
    public uint FetchItemWcid { get; set; }

    // Optional: quest stamp passed to QuestManager.Update when the parchment completes (same format as retail scripts).
    public string? CompletionQuestStamp { get; set; }

    public string? StartMessage { get; set; }

    public string? CompleteMessage { get; set; }
}
