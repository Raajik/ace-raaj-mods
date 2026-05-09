namespace LeyLineLedger;

/// <summary>
/// Auto-banks lockpick items: when a lockpick enters a player's inventory,
/// its Structure (charge count) is credited to banked Lockpick Durability
/// and one placeholder lockpick (Structure = null = unlimited) is kept so
/// the client always has an item to target on a lock.
///
/// ConsumeUnlocker is patched to draw from the bank instead of the placeholder.
/// When the bank runs dry the placeholder is removed.
///
/// The Limitless Lockpick (30253) increments PropLimitCount and gives
/// infinite lock uses (no charge deduction) as long as count > 0.
///
/// Property IDs (PropertyInt64, per-character):
///   40130 = LockpickDurability    — banked charges
///   40131 = LimitlessLastGrantUnix — last passive regen; 0 = no perk
///   40132 = LimitlessLockpickCount — stacking multiplier for regen rate
/// </summary>
[HarmonyPatchCategory(nameof(LockpickAutoBank))]
public static class LockpickAutoBank
{
    // Flimsy(510), Crude(511), Good(512), Plain(513), Excellent(514),
    // Superb(515), Peerless(516), Reliable(545), Carved Gemstone Lockpicks(27672)
    static readonly HashSet<uint> RegularWcids = new()
        { 510, 511, 512, 513, 514, 515, 516, 545, 27672 };

    const uint LimitlessWcid = 30253;

    const int PropDurability = 40130;
    const int PropLastGrant  = 40131;
    const int PropLimitCount = 40132;

    // ── Intercept lockpick entering inventory ────────────────────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.TryCreateInInventoryWithNetworking),
        new[] { typeof(WorldObject) })]
    public static bool PreTryCreateInInventory(Player __instance, WorldObject item, ref bool __result)
    {
        if (item == null || __instance == null) return true;

        var wcid = item.WeenieClassId;

        if (wcid == LimitlessWcid)
            return BankLimitless(__instance, item, ref __result);

        if (RegularWcids.Contains(wcid) || item.WeenieType == WeenieType.Lockpick)
            return BankRegular(__instance, item, ref __result);

        return true;
    }

    static bool BankRegular(Player player, WorldObject item, ref bool __result)
    {
        if (!PatchClass.Settings.EnableLockpickAutoBank) return true;
        if (!HasLockpickAccess(player)) return true;

        var charges = (long)(item.Structure ?? item.MaxStructure ?? 1);
        if (charges <= 0) charges = 1;

        var current = player.GetProperty((PropertyInt64)PropDurability) ?? 0L;
        var newTotal = current + charges;
        player.SetProperty((PropertyInt64)PropDurability, newTotal);

        // Keep one placeholder in inventory so the client has an item to target.
        // The placeholder has Structure = null (ACE treats null as unlimited uses).
        var hasPlaceholder = player.Inventory.Values.Any(x =>
            x.WeenieType == WeenieType.Lockpick || RegularWcids.Contains(x.WeenieClassId));

        if (hasPlaceholder)
        {
            player.SendMessage($"[Lockpick] {item.Name} ({charges:N0} charges) auto-banked. Durability: {newTotal:N0}.");
            __result = true;
            return false;
        }

        // First lockpick — keep this item as the placeholder, strip its charges
        // so vanilla ConsumeUnlocker sees it as unlimited and won't destroy it.
        item.Structure = null;
        player.SendMessage($"[Lockpick] {item.Name} banked ({charges:N0} charges). Durability: {newTotal:N0}.");
        return true;
    }

    static bool BankLimitless(Player player, WorldObject item, ref bool __result)
    {
        if (!PatchClass.Settings.EnableLockpickAutoBank) return true;
        if (!HasLockpickAccess(player)) return true;

        var prevCount = player.GetProperty((PropertyInt64)PropLimitCount) ?? 0L;
        var newCount  = prevCount + 1;
        player.SetProperty((PropertyInt64)PropLimitCount, newCount);
        player.SetProperty((PropertyInt64)PropLastGrant, (long)Time.GetUnixTime());

        if (prevCount == 0)
            player.SendMessage($"[Lockpick] Limitless Lockpick activated! Unlimited uses enabled (×{newCount}).");
        else
            player.SendMessage($"[Lockpick] Limitless Lockpick stacked -- unlimited uses ×{newCount}.");

        __result = true;
        return false;
    }

    // ── Intercept charge consumption on lock use ─────────────────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(UnlockerHelper), nameof(UnlockerHelper.ConsumeUnlocker))]
    public static bool PreConsumeUnlocker(Player player, WorldObject unlocker, WorldObject target, bool success)
    {
        if (!PatchClass.Settings.EnableLockpickAutoBank) return true;
        if (unlocker == null || player == null) return true;
        if (unlocker.WeenieType != WeenieType.Lockpick) return true;

        var baseMsg = success
            ? "You have successfully picked the lock!  It is now unlocked.\n "
            : "You have failed to pick the lock.  It is still locked.  ";

        // Limitless Lockpick: infinite uses, no charge deduction
        var limitless = player.GetProperty((PropertyInt64)PropLimitCount) ?? 0L;
        if (limitless > 0)
        {
            player.Session.Network.EnqueueSend(new GameMessageSystemChat(
                baseMsg + $"Limitless Lockpick active (×{limitless}) — no charges consumed.",
                ChatMessageType.Broadcast));
            player.SendUseDoneEvent();
            return false;
        }

        var banked = player.GetProperty((PropertyInt64)PropDurability) ?? 0L;

        if (banked > 0)
        {
            var newBanked = banked - 1;
            player.SetProperty((PropertyInt64)PropDurability, newBanked);

            var suffix = newBanked > 0
                ? $"Lockpick bank: {newBanked:N0} charges remaining."
                : "Your lockpick bank is now empty — pick up lockpicks to refill.";

            player.Session.Network.EnqueueSend(new GameMessageSystemChat(
                baseMsg + suffix, ChatMessageType.Broadcast));

            if (newBanked == 0)
                player.TryConsumeFromInventoryWithNetworking(unlocker, 1);

            player.SendUseDoneEvent();
            return false;
        }

        // Bank empty and no Limitless — fall through to vanilla (uses placeholder's
        // Structure which is null, so vanilla will see unlimitedUses=true and NOT
        // remove the item, but it'll send a confusing message). Consume placeholder
        // ourselves and bail.
        player.Session.Network.EnqueueSend(new GameMessageSystemChat(
            baseMsg + "Your lockpick bank is empty.", ChatMessageType.Broadcast));
        player.TryConsumeFromInventoryWithNetworking(unlocker, 1);
        player.SendUseDoneEvent();
        return false;
    }

    // ── AchievementUnlocked interop (one-time reflection init) ──────────────

    static bool? _achievementApiAvailable;
    static System.Reflection.MethodInfo? _hasAchievementMethod;

    static void EnsureAchievementInterop()
    {
        if (_achievementApiAvailable.HasValue) return;
        try
        {
            var asm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => string.Equals(a.GetName().Name, "AchievementUnlocked", StringComparison.Ordinal));
            if (asm == null) { _achievementApiAvailable = false; return; }

            var mgr = asm.GetType("AchievementUnlocked.AchievementManager");
            _hasAchievementMethod = mgr?.GetMethod("HasAchievement", new[] { typeof(Player), typeof(string) });
            _achievementApiAvailable = _hasAchievementMethod != null;
            ModManager.Log($"[LLL] AchievementUnlocked interop for lockpick banking: {(_achievementApiAvailable == true ? "OK" : "method not found")}",
                ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            _achievementApiAvailable = false;
            ModManager.Log($"[LLL] AchievementUnlocked interop init failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    /// <summary>
    /// Returns true when the player may use lockpick auto-banking:
    /// either they have Lockpick trained/spec'd, or they hold the configured
    /// AchievementUnlocked achievement (LockpickBankingAchievementId).
    /// </summary>
    static bool HasLockpickAccess(Player player)
    {
        var skill = player.GetCreatureSkill(Skill.Lockpick);
        if (skill != null && skill.AdvancementClass >= SkillAdvancementClass.Trained)
            return true;

        var achievementId = PatchClass.Settings?.LockpickBankingAchievementId;
        if (string.IsNullOrWhiteSpace(achievementId)) return false;

        EnsureAchievementInterop();
        if (_achievementApiAvailable != true || _hasAchievementMethod == null) return false;

        try
        {
            var result = _hasAchievementMethod.Invoke(null, new object[] { player, achievementId });
            return result is bool b && b;
        }
        catch { return false; }
    }
}
