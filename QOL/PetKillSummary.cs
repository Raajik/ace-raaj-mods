using System.Collections.Concurrent;

namespace QOL;

// Aggregates kill messages (by player and by pets) into batched summaries per owner
// after a configurable idle window (default 30s).
//
// Individual kill messages are suppressed:
//   - KillXpMessage's killer notification is skipped when this feature is active
//   - Vanilla GetDeathMessage notification is suppressed via a prefix here (covers
//     the edge case where EnableKillXpMessage is false)
//   - "Your pet has slain X" is suppressed in PetMessageDamage
//
// XP attribution: ThreadStatic context set in OnDeath_GrantXP prefix so each
// mob-type bucket accumulates the actual XP that kill type earned.

[HarmonyPatchCategory(nameof(Features.PetKillSummary))]
internal static class PetKillSummary
{
    [ThreadStatic]
    static KillContext? _ctx;

    record struct KillContext(uint OwnerGuid, string MobName, bool IsPetKill);

    static readonly ConcurrentDictionary<uint, PlayerKillBatch> _batches = new();

    // ── Detect kill type and set context ─────────────────────────────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.OnDeath_GrantXP))]
    public static void OnDeathGrantXP_Prefix(Creature __instance)
    {
        _ctx = null;
        var lastDamager = __instance.DamageHistory?.LastDamager;
        if (lastDamager == null) return;

        string mobName = __instance.Name ?? "Unknown";

        if (lastDamager.PetOwner != null)
        {
            var owner = lastDamager.TryGetPetOwner();
            if (owner?.Session == null) return;
            _ctx = new KillContext(owner.Guid.Full, mobName, IsPetKill: true);
        }
        else if (lastDamager.IsPlayer)
        {
            if (lastDamager.TryGetAttacker() is not Player player || player.Session == null) return;
            _ctx = new KillContext(player.Guid.Full, mobName, IsPetKill: false);
        }
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.OnDeath_GrantXP))]
    public static void OnDeathGrantXP_Postfix() => _ctx = null;

    // ── Capture XP granted to the owner ──────────────────────────────────────

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP),
        new[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void GrantXP_Postfix(long amount, XpType xpType, Player __instance)
    {
        if (xpType != XpType.Kill || amount <= 0) return;
        var ctx = _ctx;
        if (ctx == null || ctx.Value.OwnerGuid != __instance.Guid.Full) return;

        var batch = _batches.GetOrAdd(ctx.Value.OwnerGuid, _ => new PlayerKillBatch(__instance,
            PatchClass.Settings?.PetKillSummaryWindowSeconds ?? 30));
        batch.Add(ctx.Value.MobName, amount, ctx.Value.IsPetKill);
    }

    // ── Suppress vanilla GetDeathMessage killer notification ─────────────────
    // Only fires when KillXpMessage is OFF; when KillXpMessage is ON it handles
    // its own suppression via the EnablePetKillSummary guard in KillXpMessage.cs.

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GetDeathMessage))]
    public static bool GetDeathMessage_VanillaSuppress(
        DamageHistoryInfo lastDamagerInfo, DamageType damageType, bool criticalHit,
        Creature __instance, ref DeathMessage __result)
    {
        if (PatchClass.Settings?.EnableKillXpMessage == true)
            return true; // KillXpMessage's prefix handles the notification; defer to it

        var lastDamager = lastDamagerInfo?.TryGetAttacker();
        if (lastDamagerInfo == null || lastDamagerInfo.Guid == __instance.Guid
            || lastDamager is Hotspot || lastDamager is Food)
        {
            __result = Strings.General[1];
            return false;
        }

        var deathMessage = Strings.GetDeathMessage(damageType, criticalHit);

        if (lastDamagerInfo.IsPlayer && criticalHit && __instance is Player)
            deathMessage = Strings.PKCritical[0];

        // Intentionally do NOT send GameEventKillerNotification here —
        // the batch summary will deliver the kill info after the window expires.

        __result = deathMessage;
        return false;
    }

    // ── Per-player kill buffer ────────────────────────────────────────────────

    sealed class PlayerKillBatch
    {
        readonly Player _owner;
        readonly int _windowSecs;
        readonly Dictionary<string, (int count, long xp)> _playerKills = new();
        readonly Dictionary<string, (int count, long xp)> _petKills = new();
        CancellationTokenSource? _cts;

        public PlayerKillBatch(Player owner, int windowSecs)
        {
            _owner = owner;
            _windowSecs = windowSecs;
        }

        public void Add(string mobName, long xp, bool isPetKill)
        {
            var dict = isPetKill ? _petKills : _playerKills;
            lock (dict)
            {
                dict.TryGetValue(mobName, out var prev);
                dict[mobName] = (prev.count + 1, prev.xp + xp);
            }
            Reschedule();
        }

        void Reschedule()
        {
            var cts = new CancellationTokenSource();
            var old = Interlocked.Exchange(ref _cts, cts);
            old?.Cancel();
            _ = Task.Delay(TimeSpan.FromSeconds(_windowSecs), cts.Token)
                    .ContinueWith(_ => Flush(), CancellationToken.None,
                        TaskContinuationOptions.OnlyOnRanToCompletion,
                        TaskScheduler.Default);
        }

        void Flush()
        {
            Dictionary<string, (int, long)> playerSnap, petSnap;
            lock (_playerKills) { playerSnap = new(_playerKills); _playerKills.Clear(); }
            lock (_petKills)    { petSnap    = new(_petKills);    _petKills.Clear(); }

            _batches.TryRemove(_owner.Guid.Full, out _);

            if (_owner.Session == null) return;
            if (playerSnap.Count == 0 && petSnap.Count == 0) return;

            var cfg = PatchClass.Settings?.KillXpMessage;
            bool showRaw = cfg?.ShowRaw    ?? true;
            bool showPct = cfg?.ShowPercent ?? false;

            if (playerSnap.Count > 0)
                _owner.SendMessage($"You slew {FormatList(playerSnap, showRaw, showPct)}!", ChatMessageType.Broadcast);

            if (petSnap.Count > 0)
                _owner.SendMessage($"Your pets slew {FormatList(petSnap, showRaw, showPct)}!", ChatMessageType.Broadcast);
        }

        string FormatList(Dictionary<string, (int count, long xp)> kills, bool showRaw, bool showPct)
        {
            var parts = kills
                .OrderByDescending(kv => kv.Value.xp)
                .Select(kv => FormatEntry(kv.Key, kv.Value.count, kv.Value.xp, showRaw, showPct))
                .ToList();

            return parts.Count switch
            {
                1 => parts[0],
                2 => $"{parts[0]} and {parts[1]}",
                _ => string.Join(", ", parts[..^1]) + ", and " + parts[^1],
            };
        }

        string FormatEntry(string name, int count, long xp, bool showRaw, bool showPct)
        {
            string label = count == 1 ? name : $"{name} ×{count}";

            var xpParts = new List<string>(2);
            if (showRaw) xpParts.Add($"{xp:N0}xp");
            if (showPct) xpParts.Add($"{ComputePct(xp):F2}%");

            return xpParts.Count > 0 ? $"{label} ({string.Join("/", xpParts)})" : label;
        }

        double ComputePct(long xp)
        {
            try
            {
                var xpList = DatManager.PortalDat.XpTable.CharacterLevelXPList;
                int level = _owner.Level ?? 1;
                if (level >= xpList.Count - 1) return 0;
                long window = (long)xpList[level + 1] - (long)xpList[level];
                return window > 0 ? xp / (double)window * 100.0 : 0;
            }
            catch { return 0; }
        }
    }
}
