namespace EmpyreanAlteration.Features;

[CommandCategory(nameof(AlterationFeature.FakeXpBoost))]
[HarmonyPatchCategory(nameof(AlterationFeature.FakeXpBoost))]
internal class FakeXpBoost
{
    [HarmonyPatch(typeof(Player), nameof(Player.GrantLuminance), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static bool PreGrantLuminance(long amount, XpType xpType, ShareType shareType, ref Player __instance)
    {
        if (xpType != XpType.Kill)
            return true;

        var bonus = __instance.GetCachedFake(FakeFloat.ItemLuminanceBoost);
        var bonusAmount = (long)(bonus * amount);
        amount += bonusAmount;


        __instance.SendMessage($"Added {bonusAmount} luminance from {1 + bonus} equipment bonus.");

        //Return true to execute original
        return true;
    }
}
