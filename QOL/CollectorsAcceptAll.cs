using System.Collections.Concurrent;
using ACE.Server.Entity;
using ACE.Server.Network;
using ACE.Server.WorldObjects;

namespace QOL;

internal static class CollectorsAcceptAll
{
    private static readonly ConcurrentDictionary<uint, bool> CollectorWcids = new();
    private static bool _initialized;
    private const double XP_PER_BURDEN = 0.10;

    [HarmonyPatchCategory(nameof(Features.CollectorsAcceptAll))]
    [HarmonyPatch(typeof(Player), nameof(Player.GiveObjectToNPC))]
    public static class GiveObjectToNPC_Patch
    {
        private static void GrantXpBonus(Player player, WorldObject item)
        {
            var currentLevel = player.Level ?? 1;
            var xpForCurrentLevel = DatManager.PortalDat.XpTable.CharacterLevelXPList[currentLevel];
            var xpToNextLevel = DatManager.PortalDat.XpTable.CharacterLevelXPList[currentLevel + 1];
            var xpForThisLevel = xpToNextLevel - xpForCurrentLevel;

            if (item.IsAttunedOrContainsAttuned)
            {
                if (xpForThisLevel > 0)
                {
                    var bonusXp = (long)(xpForThisLevel * 0.30);
                    if (bonusXp > 0)
                    {
                        player.GrantXP(bonusXp, XpType.Quest, ShareType.None);
                        player.SendMessage($"[Collector] Trophy burden bonus: +{bonusXp:N0} XP (30% of level)");
                    }
                }
            }
            else
            {
                var burden = item.EncumbranceVal ?? 0;
                if (burden > 0)
                {
                    if (xpForThisLevel > 0)
                    {
                        var percentOfLevel = (burden / 100.0) * XP_PER_BURDEN;
                        var bonusXp = (long)(xpForThisLevel * percentOfLevel);
                        if (bonusXp > 0)
                        {
                            player.GrantXP(bonusXp, XpType.Quest, ShareType.None);
                            player.SendMessage($"[Collector] Trophy burden bonus: +{bonusXp:N0} XP ({percentOfLevel * 100:F2}% of level)");
                        }
                    }
                }
            }
        }

        public static bool Prefix(Player __instance, WorldObject target, WorldObject item, Container itemFoundInContainer, Container itemRootOwner, bool itemWasEquipped, int amount)
        {
            if (!_initialized || target == null || item == null)
                return true;

            var targetWcid = target.WeenieClassId;
            if (targetWcid == 0 || !CollectorWcids.ContainsKey(targetWcid))
                return true;

            var burden = item.EncumbranceVal ?? 0;
            var isSticky = item.IsStickyAttunedOrContainsStickyAttuned;
            var isAttuned = item.IsAttunedOrContainsAttuned;
            var isFullSalvage = burden > 0 && item.Name != null && item.Name.EndsWith("Salvage (100)");

            bool hasEmote = target.HasGiveOrRefuseEmoteForItem(item, out var emote);
            var hasValidGive = hasEmote && emote != null && emote.Category == EmoteCategory.Give;

            if (isSticky && hasValidGive)
            {
                if (!__instance.RemoveItemForGive(item, itemFoundInContainer, itemWasEquipped, itemRootOwner, amount, out var removedSticky))
                    return false;

                if (item == removedSticky)
                    __instance.Session.Network.EnqueueSend(new GameEventItemServerSaysContainId(__instance.Session, item, target));

                var stackSticky = (removedSticky.StackSize ?? 1) != 1 ? $"{removedSticky.StackSize:N0} " : "";
                var itemSticky = removedSticky.GetNameWithMaterial(removedSticky.StackSize ?? 1);

                __instance.Session.Network.EnqueueSend(new GameMessageSystemChat($"You give {target.Name} {stackSticky}{itemSticky}.", ChatMessageType.Broadcast));
                target.EnqueueBroadcast(new GameMessageSound(target.Guid, Sound.ReceiveItem));

                target.EmoteManager.ExecuteEmoteSet(emote, __instance);

                GrantXpBonus(__instance, item);

                removedSticky.Destroy();
                return false;
            }

            if (hasValidGive)
                return true;

            var isEligible = isAttuned || isFullSalvage;

            if (!isEligible)
                return true;

            if (!__instance.RemoveItemForGive(item, itemFoundInContainer, itemWasEquipped, itemRootOwner, amount, out var removedAlt))
                return false;

            if (item == removedAlt)
                __instance.Session.Network.EnqueueSend(new GameEventItemServerSaysContainId(__instance.Session, item, target));

            var stackAlt = (removedAlt.StackSize ?? 1) != 1 ? $"{removedAlt.StackSize:N0} " : "";
            var itemAlt = removedAlt.GetNameWithMaterial(removedAlt.StackSize ?? 1);

            __instance.Session.Network.EnqueueSend(new GameMessageSystemChat($"You give {target.Name} {stackAlt}{itemAlt}.", ChatMessageType.Broadcast));
            target.EnqueueBroadcast(new GameMessageSound(target.Guid, Sound.ReceiveItem));

            GrantXpBonus(__instance, item);

            removedAlt.Destroy();
            return false;
        }
    }

    public static void Initialize()
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableCollectorsAcceptAll != true)
            return;

        if (settings.CollectorWcids != null)
        {
            foreach (var wcid in settings.CollectorWcids)
            {
                CollectorWcids[wcid] = true;
            }
        }

        _initialized = true;
        ModManager.Log($"[QOL] CollectorsAcceptAll initialized with {CollectorWcids.Count} collectors", ModManager.LogLevel.Info);
    }
}