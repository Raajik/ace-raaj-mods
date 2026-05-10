using ACE.Server.Factories;
using AceRaajMods.Shared;

namespace Windblown;

/// <summary>
/// Redirects vanilla 45875/45876 to Windblown custom 800005/800006 at creation time
/// so stale weenie cache data never produces bad items. Also handles smart turn-in
/// for all known WCIDs. Monster drops from any source (BLC, vanilla, Swarmed) will
/// come out as the clean custom versions.
/// </summary>
public partial class PatchClass
{
    // Custom letter WCIDs
    const uint GoldLetterNew = 850337;
    const uint RedLetterNew = 850338;

    static bool IsCustomLetter(uint wcid) => wcid == GoldLetterNew || wcid == RedLetterNew;

    // =====================================================================
    // Redirect: intercept WorldObjectFactory to replace old WCIDs with custom
    // =====================================================================

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateNewWorldObject),
        new Type[] { typeof(uint) })]
    public static void PreCreateNewWorldObject_RedirectLetters(ref uint weenieClassId)
    {
        // Redirect old vanilla letter WCIDs to the new organized-range stackable versions.
        // 8701/8702 are the original non-stackable book-type Lucky Gold / Scarlet Red Letters
        // from vanilla ACE treasure generation. 45875/45876 are older custom variants.
        if (weenieClassId == 8701 || weenieClassId == 45875)
            weenieClassId = GoldLetterNew;
        else if (weenieClassId == 8702 || weenieClassId == 45876)
            weenieClassId = RedLetterNew;
    }

    // =====================================================================
    // Force correct StackUnitEncumbrance/StackUnitValue on custom letters
    // regardless of what the weenie cache serves.
    // =====================================================================

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Stackable), "SetEphemeralValues")]
    public static void PostfixStackableSetEphemeral(Stackable __instance)
    {
        uint wcid = __instance.WeenieClassId;
        if (!IsCustomLetter(wcid)) return;

        __instance.StackUnitEncumbrance = 1;
        __instance.StackUnitValue = 1;
        __instance.MaxStackSize = 100;
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), "SetStackSize")]
    public static void PostfixSetStackSize(WorldObject __instance)
    {
        uint wcid = __instance.WeenieClassId;
        if (!IsCustomLetter(wcid)) return;

        __instance.StackUnitEncumbrance = 1;
        __instance.StackUnitValue = 1;
        __instance.EncumbranceVal = (__instance.StackSize ?? 1);
        __instance.Value = (__instance.StackSize ?? 1);
    }

    // =====================================================================
    // Smart turn-in for all letter WCIDs (old + custom)
    // =====================================================================

    const int BankCashProperty = 39999;

    static bool IsLetter(uint wcid) =>
        wcid == 8701 || wcid == 8702 || wcid == 45875 || wcid == 45876 || wcid == 850337 || wcid == 850338;

    static bool IsGoldLetter(uint wcid) =>
        wcid == 8701 || wcid == 45875 || wcid == 850337;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), "GiveObjectToNPC", new Type[] {
        typeof(WorldObject), typeof(WorldObject), typeof(Container), typeof(Container), typeof(bool), typeof(int) })]
    public static bool PreGiveObjectToNPC_Letters(WorldObject item, WorldObject target, Player __instance)
    {
        if (item == null || __instance == null || target == null) return true;
        if (!IsLetter(item.WeenieClassId)) return true;
        if (Cfg?.EnableTrophyLines != true) return true;

        bool isGold = IsGoldLetter(item.WeenieClassId);

        // Count ALL stacks of this WCID in inventory
        int totalCount = 0;
        foreach (var stack in __instance.GetInventoryItemsOfWCID(item.WeenieClassId))
            totalCount += stack.StackSize ?? 1;

        if (totalCount <= 0) return true;

        // Drain all stacks
        foreach (var stack in __instance.GetInventoryItemsOfWCID(item.WeenieClassId).ToList())
            __instance.TryRemoveFromInventoryWithNetworking(stack.Guid, out _, Player.RemoveFromInventoryAction.ConsumeItem);

        // Calculate XP: % of level-up bracket per letter
        long xpAmount = 0;
        try
        {
            int level = __instance.Level ?? 1;
            ulong bracket = __instance.GetXPBetweenLevels(level, level + 1);
            double fraction = isGold ? 0.10 : 0.05;
            double scaledXp = Math.Floor(bracket * fraction * totalCount);
            xpAmount = scaledXp > long.MaxValue ? long.MaxValue : (long)scaledXp;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Windblown.Letters] XP calc failed for {__instance.Name}: {ex.Message}", ModManager.LogLevel.Error);
        }

        // Grant XP
        if (xpAmount > 0)
            __instance.GrantXP(xpAmount, XpType.Quest, ShareType.None);

        // Grant bank credit via LLL interop (shows bank delta popup when LLL is loaded)
        long pyrealsPer = isGold ? 50000 : 25000;
        long bankDelta = pyrealsPer * totalCount;
        try
        {
            LeyLineLedgerBankInterop.IncBanked(__instance, BankCashProperty, bankDelta);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Windblown.Letters] Bank credit failed for {__instance.Name}: {ex.Message}", ModManager.LogLevel.Error);
        }

        // Consolidated message
        string letterType = isGold ? "Lucky Gold Letter" : "Scarlet Red Letter";
        __instance.SendMessage(
            $"You turn in {totalCount:N0} {letterType}{(totalCount == 1 ? "" : "s")} for {xpAmount:N0} experience and {bankDelta:N0} pyreals of bank credit.",
            ChatMessageType.System);

        if (Cfg != null && Cfg.LogTrophyLinesVerbose)
            ModManager.Log($"[Windblown.Letters] {__instance.Name} turned in {totalCount} x {letterType} (wcid {item.WeenieClassId}) -> {xpAmount} XP, {bankDelta}p bank.", ModManager.LogLevel.Info);

        return false; // Skip vanilla GiveObjectToNPC entirely
    }
}
