namespace LeyLineLedger;

public class Settings
{
    public bool VendorsUseBank { get; set; } = true;
    public bool DirectDeposit { get; set; } = true;

    public int MaxCoinsDropped { get; set; } = 0;

    //WCID - PropInt64
    public List<BankItem> Items { get; set; } = new()
    {
        new ("MMD", 20630, 40000),
        new ("Infused Amber Shard",52968, 40001),
        new ("Small Olthoi Venom Sac", 36376, 40002),
        new ("A'nekshay Token", 44240, 40003),
        new ("Ornate Gear Marker", 43142, 40004),
        new ("Colosseum Coin",36518, 40005),
        new ("Ancient Mhoire Coin", 35383, 40006),
        new ("Promissory Note", 43901, 40007),
    };
    //Reduces amount to a cap
    public bool ExcessSetToMax { get; set; } = true;


    public int LuminanceProperty { get; set; } = 39998;
    // Must match AutoLoot Settings.BankCashProperty when AutoLoot deposits looted currency to the bank (default 39999).
    public int CashProperty { get; set; } = 39999;

    // /bank withdraw luminance — creates a Gem carrying banked luminance (PropertyInt64 below). 0 disables withdrawal.
    // Default 7897 is Black Garnet in stock ACE world data (Gem weenie); change if your DB uses a different id.
    public uint LuminanceGemWeenieClassId { get; set; } = 7897;

    // Biota PropertyInt64 on the gem storing how much banked luminance it credits on use. Pick an unused id for your shard.
    public int LuminanceGemStoredAmountProperty { get; set; } = 45213;

    // 0 = no bank loss on death. Otherwise floor(banked * percent / 100) pyreals removed from bank (no physical coin drop).
    public int DeathBankPyrealPercent { get; set; } = 0;

    // 0 = unlimited. When > 0, caps the pyreals removed per death (after percent is applied).
    public long DeathBankPyrealMaxLossPerDeath { get; set; } = 0;

    public List<CurrencyItem> Currencies { get; set; } = new()
    {
        new ("Pyreal", 273, 1),
        new ("I", 2621,  100),
        new ("V", 2622,  500),
        new ("X", 2623,  1000),
        new ("L", 2624,  5000),
        new ("C", 2625,  10000),
        new ("D", 2626,  50000),
        new ("M", 2627,  100000),
        new ("CL", 7374,  15000),
        new ("CC", 7375,  20000),
        new ("CCL", 7376,  25000),
        new ("DCCL", 7377,  75000),
        new ("MD", 20628,  150000),
        new ("MM", 20629,  200000),
        new ("MMD", 20630,  250000),
        new ("CashSink", 40652,  50*250000),
    };

}

public record BankItem(string Name, uint Id, int Prop);
public record CurrencyItem(string Name, uint Id, int Value);
