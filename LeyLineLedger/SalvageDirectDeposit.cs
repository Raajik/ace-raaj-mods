using ACE.Server.Managers;

namespace LeyLineLedger;

[HarmonyPatchCategory(nameof(SalvageDirectDeposit))]
public static class SalvageDirectDeposit
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.CreateItem), new Type[] { typeof(Player), typeof(uint), typeof(uint) })]
    public static void PostCreateItem(Player player, uint wcid, uint amount, WorldObject __result)
    {
        if (player is null || __result is null)
            return;

        BankSalvage.TryInstantDepositFromRecipeCreate(player, __result);
    }
}
