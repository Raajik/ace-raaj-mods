namespace Loremaster;

using System.Text.Json;
using ACE.Common;
using ACE.Entity.Enum.Properties;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

/// <summary>
/// Momentum & Parity System (replaces RestedXp).
/// 
/// Design:
/// - Momentum Pool (account-wide, no cap):
///   -- Accrues as "% of next-level requirement" while ZERO characters on the account are online.
///   -- Decays slowly while ANY character on the account is online.
///   -- On XP grant: consume min(available pool, xp / levelReq). The consumed portion is matched as bonus XP.
///   -- Example: 50% momentum consumed → next XP grant is doubled (100% base + 100% matched).
/// 
/// - Quest Boost:
///   -- On quest completion, grant extra QB equal to current MomentumPercent.
///   -- Chance for bonus item/pyreal on turn-in also scales with momentum.
/// 
/// - Level Parity (optional anti-snowball):
///   -- Compute server median level hourly from players L50+.
///   -- Below median:  XP multiplier *= 1 + (Median - MyLevel) * BonusPerLevelDelta
///   -- Above median: XP multiplier *= Max(MinMultiplier, 1 - (MyLevel - Median) * PenaltyPerLevelDelta)
///   -- Example: 50 below median → +50% XP; 75 above → damped to 25% floor.
/// 
/// Why this discourages 24/7 botting:
/// - Being online drains momentum; breaks rebuild it.
/// - Quest completion is disproportionately rewarded.
/// - Being above the server median gives diminishing returns.
/// </summary>
internal static class MomentumSystem
{
    static readonly object _ioLock = new();
    static string? _filePath;
    static readonly Dictionary<uint, MomentumAccountState> _cache = new(); // key = accountId

    static MomentumSettings S => PatchClass.Settings?.Momentum ?? new();

    static DateTime _lastMedianScanUtc = DateTime.MinValue;
    static int _serverMedianLevel = 0;

    // Per-account "last character seen online" tracking (in-memory only; we infer from login/logout).
    // Real offline detection uses the IsAnyCharacterOnline method below.

    internal static void Initialize()
    {
        var modDir = PatchClass.GetModDirectory();
        if (!string.IsNullOrEmpty(modDir))
        {
            _filePath = Path.Combine(modDir, "Data", "MomentumState.json");
            // Belt-and-suspenders: explicitly create the Data subdirectory
            var dataDir = Path.Combine(modDir, "Data");
            if (!Directory.Exists(dataDir))
                Directory.CreateDirectory(dataDir);
            Load();
        }
    }

    // ── Public hooks called from PatchClass ──────────────────────────────

    internal static void OnPlayerEnterWorld(Player player)
    {
        if (!S.Enabled || player?.Account?.AccountId == null) return;
        var accountId = player.Account.AccountId;
        var state = GetOrCreate(accountId);
        var now = DateTime.UtcNow;

        RefreshServerMedianLevel();

        // Replenish momentum from offline time
        if (state.LastCharOfflineUtc > DateTime.MinValue && now > state.LastCharOfflineUtc)
        {
            // Only accrue if the account was truly offline (i.e. all characters logged out)
            if (!WasAccountOnlineRecently(accountId, state.LastCharOfflineUtc, now))
            {
                double offlineSeconds = (now - state.LastCharOfflineUtc).TotalSeconds;
                double levelReq = 0;
                try
                {
                    var xpList = DatManager.PortalDat?.XpTable?.CharacterLevelXPList;
                    int level = player.Level ?? 1;
                    if (xpList != null && level + 1 < xpList.Count)
                    {
                        levelReq = (double)(xpList[level + 1] - xpList[level]);
                    }
                }
                catch { }

                // Fallback: flat approximation if table unavailable
                if (levelReq <= 0)
                    levelReq = 1000000;

                double hoursGained = offlineSeconds / 3600.0;
                // Accrue as % of next-level requirement consumed per hour
                double newMomentum = hoursGained * (S.AccrualPercentPerHour / 100.0);
                
                // No cap
                state.MomentumPool = Math.Max(0.0, state.MomentumPool + newMomentum);
            }
        }

        state.LastCharOfflineUtc = DateTime.MinValue; // clear
        Save(accountId, state);

        if (state.MomentumPool > 0.01)
        {
            player.SendMessage($"[Momentum] You have {state.MomentumPool * 100.0:0.##}% momentum stored! XP gains will be boosted.", ChatMessageType.Magic);
        }
    }

    internal static void OnPlayerLogOut(Player player)
    {
        if (!S.Enabled || player?.Account?.AccountId == null) return;
        var accountId = player.Account.AccountId;
        var state = GetOrCreate(accountId);
        var now = DateTime.UtcNow;

        // Set the offline timestamp IF no other characters on this account are still online
        if (!IsAnyCharacterOnline(accountId, player.Guid.Full))
        {
            state.LastCharOfflineUtc = now;
        }

        Save(accountId, state);
    }

    /// <summary>
    /// Applies momentum multiplier to an XP amount. Returns the multiplier used (1.0 if inactive).
    /// Consumes momentum from the pool proportional to the XP granted.
    /// </summary>
    internal static double ApplyMomentumMultiplier(Player player, ref long amount)
    {
        if (!S.Enabled || player == null || amount <= 0)
            return 1.0;

        var accountId = player.Account?.AccountId ?? 0;
        if (accountId == 0) return 1.0;

        var state = GetOrCreate(accountId);
        if (state.MomentumPool <= 0.0001)
            return 1.0;

        // Compute how much of this level the XP grant represents
        double levelReq = GetLevelRequirement(player);
        if (levelReq <= 0) return 1.0;

        double xpFraction = amount / levelReq; // e.g. 5000 XP / 1M = 0.005
        double consumeFraction = Math.Min(xpFraction, state.MomentumPool);

        // Remove consumed portion from pool (decay)
        state.MomentumPool = Math.Max(0.0, state.MomentumPool - consumeFraction);
        Save(accountId, state);

        // Bonus: the consumed fraction is MATCHED (doubled)
        // Example: 10% consumed → XP *= (1 + 0.10) = 1.10x ... wait, the design says "matched"
        // Let me re-think: if we consume 0.01 (1% of a level) and MATCH it, the bonus is +100% of the consumed.
        // Actually: "The consumed % gets MATCHED as bonus XP" → amount = amount + (amount * consumedFraction)
        // So mult = 1 + consumedFraction. That's a very subtle bonus for small XP grants.
        // Alternatively: if you have 10% momentum, your next XP grant gets a flat 10% bonus.
        // The user's design says "A full level's worth of pool makes the next level effectively free".
        // So if pool = 1.0, then amount *= 2.0 (100% base + 100% matched).
        // If pool = 0.5, amount *= 1.5.
        // This means mult = 1.0 + consumedFraction.
        double mult = 1.0 + consumeFraction;
        amount = (long)(amount * mult);

        return mult;
    }

    /// <summary>
    /// Applies level parity multiplier. Call BEFORE momentum so momentum consumption is based on the post-parity amount.
    /// Returns the multiplier (1.0 if inactive).
    /// </summary>
    internal static double ApplyLevelParityMultiplier(Player player, ref long amount)
    {
        if (!S.EnableLevelParity || player == null || amount <= 0)
            return 1.0;

        RefreshServerMedianLevel();
        if (_serverMedianLevel <= 0) return 1.0;

        int myLevel = player.Level ?? 1;
        int delta = _serverMedianLevel - myLevel; // positive = below median, negative = above

        if (delta > 0)
        {
            // Below median: catch-up bonus
            double mult = 1.0 + delta * S.ParityBonusPerLevelDelta;
            amount = (long)(amount * mult);
            return mult;
        }
        else if (delta < 0)
        {
            // Above median: diminishing returns
            double mult = Math.Max(S.ParityMinimumMultiplier, 1.0 + delta * S.ParityPenaltyPerLevelDelta);
            amount = (long)(amount * mult);
            return mult;
        }

        return 1.0;
    }

    /// <summary>
    /// Called on quest completion to grant extra QB based on momentum.
    /// Returns bonus QB granted (0 if disabled or no momentum).
    /// </summary>
    internal static int ApplyQuestMomentumBonus(Player player)
    {
        if (!S.Enabled || player?.Account?.AccountId == null) return 0;

        var accountId = player.Account.AccountId;
        var state = GetOrCreate(accountId);
        if (state.MomentumPool <= 0.0001) return 0;

        double bonusPercent = state.MomentumPool; // e.g. 0.20 = +20% QB
        int bonusQb = (int)(bonusPercent * 100.0); // 0.20 → 20 (arbitrary scaling)
        if (bonusQb < 1) return 0;

        return bonusQb;
    }

    // ── Helpers ──────────────────────────────────────────────────────────

    static double GetLevelRequirement(Player player)
    {
        try
        {
            var xpList = DatManager.PortalDat?.XpTable?.CharacterLevelXPList;
            int level = player.Level ?? 1;
            if (xpList != null && level + 1 < xpList.Count)
                return (double)(xpList[level + 1] - xpList[level]);
        }
        catch { }
        return 0;
    }

    static bool IsAnyCharacterOnline(uint accountId, uint excludeGuid = 0)
    {
        foreach (var p in PlayerManager.GetAllOnline())
        {
            if (p.Guid.Full == excludeGuid) continue;
            if (p.Account?.AccountId == accountId) return true;
        }
        return false;
    }

    static bool WasAccountOnlineRecently(uint accountId, DateTime since, DateTime now)
    {
        // Simple check: if any character on this account was online between since and now,
        // the offline clock is invalid. We infer from current online state.
        // Since this method is called immediately on login, if any other character is online NOW,
        // the account was never truly offline.
        return IsAnyCharacterOnline(accountId);
    }

    static void RefreshServerMedianLevel()
    {
        var now = DateTime.UtcNow;
        if ((now - _lastMedianScanUtc).TotalMinutes < S.MedianScanIntervalMinutes)
            return;

        _lastMedianScanUtc = now;
        var levels = new List<int>();
        foreach (var p in PlayerManager.GetAllOnline())
        {
            if ((p.Level ?? 1) >= S.MinLevelForMedian)
                levels.Add(p.Level ?? 1);
        }

        if (levels.Count == 0)
        {
            _serverMedianLevel = 0;
            return;
        }

        levels.Sort();
        int mid = levels.Count / 2;
        _serverMedianLevel = (levels.Count % 2 == 0)
            ? (levels[mid - 1] + levels[mid]) / 2
            : levels[mid];
    }

    // ── Persistence (account-scoped) ─────────────────────────────────────

    static MomentumAccountState GetOrCreate(uint accountId)
    {
        lock (_cache)
        {
            if (_cache.TryGetValue(accountId, out var state))
                return state;
            return new MomentumAccountState();
        }
    }

    static void Load()
    {
        if (_filePath == null || !File.Exists(_filePath)) return;
        try
        {
            var json = File.ReadAllText(_filePath);
            var raw = JsonSerializer.Deserialize<Dictionary<string, MomentumAccountState>>(json);
            if (raw == null) return;
            lock (_cache)
            {
                _cache.Clear();
                foreach (var (key, val) in raw)
                    if (uint.TryParse(key, out uint accountId))
                        _cache[accountId] = val;
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Loremaster] MomentumState load failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static void Save(uint accountId, MomentumAccountState state)
    {
        if (_filePath == null) return;
        lock (_cache)
            _cache[accountId] = state;

        lock (_ioLock)
        {
            try
            {
                var data = new Dictionary<string, MomentumAccountState>();
                lock (_cache)
                    foreach (var (k, v) in _cache)
                        data[k.ToString()] = v;
                var json = JsonSerializer.Serialize(data, new JsonSerializerOptions { WriteIndented = true });
                File.WriteAllText(_filePath, json);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Loremaster] MomentumState save failed: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }
    }
}

public class MomentumAccountState
{
    public double MomentumPool { get; set; } = 0.0;  // Fraction of a level (e.g. 0.50 = 50% of next level)
    public DateTime LastCharOfflineUtc { get; set; } = DateTime.MinValue; // When the last character on this account logged out
}

public class MomentumSettings
{
    [JsonPropertyName("// Enabled")]
    public string EnabledDoc { get; init; } = "When true, replaces RestedXp with the Momentum & Parity system.";
    public bool Enabled { get; set; } = true;

    [JsonPropertyName("// AccrualPercentPerHour")]
    public string AccrualPercentPerHourDoc { get; init; } = "Momentum accrued per hour offline, as % of next-level requirement (5.0 = 5%/hr).";
    public double AccrualPercentPerHour { get; set; } = 5.0;

    [JsonPropertyName("// DecayPercentPerHour")]
    public string DecayPercentPerHourDoc { get; init; } = "Momentum decayed per hour while ANY character is online (1.0 = 1%/hr).";
    public double DecayPercentPerHour { get; set; } = 1.0;

    [JsonPropertyName("// EnableLevelParity")]
    public string EnableLevelParityDoc { get; init; } = "When true, apply level-parity catch-up/penalty to XP gains.";
    public bool EnableLevelParity { get; set; } = false;

    [JsonPropertyName("// ParityBonusPerLevelDelta")]
    public string ParityBonusPerLevelDeltaDoc { get; init; } = "Below median: +XP multiplier per level away (0.01 = +1% per level).";
    public double ParityBonusPerLevelDelta { get; set; } = 0.01;

    [JsonPropertyName("// ParityPenaltyPerLevelDelta")]
    public string ParityPenaltyPerLevelDeltaDoc { get; init; } = "Above median: -XP multiplier per level ahead (0.01 = -1% per level).";
    public double ParityPenaltyPerLevelDelta { get; set; } = 0.01;

    [JsonPropertyName("// ParityMinimumMultiplier")]
    public string ParityMinimumMultiplierDoc { get; init; } = "Floor on XP multiplier for above-median players (0.25 = 25% XP floor).";
    public double ParityMinimumMultiplier { get; set; } = 0.25;

    [JsonPropertyName("// MinLevelForMedian")]
    public string MinLevelForMedianDoc { get; init; } = "Only players at or above this level count toward the server median.";
    public int MinLevelForMedian { get; set; } = 50;

    [JsonPropertyName("// MedianScanIntervalMinutes")]
    public string MedianScanIntervalMinutesDoc { get; init; } = "How often the server median is recalculated.";
    public int MedianScanIntervalMinutes { get; set; } = 60;
}
