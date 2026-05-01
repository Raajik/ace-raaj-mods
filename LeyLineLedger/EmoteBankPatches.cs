using ACE.Entity.Enum;
using ACE.Server.Mods;
using ACE.Server.WorldObjects.Managers;

namespace LeyLineLedger;

/// <summary>
/// Patches EmoteManager to check bank balances for InqOwnsItems and TakeItems,
/// enabling NPCs (professors, barbers, etc.) to use banked currencies.
/// </summary>
[HarmonyPatchCategory(nameof(EmoteBankPatches))]
internal static class EmoteBankPatches
{
    [Conditional("DEBUG")]
    private static void DebugLog(string msg)
    {
        ModManager.Log($"[LeyLineLedger] {msg}", ModManager.LogLevel.Info);
    }

    /// <summary>
    /// Intercepts InqOwnsItems and TakeItems emotes to include banked currency.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(EmoteManager), nameof(EmoteManager.ExecuteEmote), new Type[] { typeof(PropertiesEmote), typeof(PropertiesEmoteAction), typeof(WorldObject) })]
    public static bool PrefixExecuteEmote(EmoteManager __instance, PropertiesEmote emoteSet, PropertiesEmoteAction emote, WorldObject targetObject, ref float __result)
    {
        var emoteType = (EmoteType)emote.Type;

        if (emoteType == EmoteType.InqOwnsItems)
        {
            return HandleInqOwnsItems(__instance, emote, targetObject, ref __result);
        }

        if (emoteType == EmoteType.TakeItems)
        {
            return HandleTakeItems(__instance, emote, targetObject, ref __result);
        }

        return true; // Not our emote, run original
    }

    /// <summary>
    /// Intercepts Player.GiveFromEmote to deposit quest salvage and Pathwarden rewards directly to bank.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GiveFromEmote))]
    public static bool PrefixGiveFromEmote(Player __instance, WorldObject emoter, uint weenieClassId, int amount)
    {
        // 1. Quest salvage bags (CoK, Pathwarden Granite/Steel, etc.)
        if (QuestSalvageAutoBank.TryAutoDepositEmote(__instance, weenieClassId, amount))
            return false; // skip original — item never created

        // 2. Pathwarden NPC keys (Sturdy Iron Key) and any remaining legacy intercepts
        return !PathwardenAutoBank.TryInterceptReward(__instance, emoter, weenieClassId, amount);
    }

    static bool HandleInqOwnsItems(EmoteManager emoteManager, PropertiesEmoteAction emote, WorldObject targetObject, ref float __result)
    {
        if (targetObject is not Player player)
            return true; // run original

        var wcid = emote.WeenieClassId ?? 0;
        var required = emote.StackSize ?? 1;

        if (wcid == 0)
            return true;

        // Check inventory first (original logic)
        var items = player.GetInventoryItemsOfWCID(wcid);
        items.AddRange(player.GetEquippedObjectsOfWCID(wcid));
        var numItems = items.Sum(i => i.StackSize ?? 1);

        if (numItems >= required)
            return true; // Enough in inventory, run original

        // Check bank
        var bankedItem = PatchClass.Settings?.Items?.FirstOrDefault(x => x.Id == wcid);
        if (bankedItem == null)
            return true; // Not a bankable currency

        var bankedAmount = player.GetBanked(bankedItem.Prop);
        var total = numItems + bankedAmount;

        DebugLog($"EmoteBankPatches InqOwnsItems: {player.Name} needs {required} {bankedItem.Name}, inInv={numItems}, banked={bankedAmount}, total={total}");

        if (total < required)
            return true; // Not enough even with bank, run original (will fail)

        // Enough via bank! Execute success branch
        DebugLog($"EmoteBankPatches: {player.Name} has enough {bankedItem.Name} via bank ({bankedAmount}), forcing success.");

        // Use reflection to call private ExecuteEmoteSet
        try
        {
            var method = typeof(EmoteManager).GetMethod("ExecuteEmoteSet", BindingFlags.NonPublic | BindingFlags.Instance);
            method?.Invoke(emoteManager, new object[] { EmoteCategory.TestSuccess, emote.Message, targetObject, true });
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] EmoteBankPatches ExecuteEmoteSet error: {ex}", ModManager.LogLevel.Error);
        }

        __result = 0.0f;
        return false; // skip original
    }

    static bool HandleTakeItems(EmoteManager emoteManager, PropertiesEmoteAction emote, WorldObject targetObject, ref float __result)
    {
        if (targetObject is not Player player)
            return true;

        var wcid = emote.WeenieClassId ?? 0;
        var amountToTake = emote.StackSize ?? 1;

        if (wcid == 0 || amountToTake <= 0)
            return true;

        // Try inventory first
        var inInv = player.GetNumInventoryItemsOfWCID(wcid);
        if (inInv >= amountToTake)
            return true; // Enough in inventory, run original

        // Check if bankable
        var bankedItem = PatchClass.Settings?.Items?.FirstOrDefault(x => x.Id == wcid);
        if (bankedItem == null)
            return true; // Not bankable, run original

        var bankedAmount = player.GetBanked(bankedItem.Prop);
        var total = inInv + bankedAmount;

        if (total < amountToTake)
            return true; // Not enough, run original (will fail silently)

        // Consume from inventory first, then bank
        var neededFromBank = amountToTake;

        if (inInv > 0)
        {
            player.TryConsumeFromInventoryWithNetworking(wcid, inInv);
            neededFromBank -= inInv;
        }

        if (neededFromBank > 0)
        {
            player.IncBanked(bankedItem.Prop, -neededFromBank);
            player.SendMessage($"Used {neededFromBank:N0} {bankedItem.Name} from bank.");
            DebugLog($"EmoteBankPatches TakeItems: {player.Name} consumed {neededFromBank} {bankedItem.Name} from bank");
        }

        // Send message
        try
        {
            var weenie = DatabaseManager.World.GetCachedWeenie(wcid);
            if (weenie != null)
            {
                var amount = amountToTake == -1 ? "all" : amountToTake.ToString();
                var msg = $"You hand over {amount} of your {weenie.GetPluralName()}.";
                player.Session?.Network?.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.Broadcast));
            }
        }
        catch { }

        __result = 0.0f;
        return false; // skip original
    }
}
