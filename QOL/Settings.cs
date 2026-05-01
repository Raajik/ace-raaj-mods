namespace QOL;

public enum Features
{
    Animations,
    Augmentations,
    Defaults,
    Fellowships,
    PermanentObjects,
    Recklessness,
    Tailoring,
    VendorsBuyEverything,
    QuestgiverAuras,
    Stackable,
    PetAttackSelected,
    PetMessageDamage,
    PetStow,
    SummonCreatureAsPet,
    PetSummonMultiple,
    PetEx,
    PetExShareDamage,
    CollectorsAcceptAll,
    PortalsStripNoRecall,
    BypassPortalRestrictions,
    TownNetworkToll,
    VendorPackBurdenRelief,
    FullKillXpPerDamager,
    // GiveNpcSingleFromStack has been replaced by NpcStackTurnIn. The old enum name is preserved
    // so existing Settings.json that references it does not silently break deserialization,
    // but the category string now resolves to NpcStackTurnIn patches.
    NpcStackTurnIn,
    LootEconomyControl,
    VendorLootRotation,
    KillXpMessage,
    BundleGive,
    VendorPriceInflation, // DEPRECATED — vendor pricing moved to LeyLineLedger. Kept for JSON backward compatibility.
    NoDeathDrops,
    PetKillSummary,
    XpTracker,
    AutoBuff,
}

public class Settings
{
    [JsonPropertyName("// FeatureToggles")]
    public string FeatureTogglesDoc { get; init; } = "Reading order: below this line, every // key is documentation; the next block lists real settings in the same order (toggles and MaxSpecCredits, then each named section object). Each Enable* flag turns one QOL Harmony patch group on or off — false = vanilla ACE for that area only; other features stay as configured.";

    [JsonPropertyName("// EnableAnimations")]
    public string EnableAnimationsDoc { get; init; } = "MotionTable length overrides per MotionCommand (see Animations.AnimationSpeeds; {} = vanilla) and configurable delay between each /die speech step.";
    public bool EnableAnimations { get; set; } = true;

    [JsonPropertyName("// EnableAugmentations")]
    public string EnableAugmentationsDoc { get; init; } = "Override augmentation type caps (Augmentation.MaxAugs) and optional IgnoreShared* so attribute or resist augs ignore ACE shared-group caps.";
    public bool EnableAugmentations { get; set; } = true;

    [JsonPropertyName("// EnableDefaults")]
    public string EnableDefaultsDoc { get; init; } = "When true, default values in the Defaults object apply the first time a listed property is set on a player who had no stored value yet (e.g. new or migrated chars).";
    public bool EnableDefaults { get; set; } = true;

    [JsonPropertyName("// EnableFellowships")]
    public string EnableFellowshipsDoc { get; init; } = "Raises max fellowship size for this mod's invite logic, XP share (flat or per-size table), /fship bulk invite, optional busy bypass, StopAtMaxFellowshipInvite.";
    public bool EnableFellowships { get; set; } = true;

    [JsonPropertyName("// EnablePermanentObjects")]
    public string EnablePermanentObjectsDoc { get; init; } = "World objects marked with the Permanent fake property survive landblock unload without inventory wipe.";
    public bool EnablePermanentObjects { get; set; } = true;

    [JsonPropertyName("// EnableRecklessness")]
    public string EnableRecklessnessDoc { get; init; } = "Replaces ACE Recklessness damage scaling with a power-bar window (PowerLow/PowerHigh) and trained/specialized damage rating bonuses configured in the Recklessness object below.";
    public bool EnableRecklessness { get; set; } = true;

    [JsonPropertyName("// EnableTailoring")]
    public string EnableTailoringDoc { get; init; } = "Allow society armor as tailoring source/target (removes restriction).";
    public bool EnableTailoring { get; set; } = true;

    [JsonPropertyName("// EnableVendorsBuyEverything")]
    public string EnableVendorsBuyEverythingDoc { get; init; } = "Vendors accept buy/sell on item types they would normally refuse.";
    public bool EnableVendorsBuyEverything { get; set; } = true;

    [JsonPropertyName("// EnableQuestgiverAuras")]
    public string EnableQuestgiverAurasDoc { get; init; } = "Equip quest-giver NPCs (creatures with StampQuest/InqQuest emotes) with an Aegis visual; WCID is QuestgiverAuras.AegisWcid.";
    public bool EnableQuestgiverAuras { get; set; } = true;

    [JsonPropertyName("// EnableStackable")]
    public string EnableStackableDoc { get; init; } = "Enable WCID-based stacking. Items whose WeenieClassId is in Stackable.StackableWcids receive MaxStackSize and merge behavior.";
    public bool EnableStackable { get; set; } = true;

    [JsonPropertyName("// EnablePetAttackSelected")]
    public string EnablePetAttackSelectedDoc { get; init; } = "Pet attacks match the player's selected target where applicable.";
    public bool EnablePetAttackSelected { get; set; } = true;

    [JsonPropertyName("// EnablePetMessageDamage")]
    public string EnablePetMessageDamageDoc { get; init; } = "Route or label combat messages involving pets.";
    public bool EnablePetMessageDamage { get; set; } = true;

    [JsonPropertyName("// EnablePetStow")]
    public string EnablePetStowDoc { get; init; } = "Stow/recall pet behavior patches.";
    public bool EnablePetStow { get; set; } = true;

    [JsonPropertyName("// EnableSummonCreatureAsPet")]
    public string EnableSummonCreatureAsPetDoc { get; init; } = "Summon-creature spells can create pets with QOL pet rules.";
    public bool EnableSummonCreatureAsPet { get; set; } = true;

    [JsonPropertyName("// EnablePetSummonMultiple")]
    public string EnablePetSummonMultipleDoc { get; init; } = "Allow multiple pets when the pet patches allow it.";
    public bool EnablePetSummonMultiple { get; set; } = true;

    [JsonPropertyName("// EnablePetEx")]
    public string EnablePetExDoc { get; init; } = "Extended pet behavior package (PetEx hooks).";
    public bool EnablePetEx { get; set; } = true;

    [JsonPropertyName("// EnablePetExShareDamage")]
    public string EnablePetExShareDamageDoc { get; init; } = "Share damage between player and PetEx pet per that feature's rules.";
    public bool EnablePetExShareDamage { get; set; } = true;

    [JsonPropertyName("// EnableOfflineSwear")]
    public string EnableOfflineSwearDoc { get; init; } = "Chat command /swear and related allegiance auto-accept behavior.";
    public bool EnableOfflineSwear { get; set; } = true;

    [JsonPropertyName("// EnableCollectorsAcceptAll")]
    public string EnableCollectorsAcceptAllDoc { get; init; } = "Trophy collectors accept any item (not just items with specific Give emotes).";
    public bool EnableCollectorsAcceptAll { get; set; } = true;

    [JsonPropertyName("// CollectorWcids")]
    public string CollectorWcidsDoc { get; init; } = "WCIDs of collector NPCs that will accept any item when enabled.";
    public List<uint> CollectorWcids { get; set; } = new()
    {
        3917, 3918, 3919, 3920, 3921, 3922, 3923,
        10842, 11343, 11345, 11346, 11347, 11348,
        21338, 24215, 24573,
        8402, 8403, 8404,
        8155, 8266, 24859,
        12203, 12204, 12205,
        22642, 28717, 34145,
    };

    [JsonPropertyName("// EnablePortalsStripNoRecall")]
    public string EnablePortalsStripNoRecallDoc { get; init; } = "When a portal spawns, clear PortalBitmask.NoRecall on its PortalBitmask so secondary portal recall and tie behavior can use that destination.";
    public bool EnablePortalsStripNoRecall { get; set; } = true;

    [JsonPropertyName("// PortalsStripNoRecallBlockedPortalWcids")]
    public string PortalsStripNoRecallBlockedPortalWcidsDoc { get; init; } = "Blocklist: portal WeenieClassIds that keep NoRecall (strip is skipped for these WCIDs). Empty = strip NoRecall on all portals as usual.";
    public List<uint> PortalsStripNoRecallBlockedPortalWcids { get; set; } = new();

    [JsonPropertyName("// EnableBypassPortalRestrictions")]
    public string EnableBypassPortalRestrictionsDoc { get; init; } = "When true, bypass ACE portal use requirements (level, quest, race, gender, bitmask) and recall restrictions (dungeon, busy, PK timer, olthoi). The Town Network toll system is NOT affected—fees are still enforced.";
    public bool EnableBypassPortalRestrictions { get; set; } = true;

    [JsonPropertyName("// BypassPortalRestrictions")]
    public string BypassPortalRestrictionsSectionDoc { get; init; } = "Granular toggles for which restrictions to bypass. All default to true (bypassed). Inside BypassPortalRestrictions: // lines first, then values (same order).";
    public BypassPortalRestrictionsSettings BypassPortalRestrictions { get; set; } = new();

    [JsonPropertyName("// EnableTownNetworkToll")]
    public string EnableTownNetworkTollDoc { get; init; } = "When true, Town Network–matched portals debit banked pyreals (see TownNetworkToll) after ACE portal checks; insufficient funds can block or drain all bank per InsufficientFundsMode.";
    public bool EnableTownNetworkToll { get; set; } = true;

    [JsonPropertyName("// EnableVendorPackBurdenRelief")]
    public string EnableVendorPackBurdenReliefDoc { get; init; } = "When true, wearing (and optionally carrying in main inventory) configured pack WCIDs multiplies total encumbrance via Creature.GetEncumbrance. Per-WCID multipliers use PackBurdenWcidMultipliers when non-empty; otherwise VendorPackBurdenMultiplier applies to VendorPackBurdenWcids. The smallest multiplier (most relief) wins when multiple packs match.";
    public bool EnableVendorPackBurdenRelief { get; set; } = false;

    [JsonPropertyName("// VendorPackBurdenMultiplier")]
    public string VendorPackBurdenMultiplierDoc { get; init; } = "Fallback applied when PackBurdenWcidMultipliers is empty and a listed WCID in VendorPackBurdenWcids matches.";
    public double VendorPackBurdenMultiplier { get; set; } = 0.95;

    [JsonPropertyName("// VendorPackBurdenWcids")]
    public string VendorPackBurdenWcidsDoc { get; init; } = "Item WCIDs treated as burden-relief packs when PackBurdenWcidMultipliers is empty.";
    public List<uint> VendorPackBurdenWcids { get; set; } = new() { 166, 136 };

    [JsonPropertyName("// PackBurdenWcidMultipliers")]
    public string PackBurdenWcidMultipliersDoc { get; init; } = "Optional map of pack WeenieClassId → encumbrance multiplier (0.01–1.0). When non-empty, only WCIDs listed here qualify; smallest multiplier among equipped + optional inventory matches is used.";
    public Dictionary<uint, double> PackBurdenWcidMultipliers { get; set; } = new();

    [JsonPropertyName("// PackBurdenIncludeMainInventory")]
    public string PackBurdenIncludeMainInventoryDoc { get; init; } = "When true, pack WCIDs in the main inventory container (not nested packs) also count toward relief (best multiplier still wins).";
    public bool PackBurdenIncludeMainInventory { get; set; } = true;

    [JsonPropertyName("// EnableFullKillXpPerDamager")]
    public string EnableFullKillXpPerDamagerDoc { get; init; } = "When true, replaces ACE kill/luminance split by damage percent: each player (or pet owner) in DamageHistory earns the full creature XpOverride and full LuminanceAward (vanilla uses proportional split). Healing credit is unchanged (ACE does not award kill XP for healing in this path).";
    public bool EnableFullKillXpPerDamager { get; set; } = false;

    [JsonPropertyName("// EnableGiveNpcSingleFromStack (DEPRECATED)")]
    public string EnableGiveNpcSingleFromStackDoc { get; init; } = "DEPRECATED: replaced by NpcStackTurnIn. Set EnableNpcStackTurnIn in Settings.json instead. Kept for backward compatibility only.";
    [JsonPropertyName("// EnableGiveNpcSingleFromStack")]
    public bool EnableGiveNpcSingleFromStack { get; set; } = false; // No longer used — replaced by EnableNpcStackTurnIn

    [JsonPropertyName("// EnableNpcStackTurnIn")]
    public string EnableNpcStackTurnInDoc { get; init; } = "When true, NPC quest turn-ins respect full stack size. Rewards (items, currencies) scale by stack count. Bankable rewards auto-deposit via LeyLineLedger. Equipment rewards check main-pack space before committing.";
    public bool EnableNpcStackTurnIn { get; set; } = true;

    [JsonPropertyName("// NpcStackTurnIn")]
    public string NpcStackTurnInDoc { get; init; } = "Configuration for full-stack NPC quest turn-ins. See NpcStackTurnInSettings.";
    public NpcStackTurnInSettings NpcStackTurnIn { get; set; } = new();

    [JsonPropertyName("// EnableLootEconomyControl")]
    public string EnableLootEconomyControlDoc { get; init; } = "Reduce loot value and amount to help reign in the pyreal economy. LootValueMultiplier scales item values; LootAmountReduction reduces drop count by percentage.";
    public bool EnableLootEconomyControl { get; set; } = false;

    [JsonPropertyName("// LootValueMultiplier")]
    public string LootValueMultiplierDoc { get; init; } = "Multiplies loot item values (0.1 = 10% of original value, 0.01 = 1%). Applied after generation to all loot items.";
    public double LootValueMultiplier { get; set; } = 0.1;

    [JsonPropertyName("// LootValueMaxCap")]
    public string LootValueMaxCapDoc { get; init; } = "Absolute maximum value in pyreals for any loot item after multiplier. 0 = disabled (no cap).";
    public int LootValueMaxCap { get; set; } = 500;

    [JsonPropertyName("// LootMagicalItemExtraReduction")]
    public string LootMagicalItemExtraReductionDoc { get; init; } = "Additional multiplier for magical items (cantrips, imbues). Stacks with LootValueMultiplier. 0.5 = half the already-reduced value.";
    public double LootMagicalItemExtraReduction { get; set; } = 0.3;

    [JsonPropertyName("// LootAmountReduction")]
    public string LootAmountReductionDoc { get; init; } = "Loot amount multiplier: 0.0-1.0 reduces drops (0.7 = keep 30%%), >1.0 adds extra items (1.5 = 50%% more, WIP).";
    public double LootAmountReduction { get; set; } = 0.7;

    [JsonPropertyName("// EnableLootAmountBoostWIP")]
    public string EnableLootAmountBoostWIPDoc { get; init; } = "WIP: Enable multiplier >1.0 for extra loot drops. Not fully implemented yet.";
    public bool EnableLootAmountBoostWIP { get; set; } = false;

    [JsonPropertyName("// EnableVendorLootRotation")]
    public string EnableVendorLootRotationDoc { get; init; } = "Enable rotating vendor stock. Clears and regenerates vendor inventory on a timer cycle.";
    public bool EnableVendorLootRotation { get; set; } = true;

    [JsonPropertyName("// VendorLootRotationMinutes")]
    public string VendorLootRotationMinutesDoc { get; init; } = "Minutes between vendor loot rotations.";
    public int VendorLootRotationMinutes { get; set; } = 20;

    [JsonPropertyName("// VendorLootMode")]
    public string VendorLootModeDoc { get; init; } = "Whitelist: only rotate vendors in VendorLootWcids. Blacklist: rotate all EXCEPT vendors in VendorLootWcids.";
    public string VendorLootMode { get; set; } = "Whitelist";

    [JsonPropertyName("// VendorLootWcids")]
    public string VendorLootWcidsDoc { get; init; } = "List of vendor WCIDs for whitelist/blacklist mode.";
    public List<uint> VendorLootWcids { get; set; } = new();

    [JsonPropertyName("// VendorLootItemsPerTierMin")]
    public string VendorLootItemsPerTierMinDoc { get; init; } = "Minimum items to generate per tier during rotation.";
    public int VendorLootItemsPerTierMin { get; set; } = 15;

    [JsonPropertyName("// VendorLootItemsPerTierMax")]
    public string VendorLootItemsPerTierMaxDoc { get; init; } = "Maximum items to generate per tier during rotation.";
    public int VendorLootItemsPerTierMax { get; set; } = 30;

    [JsonPropertyName("// VendorLootMinValue")]
    public string VendorLootMinValueDoc { get; init; } = "Minimum item value in pyreals for vendor loot.";
    public int VendorLootMinValue { get; set; } = 100;

    [JsonPropertyName("// VendorLootMaxValue")]
    public string VendorLootMaxValueDoc { get; init; } = "Maximum item value in pyreals for vendor loot.";
    public int VendorLootMaxValue { get; set; } = 10000;

    [JsonPropertyName("// VendorLootCooldownMinutes")]
    public string VendorLootCooldownMinutesDoc { get; init; } = "Minutes between vendor inventory rotations for the same vendor instance.";
    public int VendorLootCooldownMinutes { get; set; } = 15;

    [JsonPropertyName("// VendorLootLuxuryTaxPercent")]
    public string VendorLootLuxuryTaxPercentDoc { get; init; } = "Hidden luxury tax added to vendor prices. 10 = 10% price increase. LLL handles economy scaling via SellPrice patch.";
    public double VendorLootLuxuryTaxPercent { get; set; } = 10.0;

    [JsonPropertyName("// VendorTierWcidMap")]
    public string VendorTierWcidMapDoc { get; init; } = "Maps vendor WeenieClassIds to their loot tier (1-8). Starter town Academy vendors default to tier 1. Unknown vendors use DefaultVendorTier.";
    public Dictionary<uint, int> VendorTierWcidMap { get; set; } = new()
    {
        // Holtburg Academy
        [712] = 1, [713] = 1, [2304] = 1,
        // Shoushi Academy
        [835] = 1, [836] = 1, [831] = 1,
        // Yaraq Academy
        [1038] = 1, [1039] = 1, [2307] = 1,
    };

    [JsonPropertyName("// VendorTierLandblockMap")]
    public string VendorTierLandblockMapDoc { get; init; } = "Maps vendor landblock IDs (decimal) to loot tiers (1-8). Overrides WCID map when both match. Starter towns: Holtburg=43442, Shoushi=56914, Yaraq=32100.";
    public Dictionary<uint, int> VendorTierLandblockMap { get; set; } = new();

    [JsonPropertyName("// DefaultVendorTier")]
    public string DefaultVendorTierDoc { get; init; } = "Default loot tier (1-8) for vendors not in any tier map. Wield requirements are capped at (tier * 50) — tier 1=50, tier 2=100, tier 3=150, etc. Items roll at tier to tier+1.";
    public int DefaultVendorTier { get; set; } = 2;

    [JsonPropertyName("// VendorLootMagicItemPercent")]
    public string VendorLootMagicItemPercentDoc { get; init; } = "Percentage of extra inventory slots filled with MagicItem-category loot (scrolls, wands, orbs) after base Item-category loot. 0 = no extra magic items.";
    public int VendorLootMagicItemPercent { get; set; } = 75;

    [JsonPropertyName("// VendorLootMundaneItemPercent")]
    public string VendorLootMundaneItemPercentDoc { get; init; } = "Percentage of extra inventory slots filled with MundaneItem-category loot (food, potions, components) after base loot. 0 = no extra mundane items.";
    public int VendorLootMundaneItemPercent { get; set; } = 40;

    [JsonPropertyName("// GiveNpcSingleStackWeenieTypes")]
    public string GiveNpcSingleStackWeenieTypesDoc { get; init; } = "WeenieTypes that receive the give clamp (typically Generic for trophies). Only applies when MaxStackSize > 1.";
    public List<WeenieType> GiveNpcSingleStackWeenieTypes { get; set; } = new() { WeenieType.Generic };

    [JsonPropertyName("// MaxSpecCredits")]
    public string MaxSpecCreditsDoc { get; init; } = "Total specialisation credits a player may spend. Vanilla cap is 70. Set to 9999 to make it effectively unlimited.";
    public int MaxSpecCredits { get; set; } = 9999;

    [JsonPropertyName("// Animations")]
    public string AnimationsSectionDoc { get; init; } = "DieSeconds: seconds between each /die broadcast speech step (not MotionTable; 0 = minimal delay). AnimationSpeeds: quoted MotionCommand names → seconds (0 = skip). Shipped preset is all zeros (instant). Use {} for vanilla motion-table lengths. Inside Animations: // lines first, then values (same order).";
    public AnimationSettings Animations { get; set; } = new();

    [JsonPropertyName("// Defaults")]
    public string DefaultsSectionDoc { get; init; } = "Four dictionaries: keys are ACE property enum names (PropertyInt64, PropertyInt, PropertyFloat, PropertyBool). Values apply only on first assignment when the player had no prior stored value. Empty {} means no defaults for that type. Inside Defaults: // lines first, then values (same order).";
    public DefaultsSettings Defaults { get; set; } = new();

    [JsonPropertyName("// Fellowship")]
    public string FellowshipSectionDoc { get; init; } = "SendDetails, MaxMembers, StopAtMaxFellowshipInvite, IgnoreBusy, OverrideSharePercent, FlatSharePercent, SharePercent table, DefaultShare. Inside Fellowship: // lines first, then values (same order).";
    public FellowshipSettings Fellowship { get; set; } = new();

    [JsonPropertyName("// Recklessness")]
    public string RecklessnessSectionDoc { get; init; } = "Power bar window (PowerLow/PowerHigh) and damage rating bonuses while Recklessness is active (trained vs specialized). Inside Recklessness: // lines first, then values (same order).";
    public RecklessnessSettings Recklessness { get; set; } = new();

    [JsonPropertyName("// Augmentation")]
    public string AugmentationSectionDoc { get; init; } = "IgnoreSharedAttribute / IgnoreSharedResist relax ACE group caps. MaxAugs merges per-type caps at startup. Inside Augmentation: // lines first, then values (same order).";
    public AugmentationSettings Augmentation { get; set; } = new();

    [JsonPropertyName("// QuestgiverAuras")]
    public string QuestgiverAurasSectionDoc { get; init; } = "Visual aura for creature quest-givers; AegisWcid must be a valid item WCID. Inside QuestgiverAuras: // lines first, then values (same order).";
    public QuestgiverAuraSettings QuestgiverAuras { get; set; } = new();

    [JsonPropertyName("// Stackable")]
    public string StackableSectionDoc { get; init; } = "MaxStackSize: cap for synthetic stacks. StackableWcids: explicit WCID whitelist — only items in this list receive stacking behavior.";
    public StackableSettings Stackable { get; set; } = new();

    [JsonPropertyName("// TownNetworkToll")]
    public string TownNetworkTollSectionDoc { get; init; } = "Bank PropertyInt64 for pyreals (align with LeyLineLedger CashProperty / AutoLoot), level-based fees, Loremaster QP discount from FakeFloat.QuestBonus, portal matching (substring / WCID / landblock). Inside TownNetworkToll: // lines first, then values (same order).";
    public TownNetworkTollSettings TownNetworkToll { get; set; } = new();

    [JsonPropertyName("// EnableKillXpMessage")]
    public string EnableKillXpMessageDoc { get; init; } = "Append XP earned to the kill notification: \"You killed Drudge Skulker! (48 xp)\" or \"(0.003%)\" depending on KillXpMessage.ShowPercent.";
    public bool EnableKillXpMessage { get; set; } = true;

    [JsonPropertyName("// KillXpMessage")]
    public string KillXpMessageSectionDoc { get; init; } = "ShowPercent: false = raw xp amount, true = percentage of XP toward next level.";
    public KillXpMessageSettings KillXpMessage { get; set; } = new();

    [JsonPropertyName("// EnableBundleGive")]
    public string EnableBundleGiveDoc { get; init; } = "When giving ≥BundleSize of a stackable WCID to an NPC, consume BundleSize items and multiply all emote rewards. Currency rewards auto-deposit to bank.";
    public bool EnableBundleGive { get; set; } = true;

    [JsonPropertyName("// BundleGive")]
    public string BundleGiveSectionDoc { get; init; } = "BundleSize: items consumed per bundle turn-in (default 10).";
    public BundleGiveSettings BundleGive { get; set; } = new();

    [JsonPropertyName("// EnableVendorPriceInflation")]
    public string EnableVendorPriceInflationDoc { get; init; } = "DEPRECATED — vendor pricing moved to LeyLineLedger. This toggle no longer has any effect.";
    public bool EnableVendorPriceInflation { get; set; } = false;

    [JsonPropertyName("// EnableNoDeathDrops")]
    public string EnableNoDeathDropsDoc { get; init; } = "When true, items never drop on death (including slippery/dropped-on-death items). Physical coins also do not drop. LeyLineLedger banked pyreals are unaffected.";
    public bool EnableNoDeathDrops { get; set; } = true;

    [JsonPropertyName("// VendorBuyRateMultiplier")]
    public string VendorBuyRateMultiplierDoc { get; init; } = "DEPRECATED — use LeyLineLedger Settings.json instead.";
    public double VendorBuyRateMultiplier { get; set; } = 5.0;

    [JsonPropertyName("// EnableVendorSpecialItemInflation")]
    public string EnableVendorSpecialItemInflationDoc { get; init; } = "When true, items with imbues, cantrips, or other special effects cost an additional VendorSpecialItemMultiplier on top of VendorBuyRateMultiplier.";
    public bool EnableVendorSpecialItemInflation { get; set; } = true;

    [JsonPropertyName("// VendorSpecialItemMultiplier")]
    public string VendorSpecialItemMultiplierDoc { get; init; } = "Extra multiplier for special vendor items (imbued, cantripped, etc.). Stacks with VendorBuyRateMultiplier. 3.0 = 3× on top of base inflation.";
    public double VendorSpecialItemMultiplier { get; set; } = 3.0;

    [JsonPropertyName("// EnablePetKillSummary")]
    public string EnablePetKillSummaryDoc { get; init; } = "Batch pet kill messages into a summary after an idle window, instead of sending a message per kill.";
    public bool EnablePetKillSummary { get; set; } = true;

    [JsonPropertyName("// PetKillSummaryWindowSeconds")]
    public string PetKillSummaryWindowSecondsDoc { get; init; } = "Idle window in seconds with no new pet kills before emitting a kill summary.";
    public int PetKillSummaryWindowSeconds { get; set; } = 30;

    [JsonPropertyName("// EnableXpTracker")]
    public string EnableXpTrackerDoc { get; init; } = "Track XP, luminance, and bank deposits per session. Provides /xp tracker and /xp spend commands.";
    public bool EnableXpTracker { get; set; } = true;

    [JsonPropertyName("// XpTrackerWindowMinutes")]
    public string XpTrackerWindowMinutesDoc { get; init; } = "Session window in minutes for /xp tracker display.";
    public int XpTrackerWindowMinutes { get; set; } = 60;

    [JsonPropertyName("// XpSpendStopBeforeMaxRanks")]
    public string XpSpendStopBeforeMaxRanksDoc { get; init; } = "Stop spending XP into a stat when it is within this many ranks of max (prevents overcapping).";
    public int XpSpendStopBeforeMaxRanks { get; set; } = 3;

    [JsonPropertyName("// XpSpend")]
    public string XpSpendSectionDoc { get; init; } = "XP spending skill weights for /xp spend. Skills not in CombatSkills or SocialSkills use SupportSkillWeight.";
    public XpSpendSettings XpSpend { get; set; } = new();

    [JsonPropertyName("// EnableAutoBuff")]
    public string EnableAutoBuffDoc { get; init; } = "Auto-buff system: /buffs to cast best known buffs, /buffs auto for timer-based recasting.";
    public bool EnableAutoBuff { get; set; } = true;

    [JsonPropertyName("// AutoBuff")]
    public string AutoBuffSectionDoc { get; init; } = "Auto-buff: check interval, recast buffer, toggle property id.";
    public AutoBuffSettings AutoBuff { get; set; } = new();
}

public class KillXpMessageSettings
{
    [JsonPropertyName("// ShowRaw")]
    public string ShowRawDoc { get; init; } = "Show raw XP amount from the kill (e.g. '48 xp').";
    public bool ShowRaw { get; set; } = true;

    [JsonPropertyName("// ShowPercent")]
    public string ShowPercentDoc { get; init; } = "Show kill XP as percentage of current level window (e.g. '0.003%').";
    public bool ShowPercent { get; set; } = false;

    [JsonPropertyName("// ShowEstimatedKills")]
    public string ShowEstimatedKillsDoc { get; init; } = "Show estimated kills of this creature needed to reach next level (e.g. '~234 kills to level').";
    public bool ShowEstimatedKills { get; set; } = false;
}

public enum TownNetworkPortalMatchMode
{
    Substring,
    WcidList,
    Combined,
}

public enum TownNetworkInsufficientFundsMode
{
    Block,
    DrainAll,
}

public class TownNetworkTollSettings
{
    [JsonPropertyName("// EnableDynamicPricing")]
    public string EnableDynamicPricingDoc { get; init; } = "When true, toll fees scale with server economy (shared with VendorLootRotation) and character level.";
    public bool EnableDynamicPricing { get; set; } = true;

    [JsonPropertyName("// LevelScalingMaxMultiplier")]
    public string LevelScalingMaxMultiplierDoc { get; init; } = "Maximum level scaling multiplier at max level (default 3.0 = 3× at level 275).";
    public double LevelScalingMaxMultiplier { get; set; } = 3.0;

    [JsonPropertyName("// BaseLevelMultiplier")]
    public string BaseLevelMultiplierDoc { get; init; } = "Flat multiplier applied after all other calculations.";
    public double BaseLevelMultiplier { get; set; } = 1.0;

    [JsonPropertyName("// BankCashProperty")]
    public string BankCashPropertyDoc { get; init; } = "PropertyInt64 id for banked pyreals (default 39999; match LeyLineLedger/AutoLoot).";
    public int BankCashProperty { get; set; } = 39999;

    [JsonPropertyName("// FeeBelow50Min")]
    public string FeeBelow50MinDoc { get; init; } = "Minimum toll for characters below level 50.";
    public long FeeBelow50Min { get; set; } = 10_000;

    [JsonPropertyName("// FeeBelow50Max")]
    public string FeeBelow50MaxDoc { get; init; } = "Maximum toll for characters below level 50.";
    public long FeeBelow50Max { get; set; } = 50_000;

    [JsonPropertyName("// Fee50to100Min")]
    public string Fee50to100MinDoc { get; init; } = "Minimum toll for characters level 50-100.";
    public long Fee50to100Min { get; set; } = 50_001;

    [JsonPropertyName("// Fee50to100Max")]
    public string Fee50to100MaxDoc { get; init; } = "Maximum toll for characters level 50-100.";
    public long Fee50to100Max { get; set; } = 100_000;

    [JsonPropertyName("// FeeAbove100Min")]
    public string FeeAbove100MinDoc { get; init; } = "Minimum toll for characters above level 100.";
    public long FeeAbove100Min { get; set; } = 250_000;

    [JsonPropertyName("// FeeAbove100Max")]
    public string FeeAbove100MaxDoc { get; init; } = "Maximum toll for characters above level 100.";
    public long FeeAbove100Max { get; set; } = 1_250_000;

    [JsonPropertyName("// QpPerThousandForDiscountStep")]
    public string QpPerThousandForDiscountStepDoc { get; init; } = "Each full block of this much FakeFloat.QuestBonus (Loremaster QP) applies DiscountPercentPerStep to the fee (multiplicative stack, uncapped toward 0 cost).";
    public int QpPerThousandForDiscountStep { get; set; } = 1000;

    [JsonPropertyName("// DiscountPercentPerStep")]
    public string DiscountPercentPerStepDoc { get; init; } = "Fraction subtracted per step (e.g. 0.05 = 5% off per 1000 QP at default step size).";
    public double DiscountPercentPerStep { get; set; } = 0.05;

    [JsonPropertyName("// MatchMode")]
    public string MatchModeDoc { get; init; } = "Substring: Name/AppraisalPortalDestination contains NameSubstring. WcidList: WeenieClassId in Wcids (non-empty list). Combined: substring OR (non-empty Wcids match) OR (non-empty LandblockIds match).";
    public TownNetworkPortalMatchMode MatchMode { get; set; } = TownNetworkPortalMatchMode.Combined;

    [JsonPropertyName("// NameSubstring")]
    public string NameSubstringDoc { get; init; } = "Case-insensitive substring for TN portals (e.g. Town Network). Used in Substring and Combined modes.";
    public string NameSubstring { get; set; } = "Town Network";

    [JsonPropertyName("// Wcids")]
    public string WcidsDoc { get; init; } =
        "Optional portal WeenieClassIds for TN (WcidList or Combined). Default list: retail / common TN portals (42852, 43020, 43065-43067).";
    public List<uint> Wcids { get; set; } =
    [
        42852, // Portal to Town Network
        43020, // Town Network Portal Gem
        43065, // Portal to Town Network
        43066, // Portal to Town Network
        43067, // Portal to Town Network
    ];

    [JsonPropertyName("// LandblockIds")]
    public string LandblockIdsDoc { get; init; } = "Optional landblock ids (ushort as JSON numbers) where the portal stands; used in Combined when non-empty.";
    public List<ushort> LandblockIds { get; set; } = new();

    [JsonPropertyName("// ChargeMarketplaceRecall")]
    public string ChargeMarketplaceRecallDoc { get; init; } = "When true, /market-style recall (HandleActionTeleToMarketPlace) uses the same toll and debit before teleport.";
    public bool ChargeMarketplaceRecall { get; set; } = true;

    [JsonPropertyName("// InsufficientFundsMode")]
    public string InsufficientFundsModeDoc { get; init; } = "Block: cannot use portal if bank < computed fee. DrainAll: if 0 < bank < fee, debit entire bank and allow travel.";
    public TownNetworkInsufficientFundsMode InsufficientFundsMode { get; set; } = TownNetworkInsufficientFundsMode.Block;

    [JsonPropertyName("// ScarabWcids")]
    public string ScarabWcidsDoc { get; init; } = "WCIDs of scarabs that can be taken as toll payment.";
    public List<uint> ScarabWcids { get; set; } =
    [
        686,   // Copper Scarab
        687,   // Gold Scarab
        688,   // Silver Scarab
        689,   // Iron Scarab
        690,   // Pyreal Scarab
        691,   // Lead Scarab
        7299,  // Diamond Scarab
        8897,  // Platinum Scarab
        37155, // Mana Scarab
    ];

    [JsonPropertyName("// TaperWcid")]
    public string TaperWcidDoc { get; init; } = "WCID of Prismatic Tapers that can be taken as toll payment.";
    public uint TaperWcid { get; set; } = 20631;

    [JsonPropertyName("// MinScarabThreshold")]
    public string MinScarabThresholdDoc { get; init; } = "Never take scarabs if it would leave the player with fewer than this many remaining.";
    public int MinScarabThreshold { get; set; } = 5;

    [JsonPropertyName("// MinTaperThreshold")]
    public string MinTaperThresholdDoc { get; init; } = "Never take tapers if it would leave the player with fewer than this many remaining.";
    public int MinTaperThreshold { get; set; } = 50;

    [JsonPropertyName("// TaperTakePercentMin")]
    public string TaperTakePercentMinDoc { get; init; } = "Minimum percentage of tapers to take (inclusive).";
    public int TaperTakePercentMin { get; set; } = 9;

    [JsonPropertyName("// TaperTakePercentMax")]
    public string TaperTakePercentMaxDoc { get; init; } = "Maximum percentage of tapers to take (inclusive).";
    public int TaperTakePercentMax { get; set; } = 25;

    [JsonPropertyName("// ScarabTakePercent")]
    public string ScarabTakePercentDoc { get; init; } = "Percentage of chosen scarab stack to take (rounded up, minimum 1).";
    public int ScarabTakePercent { get; set; } = 5;
}

public class BypassPortalRestrictionsSettings
{
    [JsonPropertyName("// BypassPortalUseRequirements")]
    public string BypassPortalUseRequirementsDoc { get; init; } = "Bypass level, quest, race, gender, and portal bitmask restrictions when using portals.";
    public bool BypassPortalUseRequirements { get; set; } = true;

    [JsonPropertyName("// BypassDungeonRecall")]
    public string BypassDungeonRecallDoc { get; init; } = "Allow recall from dungeons and other recall-disabled landblocks.";
    public bool BypassDungeonRecall { get; set; } = true;

    [JsonPropertyName("// BypassBusyRecall")]
    public string BypassBusyRecallDoc { get; init; } = "Allow recall while casting, using items, or otherwise busy.";
    public bool BypassBusyRecall { get; set; } = true;

    [JsonPropertyName("// BypassPKTimerRecall")]
    public string BypassPKTimerRecallDoc { get; init; } = "Allow recall immediately after PK combat without waiting for the timer.";
    public bool BypassPKTimerRecall { get; set; } = true;

    [JsonPropertyName("// BypassOlthoiRecall")]
    public string BypassOlthoiRecallDoc { get; init; } = "Allow olthoi characters to use all recall types.";
    public bool BypassOlthoiRecall { get; set; } = true;
}

public class AutoBuffSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, /buffs commands are available.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// TogglePropertyId")]
    public string TogglePropertyIdDoc { get; init; } = "PropertyInt for storing auto-buff toggle state per character (1 = on, 0 = off).";
    public int TogglePropertyId { get; set; } = 45215;

    [JsonPropertyName("// CheckIntervalSeconds")]
    public string CheckIntervalSecondsDoc { get; init; } = "How often to check and recast expiring buffs (seconds).";
    public int CheckIntervalSeconds { get; set; } = 60;

    [JsonPropertyName("// RecastBufferSeconds")]
    public string RecastBufferSecondsDoc { get; init; } = "Recast buffs when they have less than this many seconds remaining.";
    public int RecastBufferSeconds { get; set; } = 60;
}

public class XpSpendSettings
{
    [JsonPropertyName("// AttributeVitalWeight")]
    public string AttributeVitalWeightDoc { get; init; } = "Weight for attributes and vitals relative to skills. Higher = more XP allocated to attributes/vitals.";
    public int AttributeVitalWeight { get; set; } = 1;

    [JsonPropertyName("// CombatSkills")]
    public string CombatSkillsDoc { get; init; } = "Skill names (ACE Skill enum) considered combat for weighting (e.g. Sword, MagicAttack).";
    public List<string> CombatSkills { get; set; } = new();

    [JsonPropertyName("// CombatSkillWeight")]
    public string CombatSkillWeightDoc { get; init; } = "Weight for combat skills.";
    public int CombatSkillWeight { get; set; } = 2;

    [JsonPropertyName("// SocialSkills")]
    public string SocialSkillsDoc { get; init; } = "Skill names considered social for weighting (e.g. Salvaging, Appraise).";
    public List<string> SocialSkills { get; set; } = new();

    [JsonPropertyName("// SocialSkillWeight")]
    public string SocialSkillWeightDoc { get; init; } = "Weight for social skills.";
    public int SocialSkillWeight { get; set; } = 1;

    [JsonPropertyName("// SupportSkillWeight")]
    public string SupportSkillWeightDoc { get; init; } = "Weight for all other skills not in CombatSkills or SocialSkills.";
    public int SupportSkillWeight { get; set; } = 1;
}
