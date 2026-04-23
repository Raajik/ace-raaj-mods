namespace LeyLineLedger;

using ACE.Server.Entity.Actions;
using ACE.Server.WorldObjects;

public partial class PatchClass
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostPlayerEnterWorldAccountBank(Player __instance)
    {
        var player = __instance;
        if (player?.Guid == null)
            return;

        var chain = new ActionChain();
        chain.AddAction(player, () => AccountBank.OnPlayerEnterWorld(player));
        chain.EnqueueChain();
    }
}
