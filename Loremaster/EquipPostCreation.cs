using System.Reflection;
using ACE.Server.Network.Enum;
using ACE.Server.Network.Handlers;

namespace Loremaster;

[HarmonyPatchCategory(nameof(EquipPostCreation))]
internal static class EquipPostCreation
{
    [HarmonyTargetMethod]
    static MethodBase TargetSendCharacterCreateResponse()
    {
        return AccessTools.Method(typeof(CharacterHandler), "SendCharacterCreateResponse", new[]
        {
            typeof(Session),
            typeof(CharacterGenerationVerificationResponse),
            typeof(ObjectGuid),
            typeof(string),
        });
    }

    [HarmonyPostfix]
    public static void PostSendCharacterCreateResponse(Session session, CharacterGenerationVerificationResponse response, ObjectGuid guid, string charName)
    {
        if (response != CharacterGenerationVerificationResponse.Ok)
            return;

        var action = new ActionChain();
        action.AddDelaySeconds(10);
        action.AddAction(WorldManager.DelayManager, () =>
        {
            var player = PlayerManager.GetOnlinePlayer(guid);
            if (player is null)
                return;

            foreach (var equipment in player.Inventory.Values.Where(x => x.ValidLocations != null))
                player.TryEquipObjectWithNetworking(equipment, equipment.ValidLocations ?? 0);
        });
        action.EnqueueChain();
    }
}
