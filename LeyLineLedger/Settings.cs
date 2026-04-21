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
