namespace QOL;

public enum TollPaymentMode
{
    ComponentsFirst,
    CashOnly,
}

public class PlayerProfile
{
    public KillXpDisplayMode KillXpMode { get; set; } = KillXpDisplayMode.ServerDefault;
    public TollPaymentMode TollPaymentMode { get; set; } = TollPaymentMode.ComponentsFirst;
    public bool XpSpendAuto { get; set; } = false;
    public long TotalTownNetworkTollSpent { get; set; } = 0;
}
