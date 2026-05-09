namespace LeyLineLedger;

public enum VendorPricingMode
{
    Vanilla,
    SimpleMultiplier,
    EconomyBalancer
}

public class Settings
{
    [JsonPropertyName("// LeyLineLedgerSettings")]
    public string LeyLineLedgerSettingsDoc { get; init; } = "Reading order: below this line, every // key is documentation; the next block lists real settings in the same order. LeyLineLedger routes vendor trade and pyreals through bank-style PropertyInt64 storage, optional luminance gem withdrawal, death bank tax, and currency denomination tables. Items and Currencies arrays: each element is an object with // lines first, then Name/Id/Prop or Name/Id/Value (same order).";

    [JsonPropertyName("// EnableLockpickAutoBank")]
    public string EnableLockpickAutoBankDoc { get; init; } = "When true, lockpick items picked up by characters with Lockpick trained/spec'd are auto-converted to banked Lockpick Durability (PropertyInt64 40130). Limitless Lockpick (WCID 30253) activates passive regen via BetterSupportSkills.";
    public bool EnableLockpickAutoBank { get; set; } = true;

    [JsonPropertyName("// LockpickBankingAchievementId")]
    public string LockpickBankingAchievementIdDoc { get; init; } = "If non-empty, players who have earned this AchievementUnlocked achievement ID also qualify for lockpick auto-banking, even without the Lockpick skill trained. E.g. \"LockpickMastery\". Empty string = skill-only gate.";
    public string LockpickBankingAchievementId { get; set; } = "";

    [JsonPropertyName("// EnablePathwardenAutoBank")]
    public string EnablePathwardenAutoBankDoc { get; init; } = "DEPRECATED — use EnableQuestSalvageAutoBank instead. Kept for backward compatibility. When true, Pathwarden NPC rewards (Sturdy Iron Keys) are deposited directly to bank. Granite/Steel bags have moved to the unified quest salvage system.";
    public bool EnablePathwardenAutoBank { get; set; } = true;

    [JsonPropertyName("// EnableQuestSalvageAutoBank")]
    public string EnableQuestSalvageAutoBankDoc { get; init; } = "When true, quest salvage bags (Clutch of Kings, Pathwarden, and similar reward bags) are automatically converted to banked material units on acquisition. Covers all sources: NPC emotes, quest scripts, and loot. Maps quest bag WCIDs to their regular salvage equivalents.";
    public bool EnableQuestSalvageAutoBank { get; set; } = true;

    [JsonPropertyName("// ValidateWeeniesAtStartup")]
    public string ValidateWeeniesAtStartupDoc { get; init; } = "When true, validates required weenies at mod startup and logs missing or mismatched entries.";
    public bool ValidateWeeniesAtStartup { get; set; } = true;

    [JsonPropertyName("// VendorsUseBank")]
    public string VendorsUseBankDoc { get; init; } = "When true, vendor buy/sell uses bank balances instead of only inventory pyreals.";
    public bool VendorsUseBank { get; set; } = true;

    [JsonPropertyName("// DirectDeposit")]
    public string DirectDepositDoc { get; init; } = "When true, incoming currency can deposit directly per mod rules.";
    public bool DirectDeposit { get; set; } = true;

    [JsonPropertyName("// EnableVendorSellRateReduction")]
    public string EnableVendorSellRateReductionDoc { get; init; } = "When true, reduces the amount vendors pay players for sold items by VendorSellRateMultiplier.";
    public bool EnableVendorSellRateReduction { get; set; } = true;

    [JsonPropertyName("// VendorSellRateMultiplier")]
    public string VendorSellRateMultiplierDoc { get; init; } = "Multiplier on vendor payout when players sell items (e.g. 0.03 = 3% of normal value). Patches Vendor.BuyPrice so client sell UI and server-side payouts are consistent.";
    public double VendorSellRateMultiplier { get; set; } = 0.03;

    [JsonPropertyName("// VendorMinSellPayoutPyreals")]
    public string VendorMinSellPayoutPyrealsDoc { get; init; } = "When > 0, GetBuyCost payouts (player selling to vendor) are raised to at least this many pyreals when the computed payout is positive but below the floor. 0 disables.";
    public int VendorMinSellPayoutPyreals { get; set; } = 1500;

    [JsonPropertyName("// VendorPricingMode")]
    public string VendorPricingModeDoc { get; init; } = "How vendor buy prices are calculated. Vanilla = retail ACE behavior, SimpleMultiplier = flat BuyPrice multiplier, EconomyBalancer = dynamic scaling based on total server banked pyreals (default).";
    public VendorPricingMode VendorPricingMode { get; set; } = VendorPricingMode.EconomyBalancer;

    [JsonPropertyName("// VendorBuyPriceMultiplier")]
    public string VendorBuyPriceMultiplierDoc { get; init; } = "Flat multiplier for what players PAY to BUY items from vendors when VendorPricingMode = SimpleMultiplier. 1.0 = retail, 5.0 = 5x. When WorldEvents.dll is present, SaleVendorPriceMultiplier and active-sale discount stack on top (reflection). Patches Vendor.SellPrice for client+server sync.";
    public double VendorBuyPriceMultiplier { get; set; } = 5.0;

    [JsonPropertyName("// VendorPriceVariance")]
    public string VendorPriceVarianceDoc { get; init; } = "Adds a small random variance to vendor buy prices so they feel organic instead of perfectly round numbers. 0.1 = ±10% variance (e.g., 500 pyreals becomes 450–550). 0 = disabled.";
    public double VendorPriceVariance { get; set; } = 0.1;

    [JsonPropertyName("// VendorWcidsExcludedFromEconomyPricing")]
    public string VendorWcidsExcludedFromEconomyPricingDoc { get; init; } = "Vendor WCIDs that skip LeyLineLedger buy/sell rate patches (retail weenie SellPrice/BuyPrice only). WorldEvents sale multipliers still apply when that mod is loaded. Default: shadow armor smith NPCs.";
    public List<uint> VendorWcidsExcludedFromEconomyPricing { get; set; } = new()
    {
        6592, 6625, 6626, 8124, 8125, 8126
    };

    [JsonPropertyName("// EnableDynamicVendorPricing")]
    public string EnableDynamicVendorPricingDoc { get; init; } = "DEPRECATED — use VendorPricingMode = EconomyBalancer instead. Kept for backward compatibility.";
    public bool EnableDynamicVendorPricing { get; set; } = true;

    [JsonPropertyName("// DynamicVendorPricingBaseMultiplier")]
    public string DynamicVendorPricingBaseMultiplierDoc { get; init; } = "Base multiplier applied before economy scaling when VendorPricingMode = EconomyBalancer.";
    public double DynamicVendorPricingBaseMultiplier { get; set; } = 5.0;

    [JsonPropertyName("// DynamicVendorPricingEconomyDivisor")]
    public string DynamicVendorPricingEconomyDivisorDoc { get; init; } = "Divisor for economy scaling. Total banked pyreals / divisor = additional multiplier. Default 100M means 100,000,000 pyreals = 1.0x extra multiplier.";
    public double DynamicVendorPricingEconomyDivisor { get; set; } = 100_000_000.0;

    [JsonPropertyName("// AccountWideBank")]
    public string AccountWideBankDoc { get; init; } = "When true, standard (non–challenge mode) characters share LeyLineLedger bank balances per account (account id > character guid > name). Challenge mode uses per-character bank until merge on /cm quit or similar; see ChallengeModes + AccountBank API.";
    public bool AccountWideBank { get; set; } = true;

    [JsonPropertyName("// MaxCoinsDropped")]
    public string MaxCoinsDroppedDoc { get; init; } = "Cap on physical coin stacks dropped as change; 0 uses mod default behavior.";
    public int MaxCoinsDropped { get; set; } = 0;

    [JsonPropertyName("// Items")]
    public string ItemsDoc { get; init; } = "Non-pyreal bankables: each entry maps a WCID to a character PropertyInt64 for stored amount. Inside each item: // lines first, then Name, Id, Prop (same order).";
    public List<BankItem> Items { get; set; } = new()
    {
        new() { Name = "MMD", Id = 20630, Prop = 40000 },
        new() { Name = "Infused Amber Shard", Id = 52968, Prop = 40001 },
        new() { Name = "Small Olthoi Venom Sac", Id = 36376, Prop = 40002 },
        new() { Name = "A'nekshay Token", Id = 44240, Prop = 40003 },
        new() { Name = "Ornate Gear Marker", Id = 43142, Prop = 40004 },
        new() { Name = "Colosseum Coin", Id = 36518, Prop = 40005 },
        new() { Name = "Ancient Mhoire Coin", Id = 35383, Prop = 40006 },
        new() { Name = "Promissory Note", Id = 43901, Prop = 40007 },
        new() { Name = "Mutated Olthoi Gland", Id = 43747, Prop = 40008 },
        new() { Name = "Writ of Refuge", Id = 11710, Prop = 40114 },
        new() { Name = "Sturdy Iron Key (1kD)", Id = 6876, Prop = 40250 },
        new() { Name = "Sturdy Steel Key (1kC)", Id = 24477, Prop = 40500 },
        new() { Name = "Mana Forge Key (5kD)", Id = 38456, Prop = 40750 },
        new() { Name = "Legendary Key (5kC)", Id = 48746, Prop = 41000 },
        new() { Name = "Lesser Coalesced Mana (Awaken I, Lv.25)", Id = 800000, Prop = 41100, Aliases = new() { "lcm", "lesser" } },
        new() { Name = "Greater Coalesced Mana (Awaken II, Lv.50)", Id = 800001, Prop = 41101, Aliases = new() { "gcm", "greater" } },
        new() { Name = "Aetheric Coalesced Mana (Awaken III, Lv.75)", Id = 800002, Prop = 41102, Aliases = new() { "acm", "aetheric" } },
    };

    [JsonPropertyName("// ExcessSetToMax")]
    public string ExcessSetToMaxDoc { get; init; } = "When true, amounts above limits are clamped to the cap instead of failing.";
    public bool ExcessSetToMax { get; set; } = true;

    [JsonPropertyName("// LuminanceProperty")]
    public string LuminancePropertyDoc { get; init; } = "Character biota PropertyInt64 id for banked luminance.";
    public int LuminanceProperty { get; set; } = 39998;

    [JsonPropertyName("// EnablePreUnlockLuminanceBanking")]
    public string EnablePreUnlockLuminanceBankingDoc { get; init; } = "When true, luminance earned before unlocking the luminance quest is banked to LeyLineLedger instead of being lost.";
    public bool EnablePreUnlockLuminanceBanking { get; set; } = true;

    [JsonPropertyName("// CashProperty")]
    public string CashPropertyDoc { get; init; } = "Character biota PropertyInt64 id for banked pyreals; align with AutoLoot BankCashProperty if used (default 39999).";
    public int CashProperty { get; set; } = 39999;

    [JsonPropertyName("// AltCurrencyProperty")]
    public string AltCurrencyPropertyDoc { get; init; } = "Character biota PropertyInt64 id for banked Zefs (universal alt currency).";
    public int AltCurrencyProperty { get; set; } = 40120;

    [JsonPropertyName("// AltCurrencyValues")]
    public string AltCurrencyValuesDoc { get; init; } = "WCID to Zefs conversion value (×100 for scale). Must have corresponding BankItem entry.";
    public Dictionary<uint, int> AltCurrencyValues { get; set; } = new()
    {
        { 36376, 100 },  // Small Olthoi Venom Sac (was 1)
        { 44240, 500 },  // A'nekshay Token (was 5)
        { 43142, 300 },  // Ornate Gear Marker (was 3)
        { 36518, 500 },  // Colosseum Coin (was 5)
        { 35383, 300 },  // Ancient Mhoire Coin (was 3)
        { 43901, 100 },  // Promissory Note (was 1)
        { 43747, 100 },  // Mutated Olthoi Gland
        { 11710, 500 }, // Writ of Refuge (was 5)
    };

    [JsonPropertyName("// LuminanceGemWeenieClassId")]
    public string LuminanceGemWeenieClassIdDoc { get; init; } = "/bank withdraw luminance creates this gem WCID carrying banked luminance; 0 disables. Default 7897 is stock ACE Black Garnet.";
    public uint LuminanceGemWeenieClassId { get; set; } = 7897;

    [JsonPropertyName("// LuminanceGemStoredAmountProperty")]
    public string LuminanceGemStoredAmountPropertyDoc { get; init; } = "PropertyInt64 on the gem item storing credited luminance on use; pick an unused id for your shard.";
    public int LuminanceGemStoredAmountProperty { get; set; } = 45213;

    [JsonPropertyName("// DeathBankPyrealPercent")]
    public string DeathBankPyrealPercentDoc { get; init; } = "On death, remove floor(banked × percent / 100) pyreals from bank; 0 = no loss.";
    public int DeathBankPyrealPercent { get; set; } = 0;

    [JsonPropertyName("// DeathBankPyrealMaxLossPerDeath")]
    public string DeathBankPyrealMaxLossPerDeathDoc { get; init; } = "0 = unlimited. When > 0, caps pyreals removed per death after percent.";
    public long DeathBankPyrealMaxLossPerDeath { get; set; } = 0;

    [JsonPropertyName("// SalvageBank")]
    public string SalvageBankDoc { get; init; } =
        "Optional /bank salvage: deposit stack salvages into banked work units per DepositRules row (PropertyInt64 per material via FirstMaterialBankPropertyId + index or BankProperty).";
    public SalvageBankSettings SalvageBank { get; set; } = new();

    [JsonPropertyName("// HouseStorage")]
    public string HouseStorageDoc { get; init; } = "House storage upgrades: bank-only costs, tier table, PropertyInt bonus slots / tier index.";
    public HouseStorageSettings HouseStorage { get; set; } = new();

    [JsonPropertyName("// Currencies")]
    public string CurrenciesDoc { get; init; } = "Pyreal denomination table: WCID and Value per unit for making change. Inside each entry: // lines first, then Name, Id, Value (same order).";
    public List<CurrencyItem> Currencies { get; set; } = new()
    {
        new() { Name = "Pyreal", Id = 273, Value = 1 },
        new() { Name = "I", Id = 2621, Value = 100 },
        new() { Name = "V", Id = 2622, Value = 500 },
        new() { Name = "X", Id = 2623, Value = 1000 },
        new() { Name = "L", Id = 2624, Value = 5000 },
        new() { Name = "C", Id = 2625, Value = 10000 },
        new() { Name = "D", Id = 2626, Value = 50000 },
        new() { Name = "M", Id = 2627, Value = 100000 },
        new() { Name = "CL", Id = 7374, Value = 15000 },
        new() { Name = "CC", Id = 7375, Value = 20000 },
        new() { Name = "CCL", Id = 7376, Value = 25000 },
        new() { Name = "DCCL", Id = 7377, Value = 75000 },
        new() { Name = "MD", Id = 20628, Value = 150000 },
        new() { Name = "MM", Id = 20629, Value = 200000 },
        new() { Name = "MMD", Id = 20630, Value = 250000 },
        new() { Name = "CashSink", Id = 40652, Value = 50 * 250000 },
    };

    [JsonPropertyName("// EconomyBalancer")]
    public string EconomyBalancerDoc { get; init; } =
        "Optional self-balancing economy: periodically scans player bank balances and adjusts PyrealValue per currency based on rarity. Disabled by default.";
    public EconomyBalancerSettings EconomyBalancer { get; set; } = new();

    [JsonPropertyName("// ValheelCryptoIntegration")]
    public string ValheelCryptoIntegrationDoc { get; init; } = "Optional: when Valheel custom currencies (AshCoin, Credit, etc.) are detected, manage CryptoUp1–5 event states based on supply ratio instead of random NPC heartbeats.";
    public ValheelCryptoIntegrationSettings ValheelCryptoIntegration { get; set; } = new();

    [JsonPropertyName("// LootTracker")]
    public string LootTrackerDoc { get; init; } = "Tracks frequently looted items for economy insights.";
    public LootTrackerSettings LootTracker { get; set; } = new();

    [JsonPropertyName("// PublicExchange")]
    public string PublicExchangeDoc { get; init; } = "Public exchange: players can buy/sell banked items with dynamic pool pricing.";
    public PublicExchangeSettings PublicExchange { get; set; } = new();

    [JsonPropertyName("// SkeletonKeyAppraisal")]
    public string SkeletonKeyAppraisalDoc { get; init; } =
        "Optional appraisal postfix on skeleton key LongDesc: lock cap hint (1kD/1kC/5kD/5kC) aligned with BetterKeys PatchClass.EnsureKeyMap.";
    public SkeletonKeyAppraisalSettings SkeletonKeyAppraisal { get; set; } = new();

    [JsonPropertyName("// Lottery")]
    public string LotteryDoc { get; init; } = "Weekly lottery fed by exchange sell tax. Virtual tickets purchased with banked pyreals.";
    public LotterySettings Lottery { get; set; } = new();
}

public class BankItem
{
    [JsonPropertyName("// Name")]
    public string NameDoc { get; init; } = "Display name for logs and UI (informational).";
    public string Name { get; set; } = "";

    [JsonPropertyName("// Id")]
    public string IdDoc { get; init; } = "Weenie class id (WCID) of the bankable stack item.";
    public uint Id { get; set; }

    [JsonPropertyName("// Prop")]
    public string PropDoc { get; init; } = "Character biota PropertyInt64 id storing banked quantity for this WCID.";
    public int Prop { get; set; }

    // Optional: additional WCIDs that deposit into the same Prop (e.g. BetterKeys skeleton key variants squished into one /bank line).
    [JsonPropertyName("// VariantWeenieClassIds")]
    public string VariantWeenieClassIdsDoc { get; init; } = "Optional. Extra WCIDs removed from inventory and credited to this same Prop when depositing (after canonical Id).";
    [JsonPropertyName("VariantWeenieClassIds")]
    public List<uint> VariantWeenieClassIds { get; set; } = new();

    // Optional: short aliases for fuzzy command matching (e.g. "lcm" for "Lesser Coalesced Mana").
    [JsonPropertyName("// Aliases")]
    public string AliasesDoc { get; init; } = "Optional short aliases for fuzzy /bank withdraw matching (e.g. [\"lcm\", \"lesser\"]).";
    [JsonPropertyName("Aliases")]
    public List<string> Aliases { get; set; } = new();
}

public class SalvageBankSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, /bank salvage commands are available.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// DirectDepositOnSalvage")]
    public string DirectDepositOnSalvageDoc { get; init; } =
        "When true, salvage stacks created by recipes (salvage bench, tinkering output, etc.) credit the same bank props as /bank salvage deposit instead of landing in your pack.";
    public bool DirectDepositOnSalvage { get; set; } = true;

    [JsonPropertyName("// FirstMaterialBankPropertyId")]
    public string FirstMaterialBankPropertyIdDoc { get; init; } =
        "Rule index i uses FirstMaterialBankPropertyId + i unless the rule sets BankProperty. Reserve a contiguous block (count = DepositRules.Count) that does not overlap other shard props.";
    public int FirstMaterialBankPropertyId { get; set; } = 40201;

    [JsonPropertyName("// LegacyPooledSalvagePropertyToClear")]
    public string LegacyPooledSalvagePropertyToClearDoc { get; init; } =
        "If > 0, any positive balance on this PropertyInt64 (old single-pool salvage) is zeroed the next time the character uses a /bank salvage command, with a short message. Default 40200 matches former BankedUnitsProperty; set to 0 after migration or if unused.";
    public int LegacyPooledSalvagePropertyToClear { get; set; } = 40200;

    [JsonPropertyName("// DepositRules")]
    public string DepositRulesDoc { get; init; } =
        "Each rule: credit (material units removed)×UnitsPerItem. Units per object: StackSize if stacked; else Structure (partial/full bags, often with MaxStructure cap 100) or NumItemsInMaterial; else trailing \"(N)\" in Name.";
    public List<SalvageDepositRule> DepositRules { get; set; } = new();

    [JsonPropertyName("// Redeem")]
    public string RedeemDoc { get; init; } =
        "Per-material /bank salvage redeem <material or WCID> [bags].";
    public SalvageRedeemSettings Redeem { get; set; } = new();

    [JsonPropertyName("// ShowWcidsInSalvageStatus")]
    public string ShowWcidsInSalvageStatusDoc { get; init; } =
        "When true, /bank salvage status appends [WCID n] for each material. When false, names only unless the player toggled debug (see SalvageStatusWcidsTogglePropertyId).";
    public bool ShowWcidsInSalvageStatus { get; set; }

    [JsonPropertyName("// SalvageStatusWcidsTogglePropertyId")]
    public string SalvageStatusWcidsTogglePropertyIdDoc { get; init; } =
        "Optional PropertyInt on the character: non-zero means players can use /bank salvage debug to flip 0/1; when 1, status lines show WCIDs like ShowWcidsInSalvageStatus. Reserve an unused id (e.g. 40190). 0 disables the toggle.";
    public int SalvageStatusWcidsTogglePropertyId { get; set; }
}

public class SalvageRedeemSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, /bank salvage redeem is available.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// UnitsPerBag")]
    public string UnitsPerBagDoc { get; init; } = "Banked work units debited per output bag (fixed 100 if you keep default).";
    public int UnitsPerBag { get; set; } = 100;

    [JsonPropertyName("// OutputWorkmanship")]
    public string OutputWorkmanshipDoc { get; init; } = "If 1–10, sets Workmanship on the created bag so it matches manual salvage quality; 0 = leave weenie defaults.";
    public int OutputWorkmanship { get; set; } = 10;
}

public enum SalvageSkillCategory
{
    ArmorTinkering,
    WeaponTinkering,
    ItemTinkering,
    MagicItemTinkering,
    Special,
    Useless
}

public class SalvageDepositRule
{
    [JsonPropertyName("// Category")]
    public string CategoryDoc { get; init; } = "Tinkering skill category for display grouping: ArmorTinkering, WeaponTinkering, ItemTinkering, MagicItemTinkering, Special, Useless.";
    public SalvageSkillCategory Category { get; set; } = SalvageSkillCategory.Useless;

    [JsonPropertyName("// Description")]
    public string DescriptionDoc { get; init; } = "Full description of what this salvage does (from wiki). Displayed in /bank salvage status.";
    public string Description { get; set; } = "";
    [JsonPropertyName("// Name")]
    public string NameDoc { get; init; } = "Display name for messages.";
    public string Name { get; set; } = "";

    [JsonPropertyName("// Effect")]
    public string EffectDoc { get; init; } = "Optional description of what this salvage does when tinkered (e.g. '+60 AL', '+3 Damage'). Displayed in /bank salvage status.";
    public string Effect { get; set; } = "";

    [JsonPropertyName("// WeenieClassId")]
    public string WeenieClassIdDoc { get; init; } = "Item WCID to salvage into units.";
    public uint WeenieClassId { get; set; }

    [JsonPropertyName("// UnitsPerItem")]
    public string UnitsPerItemDoc { get; init; } =
        "Units credited per material unit removed (stack size, or NumItemsInMaterial when StackSize is 1).";
    public int UnitsPerItem { get; set; } = 1;

    [JsonPropertyName("// BankProperty")]
    public string BankPropertyDoc { get; init; } =
        "Optional override PropertyInt64 for this material. Default 0 uses FirstMaterialBankPropertyId + index of this rule in DepositRules (do not reorder rules without migrating props).";
    public int BankProperty { get; set; }

    [JsonPropertyName("// OutputBagWeenieClassId")]
    public string OutputBagWeenieClassIdDoc { get; init; } =
        "When non-zero, redeem creates this WCID (e.g. retail full-bag weenie). When zero, redeem creates the stack salvage WeenieClassId and sets StackSize or Structure to UnitsPerBag. Deposit also accepts this WCID back when non-zero and different from WeenieClassId.";
    public uint OutputBagWeenieClassId { get; set; }

    [JsonPropertyName("// AdditionalDepositWeenieClassIds")]
    public string AdditionalDepositWeenieClassIdsDoc { get; init; } =
        "Optional extra WCIDs that credit this material on deposit (e.g. alternate retail bag ids) without changing redeem. De-duplicated with WeenieClassId and OutputBagWeenieClassId.";
    [JsonPropertyName("AdditionalDepositWeenieClassIds")]
    public List<uint> AdditionalDepositWeenieClassIds { get; set; } = new();

    [JsonPropertyName("// ExchangeValue")]
    public string ExchangeValueDoc { get; init; } = "Pyreal value per bag for public exchange trading. 0 = not exchangeable.";
    public long ExchangeValue { get; set; } = 0;
}

public class HouseStorageSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, /house upgrade storage (or /housestorage) uses bank debits and tier table.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// BonusSlotsProperty")]
    public string BonusSlotsPropertyDoc { get; init; } = "PropertyInt: total extra house storage slots granted by this mod (for server wiring / Harmony).";
    public int BonusSlotsProperty { get; set; } = 40115;

    [JsonPropertyName("// TierIndexProperty")]
    public string TierIndexPropertyDoc { get; init; } = "PropertyInt: number of storage upgrades purchased.";
    public int TierIndexProperty { get; set; } = 40116;

    [JsonPropertyName("// Tiers")]
    public string TiersDoc { get; init; } = "Per upgrade: slots added, MMD and Writ of Refuge debited from LeyLineLedger bank (Props 40000 / writ entry).";
    public List<HouseStorageTier> Tiers { get; set; } = new()
    {
        new HouseStorageTier { SlotsAdded = 5, MmdFromBank = 1, WritFromBank = 0 },
        new HouseStorageTier { SlotsAdded = 5, MmdFromBank = 1, WritFromBank = 1 },
    };
}

public class HouseStorageTier
{
    [JsonPropertyName("// SlotsAdded")]
    public string SlotsAddedDoc { get; init; } = "Extra slots this purchase adds (tracked on character).";
    public int SlotsAdded { get; set; }

    [JsonPropertyName("// MmdFromBank")]
    public string MmdFromBankDoc { get; init; } = "MMD units to debit from bank (Prop 40000).";
    public int MmdFromBank { get; set; }

    [JsonPropertyName("// WritFromBank")]
    public string WritFromBankDoc { get; init; } = "Writ of Refuge (WCID 11710) units to debit from bank (Prop 40114).";
    public int WritFromBank { get; set; }
}

public class CurrencyItem
{
    [JsonPropertyName("// Name")]
    public string NameDoc { get; init; } = "Short label or code for this denomination (informational).";
    public string Name { get; set; } = "";

    [JsonPropertyName("// Id")]
    public string IdDoc { get; init; } = "Weenie class id (WCID) of the physical coin or plaque item.";
    public uint Id { get; set; }

    [JsonPropertyName("// Value")]
    public string ValueDoc { get; init; } = "Base unit count for this currency (display/counting).";
    public long Value { get; set; }

    [JsonPropertyName("// PyrealValue")]
    public string PyrealValueDoc { get; init; } = "Pyreals per unit for conversion math (cost calculation, auto-convert). If omitted, defaults to Value.";
    public long PyrealValue { get; set; }

    public long GetPyrealValue() => PyrealValue > 0 ? PyrealValue : Value;
}

public class EconomyBalancerSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, periodically scan player bank balances and adjust currency PyrealValues based on supply vs target rarity.";
    public bool Enabled { get; set; }

    [JsonPropertyName("// IncludeAdminBalances")]
    public string IncludeAdminBalancesDoc { get; init; } =
        "When false (default), admin accounts (access level > Player) are excluded from supply scans. When true, admins are included — useful for testing.";
    public bool IncludeAdminBalances { get; set; }

    [JsonPropertyName("// ScanIntervalMinutes")]
    public string ScanIntervalMinutesDoc { get; init; } =
        "How often to run the supply scan and recalculate values (in minutes). Default 60 = hourly.";
    public int ScanIntervalMinutes { get; set; } = 60;

    [JsonPropertyName("// MinScanIntervalMinutes")]
    public string MinScanIntervalMinutesDoc { get; init; } =
        "Minimum scan interval regardless of command override. Prevents abuse of admin force-scan commands.";
    public int MinScanIntervalMinutes { get; set; } = 15;

    [JsonPropertyName("// MinSupplyWeight")]
    public string MinSupplyWeightDoc { get; init; } =
        "Base weight per currency representing its expected scarcity relative to MMD. Higher = more common. A currency with weight 100 is 100x as common as weight 1 at equilibrium.";
    public Dictionary<uint, double> MinSupplyWeight { get; set; } = new();

    [JsonPropertyName("// ValueAdjustmentSmoothing")]
    public string ValueAdjustmentSmoothingDoc { get; init; } =
        "0.0–1.0: How fast values adjust toward target. 0.1 = slow/gradual (10% of the gap per cycle). 1.0 = instant. Default 0.25 (25% per cycle).";
    public double ValueAdjustmentSmoothing { get; set; } = 0.25;

    [JsonPropertyName("// LogChangesOnly")]
    public string LogChangesOnlyDoc { get; init; } =
        "When true, only log currency values that changed. When false, log every scan with full table.";
    public bool LogChangesOnly { get; set; } = true;

    [JsonPropertyName("// MinValueFloor")]
    public string MinValueFloorDoc { get; init; } =
        "Absolute minimum PyrealValue allowed per currency, regardless of supply. Prevents currencies from becoming worthless if over-supplied.";
    public int MinValueFloor { get; set; } = 1;

    [JsonPropertyName("// TargetZefSupply")]
    public string TargetZefSupplyDoc { get; init; } =
        "Target total Zef-equivalent supply across all alt-currency bank balances. If actual supply exceeds this, ZefPyrealValue drops. Default 100000 = 100k Zefs.";
    public long TargetZefSupply { get; set; } = 100000;

    [JsonPropertyName("// MinZefPyrealValue")]
    public string MinZefPyrealValueDoc { get; init; } =
        "Minimum ZefPyrealValue allowed (prevents Zefs from becoming worthless). Default 1000000 = 1M pyreals = 4 MMDs.";
    public long MinZefPyrealValue { get; set; } = 1000000;

    [JsonPropertyName("// MaxZefPyrealValue")]
    public string MaxZefPyrealValueDoc { get; init; } =
        "Maximum ZefPyrealValue allowed (prevents Zefs from becoming too valuable). Default 100000000 = 100M pyreals = 400 MMDs.";
    public long MaxZefPyrealValue { get; set; } = 100000000;

    [JsonPropertyName("// HideZeroSupplyCurrencies")]
    public string HideZeroSupplyCurrenciesDoc { get; init; } =
        "When true (default), currencies with zero total server supply are hidden from economy reports and exchange lists.";
    public bool HideZeroSupplyCurrencies { get; set; } = true;
}

public class ValheelCryptoIntegrationSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true (default), auto-detect Valheel currencies and manage CryptoUp events. When false, never touches event state.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// AshCoinWcid")]
    public string AshCoinWcidDoc { get; init; } = "WCID of AshCoin (Encapsulated Luminance).";
    public uint AshCoinWcid { get; set; } = 803955;

    [JsonPropertyName("// CreditWcid")]
    public string CreditWcidDoc { get; init; } = "WCID of Credit (Crystalized Wood).";
    public uint CreditWcid { get; set; } = 801690;

    [JsonPropertyName("// RatioThresholds")]
    public string RatioThresholdsDoc { get; init; } = "Credit:AshCoin ratio thresholds for CryptoUp1–5. Default: 1.0, 2.0, 3.0, 4.0, 5.0.";
    public double[] RatioThresholds { get; set; } = new[] { 1.0, 2.0, 3.0, 4.0, 5.0 };
}

public class LootTrackerSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, track WCIDs players pick up to identify frequently-looted items for potential economy additions.";
    public bool Enabled { get; set; }

    [JsonPropertyName("// IncludeAdminBalances")]
    public string IncludeAdminBalancesDoc { get; init; } =
        "When false (default), admin accounts are excluded from loot tracking. When true, admins are included for testing.";
    public bool IncludeAdminBalances { get; set; }

    [JsonPropertyName("// ScanIntervalMinutes")]
    public string ScanIntervalMinutesDoc { get; init; } =
        "How often to aggregate loot counts and log the hot items report (in minutes).";
    public int ScanIntervalMinutes { get; set; } = 60;

    [JsonPropertyName("// ReportTopN")]
    public string ReportTopNDoc { get; init; } =
        "How many top-looted items to show in the economy report. Default 20.";
    public int ReportTopN { get; set; } = 20;

    [JsonPropertyName("// IgnoreWcids")]
    public string IgnoreWcidsDoc { get; init; } =
        "WCIDs to ignore in loot tracking (e.g., raw pyreals, common junk). Add pyreals and coins here to avoid noise.";
    public List<uint> IgnoreWcids { get; set; } = new()
    {
        273,    // Pyreal
        2621,   // Pyreal I
        2622,   // Pyreal V
        2623,   // Pyreal X
        2624,   // Pyreal L
        2625,   // Pyreal C
        2626,   // Pyreal D
        2627,   // Pyreal M
        7374,   // Pyreal CL
        7375,   // Pyreal CC
        7376,   // Pyreal CCL
        7377,   // Pyreal DCCL
        20628,  // Pyreal MD
        20629,  // Pyreal MM
        20630,  // MMD
        36432,  // Gold Pea
    };

    [JsonPropertyName("// MinLootCountForReport")]
    public string MinLootCountForReportDoc { get; init; } =
        "Minimum total loot count for a WCID to appear in the economy report. Filters out rare/noise items.";
    public int MinLootCountForReport { get; set; } = 100;

    [JsonPropertyName("// LootCountPropertyStart")]
    public string LootCountPropertyStartDoc { get; init; } =
        "First PropertyInt64 used to store per-character loot counts (one per tracked WCID). Reserve a contiguous block.";
    public int LootCountPropertyStart { get; set; } = 45000;

    [JsonPropertyName("// AutoAddToBankThreshold")]
    public string AutoAddToBankThresholdDoc { get; init; } =
        "If a non-tracked WCID exceeds this many total loots across the server, log a suggestion to add it to bank Items. Set to 0 to disable.";
    public int AutoAddToBankThreshold { get; set; } = 10000;
}

public class SkeletonKeyAppraisalSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } =
        "When true, appraisal LongDesc for skeleton keys in the default cap map appends a suffix (e.g. (1kD)). Matches BetterKeys EnsureKeyMap unless SuffixByWcid overrides.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// SuffixByWcid")]
    public string SuffixByWcidDoc { get; init; } =
        "Optional WCID to suffix. When empty, built-in defaults (BetterKeys skeleton key WCIDs) apply.";
    public Dictionary<uint, string> SuffixByWcid { get; set; } = new();
}

public enum PriceVarianceResetMode
{
    Never,
    OnEconomyScan,
    Hourly,
    Daily
}

public class PublicExchangeSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, /exchange commands are available.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// StaticValueWcids")]
    public string StaticValueWcidsDoc { get; init; } = "WCIDs with fixed PyrealValue regardless of pool depth. All pyreal denominations are static since they're unlimited vendor supply.";
    public List<uint> StaticValueWcids { get; set; } = new()
    {
        273,    // Pyreal
        2621,   // I
        2622,   // V
        2623,   // X
        2624,   // L
        2625,   // C
        2626,   // D
        2627,   // M
        7374,   // CL
        7375,   // CC
        7376,   // CCL
        7377,   // DCCL
        20628,  // MD
        20629,  // MM
        20630,  // MMD
        40652,  // CashSink
    };

    [JsonPropertyName("// ZefPyrealValue")]
    public string ZefPyrealValueDoc { get; init; } = "How many pyreals one Zef (alt currency) is worth. Default 25,000,000 = 100 MMDs. Items in AltCurrencyValues use this for exchange pricing.";
    public long ZefPyrealValue { get; set; } = 25000000;

    [JsonPropertyName("// Elasticity")]
    public string ElasticityDoc { get; init; } = "How aggressively prices swing with pool depth. 0.5 = ±50% at extremes.";
    public double Elasticity { get; set; } = 0.5;

    [JsonPropertyName("// BaseTaxRate")]
    public string BaseTaxRateDoc { get; init; } = "Base tax on sell transactions (0.05 = 5%).";
    public double BaseTaxRate { get; set; } = 0.05;

    [JsonPropertyName("// MaxTaxRate")]
    public string MaxTaxRateDoc { get; init; } = "Hard cap on sell tax regardless of exchange wealth.";
    public double MaxTaxRate { get; set; } = 0.20;

    [JsonPropertyName("// TaxSensitivity")]
    public string TaxSensitivityDoc { get; init; } = "How fast tax rises with exchange wealth ratio. 0.6 means 25% wealth ratio hits max tax.";
    public double TaxSensitivity { get; set; } = 0.6;

    [JsonPropertyName("// SeedQuantity")]
    public string SeedQuantityDoc { get; init; } = "Initial pool quantity for each bank item on first load.";
    public long SeedQuantity { get; set; } = 10;

    [JsonPropertyName("// PoolJsonPath")]
    public string PoolJsonPathDoc { get; init; } = "Relative path to exchange pool JSON file.";
    public string PoolJsonPath { get; set; } = "ExchangePool.json";

    [JsonPropertyName("// PriceVariancePercent")]
    public string PriceVariancePercentDoc { get; init; } = "Random variance applied to each item's exchange price so identical base prices look organic. 0.25 = ±25%.";
    public double PriceVariancePercent { get; set; } = 0.25;

    [JsonPropertyName("// PriceVarianceResetMode")]
    public string PriceVarianceResetModeDoc { get; init; } = "When to reshuffle per-item price variance rolls. Never = fixed for session (default). OnEconomyScan = reshuffle on every EconomyBalancer scan. Hourly = reshuffle every real-time hour. Daily = reshuffle every real-time day.";
    public PriceVarianceResetMode PriceVarianceResetMode { get; set; } = PriceVarianceResetMode.Hourly;
}

public class LotterySettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, /lottery commands are available.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// BaseTicketPrice")]
    public string BaseTicketPriceDoc { get; init; } = "Base pyreal cost per lottery ticket.";
    public long BaseTicketPrice { get; set; } = 1000;

    [JsonPropertyName("// TicketPricePoolPercent")]
    public string TicketPricePoolPercentDoc { get; init; } = "Additional ticket cost as % of current pool (0.0001 = 0.01%).";
    public double TicketPricePoolPercent { get; set; } = 0.0001;

    [JsonPropertyName("// DrawIntervalMinutes")]
    public string DrawIntervalMinutesDoc { get; init; } = "How often the lottery auto-draws (default 10080 = 7 days).";
    public int DrawIntervalMinutes { get; set; } = 10080;

    [JsonPropertyName("// TicketPropertyId")]
    public string TicketPropertyIdDoc { get; init; } = "PropertyInt64 for storing virtual ticket count per character.";
    public int TicketPropertyId { get; set; } = 45214;

    [JsonPropertyName("// MinPoolForDraw")]
    public string MinPoolForDrawDoc { get; init; } = "Minimum pool size before auto-draw runs.";
    public long MinPoolForDraw { get; set; } = 10000;

    [JsonPropertyName("// MaxPoolSize")]
    public string MaxPoolSizeDoc { get; init; } = "If pool exceeds this, use MaxPoolDestructionRate for tax.";
    public long MaxPoolSize { get; set; } = 5000000;

    [JsonPropertyName("// SmallTaxThreshold")]
    public string SmallTaxThresholdDoc { get; init; } = "Tax amounts below this use SmallTaxDestructionRate.";
    public long SmallTaxThreshold { get; set; } = 10000;

    [JsonPropertyName("// LargeTaxThreshold")]
    public string LargeTaxThresholdDoc { get; init; } = "Tax amounts between Small and Large use MediumTaxDestructionRate.";
    public long LargeTaxThreshold { get; set; } = 100000;

    [JsonPropertyName("// SmallTaxDestructionRate")]
    public string SmallTaxDestructionRateDoc { get; init; } = "Portion of tax destroyed for small transactions.";
    public double SmallTaxDestructionRate { get; set; } = 0.60;

    [JsonPropertyName("// MediumTaxDestructionRate")]
    public string MediumTaxDestructionRateDoc { get; init; } = "Portion of tax destroyed for medium transactions.";
    public double MediumTaxDestructionRate { get; set; } = 0.75;

    [JsonPropertyName("// LargeTaxDestructionRate")]
    public string LargeTaxDestructionRateDoc { get; init; } = "Portion of tax destroyed for large transactions.";
    public double LargeTaxDestructionRate { get; set; } = 0.85;

    [JsonPropertyName("// MaxPoolDestructionRate")]
    public string MaxPoolDestructionRateDoc { get; init; } = "Portion of tax destroyed when pool exceeds MaxPoolSize.";
    public double MaxPoolDestructionRate { get; set; } = 0.95;

    [JsonPropertyName("// WinnerCount")]
    public string WinnerCountDoc { get; init; } = "How many winners per draw. Default 3 (1st/2nd/3rd).";
    public int WinnerCount { get; set; } = 3;

    [JsonPropertyName("// WinnerSplits")]
    public string WinnerSplitsDoc { get; init; } = "Portion of pool each winner receives. Must sum to 1.0. Default: 1st=50%, 2nd=30%, 3rd=20%.";
    public List<double> WinnerSplits { get; set; } = new() { 0.50, 0.30, 0.20 };

    [JsonPropertyName("// EnableQpPoolContributions")]
    public string EnableQpPoolContributionsDoc { get; init; } = "When true, drains pending QP contributions from Loremaster before each draw.";
    public bool EnableQpPoolContributions { get; set; } = true;

    [JsonPropertyName("// DonateLuminanceRate")]
    public string DonateLuminanceRateDoc { get; init; } = "How many pyreals of lottery pool value each donated luminance point contributes. 1.0 = 1 luminance = 1 pyreal.";
    public double DonateLuminanceRate { get; set; } = 1.0;
}
