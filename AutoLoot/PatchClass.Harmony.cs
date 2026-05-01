namespace AutoLoot;

public partial class PatchClass
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostPlayerEnterWorld(ref Player __instance)
    {
        AutoLoot.OnPostPlayerEnterWorld(ref __instance);
    }

    // Postfixed manually from PatchClass.TryPatchGenerateTreasurePostfix (Start/OnWorldOpen)
    public static void PostGenerateTreasure(DamageHistoryInfo killer, Corpse corpse, Creature __instance, ref List<WorldObject> __result)
    {
        AutoLoot.OnPostGenerateTreasure(killer, corpse, __instance, ref __result);
    }

    // ── Achievement tracking: unlocks ───────────────────────────────────────

    [HarmonyPostfix]
    [HarmonyPatch(typeof(UnlockerHelper), nameof(UnlockerHelper.ConsumeUnlocker))]
    public static void PostConsumeUnlocker(Player player, WorldObject unlocker, WorldObject target, bool success)
    {
        if (!success) return;
        if (unlocker == null || player == null) return;

        if (unlocker.WeenieType == WeenieType.Lockpick)
            AutoLoot.RecordLockpickUnlock(player);
        else if (unlocker is Key)
            AutoLoot.RecordKeyUnlock(player);
    }

    // ── Achievement tracking: manual salvages ───────────────────────────────

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.AddSalvage))]
    public static void PostAddSalvage(Player __instance, List<WorldObject> salvageBags, WorldObject item, SalvageResults salvageResults)
    {
        if (__instance == null) return;
        AutoLoot.RecordSalvage(__instance, 1);
    }

    // ── Auto-use banked keys instead of consuming physical keys ─────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(UnlockerHelper), nameof(UnlockerHelper.ConsumeUnlocker))]
    [HarmonyPriority(500)]
    public static bool PreConsumeUnlockerForKeys(Player player, WorldObject unlocker, WorldObject target, bool success)
    {
        if (!success) return true;
        if (unlocker == null || player == null) return true;
        if (unlocker.WeenieType == WeenieType.Lockpick) return true;
        if (unlocker is not Key) return true;

        var unlimitedUses = unlocker.Structure == null || (unlocker.GetProperty(PropertyBool.UnlimitedUse) ?? false);
        if (unlimitedUses) return true;

        if (!AutoLoot.IsKeysUnlocked(player)) return true;

        var settings = PatchClass.Settings;
        if (settings?.KeyBankProperties == null) return true;

        if (!settings.KeyBankProperties.TryGetValue(unlocker.WeenieClassId, out var prop))
            return true;

        var banked = player.GetProperty((PropertyInt64)prop) ?? 0;
        if (banked <= 0)
            return true; // no banked keys; let vanilla consume the physical key

        // Consume from bank instead of physical key
        player.SetProperty((PropertyInt64)prop, banked - 1);

        var msg = $"The {target.Name} has been unlocked.\n";
        var suffix = banked > 1
            ? $"Key bank: {banked - 1:N0} remaining."
            : "Your key bank is now empty.";
        msg += suffix;

        player.Session?.Network?.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.Broadcast));
        player.SendUseDoneEvent();

        return false; // skip vanilla consumption
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Container), nameof(Container.Open))]
    public static void PostContainerOpen(Player player, Container __instance)
    {
        AutoLoot.OnContainerOpened(player, __instance);
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Container), nameof(Container.Close))]
    public static void PreContainerClose(Player player, Container __instance)
    {
        AutoLoot.CancelSalvageTimer(__instance.Guid.Full);

        // For chests: run silent immediate phase FIRST (known scrolls, cash, keys, lockpicks),
        // then batch loot + salvage. Moved from OPEN to CLOSE so the chest UI stays in sync.
        if (__instance is Chest && player != null)
        {
            AutoLoot.EnsureLoaded(player);
            AutoLoot.ProcessContainerLootImmediate(player, __instance);
        }

        // For chests and corpses: run close-phase batch loot + salvage before reset clears inventory
        if ((__instance is Chest || __instance is Corpse) && player != null)
            AutoLoot.ProcessContainerLootClose(player, __instance);
    }
}
