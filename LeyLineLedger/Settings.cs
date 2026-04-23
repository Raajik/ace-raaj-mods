namespace LeyLineLedger;

public class Settings
{
    [JsonPropertyName("// LeyLineLedgerSettings")]
    public string LeyLineLedgerSettingsDoc { get; init; } = "Reading order: below this line, every // key is documentation; the next block lists real settings in the same order. LeyLineLedger routes vendor trade and pyreals through bank-style PropertyInt64 storage, optional luminance gem withdrawal, death bank tax, and currency denomination tables. Items and Currencies arrays: each element is an object with // lines first, then Name/Id/Prop or Name/Id/Value (same order).";

    [JsonPropertyName("// VendorsUseBank")]
    public string VendorsUseBankDoc { get; init; } = "When true, vendor buy/sell uses bank balances instead of only inventory pyreals.";
    public bool VendorsUseBank { get; set; } = true;

    [JsonPropertyName("// DirectDeposit")]
    public string DirectDepositDoc { get; init; } = "When true, incoming currency can deposit directly per mod rules.";
    public bool DirectDeposit { get; set; } = true;

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
        new() { Name = "Writ of Refuge", Id = 11710, Prop = 40114 },
    };

    [JsonPropertyName("// ExcessSetToMax")]
    public string ExcessSetToMaxDoc { get; init; } = "When true, amounts above limits are clamped to the cap instead of failing.";
    public bool ExcessSetToMax { get; set; } = true;

    [JsonPropertyName("// LuminanceProperty")]
    public string LuminancePropertyDoc { get; init; } = "Character biota PropertyInt64 id for banked luminance.";
    public int LuminanceProperty { get; set; } = 39998;

    [JsonPropertyName("// CashProperty")]
    public string CashPropertyDoc { get; init; } = "Character biota PropertyInt64 id for banked pyreals; align with AutoLoot BankCashProperty if used (default 39999).";
    public int CashProperty { get; set; } = 39999;

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

public class SalvageDepositRule
{
    [JsonPropertyName("// Name")]
    public string NameDoc { get; init; } = "Display name for messages.";
    public string Name { get; set; } = "";

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
    public string ValueDoc { get; init; } = "Pyreal value of one unit of this WCID when computing change.";
    public int Value { get; set; }
}
