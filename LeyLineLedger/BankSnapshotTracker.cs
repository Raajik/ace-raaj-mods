using System;
using System.Collections.Generic;
using System.Timers;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

namespace LeyLineLedger;

/// <summary>
/// Tracks bank balances for all online players on a 5-second interval.
/// Provides diff calculations between the current polled state and the last time
/// the player viewed their bank (via /b) or was shown a charge diff.
/// </summary>
public static class BankSnapshotTracker
{
    public class Snapshot
    {
        public long Pyreals { get; set; }
        public long Luminance { get; set; }
        public long AltCurrency { get; set; }
        public Dictionary<string, long> Keys { get; set; } = new();
        public DateTime Timestamp { get; set; }
    }

    // Latest polled values for all online players
    static readonly Dictionary<uint, Snapshot> _current = new();
    // Values from the last time the player was shown a diff
    static readonly Dictionary<uint, Snapshot> _lastViewed = new();

    static readonly System.Timers.Timer _timer;

    static BankSnapshotTracker()
    {
        _timer = new System.Timers.Timer(5000);
        _timer.Elapsed += (_, _) => PollAllPlayers();
        _timer.AutoReset = true;
        _timer.Start();
    }

    static void PollAllPlayers()
    {
        try
        {
            var settings = PatchClass.Settings;
            if (settings == null) return;

            foreach (var player in PlayerManager.GetAllOnline())
            {
                if (player == null) continue;

                var snap = CaptureSnapshot(player, settings);
                _current[player.Guid.Full] = snap;
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BankSnapshotTracker] Poll error: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    static Snapshot CaptureSnapshot(Player player, Settings settings)
    {
        var snap = new Snapshot
        {
            Pyreals = player.GetBanked(settings.CashProperty),
            Luminance = player.GetBanked(settings.LuminanceProperty),
            AltCurrency = settings.AltCurrencyProperty > 0 ? player.GetBanked(settings.AltCurrencyProperty) : 0,
            Timestamp = DateTime.UtcNow
        };

        var keys = new (string label, int prop)[]
        {
            ("SIK", 40250),
            ("SSK", 40500),
            ("MFK", 40750),
            ("L", 41000)
        };
        foreach (var (label, prop) in keys)
        {
            snap.Keys[label] = player.GetBanked(prop);
        }

        return snap;
    }

    /// <summary>
    /// Returns the current snapshot and the last-viewed snapshot for a player.
    /// The caller should call MarkViewed after displaying the diff.
    /// </summary>
    public static (Snapshot? lastViewed, Snapshot current) GetDiff(uint playerGuid)
    {
        _current.TryGetValue(playerGuid, out var current);
        _lastViewed.TryGetValue(playerGuid, out var last);

        if (current == null)
        {
            // Fallback: capture fresh if not in current poll
            var player = PlayerManager.GetOnlinePlayer(new ACE.Entity.ObjectGuid(playerGuid));
            if (player != null)
            {
                current = CaptureSnapshot(player, PatchClass.Settings);
                _current[playerGuid] = current;
            }
            else
            {
                current = new Snapshot();
            }
        }

        return (last, current);
    }

    /// <summary>
    /// Marks the current snapshot as viewed so subsequent diffs are from this point.
    /// </summary>
    public static void MarkViewed(uint playerGuid)
    {
        if (_current.TryGetValue(playerGuid, out var snap))
            _lastViewed[playerGuid] = new Snapshot
            {
                Pyreals = snap.Pyreals,
                Luminance = snap.Luminance,
                AltCurrency = snap.AltCurrency,
                Keys = new Dictionary<string, long>(snap.Keys),
                Timestamp = snap.Timestamp
            };
    }

    /// <summary>
    /// Formats a diff value with + or - prefix. Large values use k/M/B suffixes.
    /// </summary>
    public static string FormatDiff(long diff)
    {
        if (diff == 0) return "+0";
        string sign = diff > 0 ? "+" : "";
        long abs = Math.Abs(diff);
        string value = abs >= 1_000_000_000
            ? $"{abs / 1_000_000_000.0:F1}B"
            : abs >= 1_000_000
                ? $"{abs / 1_000_000.0:F1}M"
                : abs >= 1_000
                    ? $"{abs / 1_000.0:F0}k"
                    : abs.ToString("N0");
        return $"{sign}{value}";
    }

    /// <summary>
    /// Sends a colored diff message to the player after a virtual charge.
    /// Uses red (CombatEnemy) for negative, green (CombatSelf) for positive.
    /// </summary>
    public static void SendChargeDiff(Player player, long chargeAmount, string context)
    {
        var (last, current) = GetDiff(player.Guid.Full);
        MarkViewed(player.Guid.Full);

        // Compute the actual bank change
        long pyrealDiff = last != null ? current.Pyreals - last.Pyreals : -chargeAmount;

        string diffStr = FormatDiff(pyrealDiff);
        string currentStr = current.Pyreals >= 1_000_000_000
            ? $"{current.Pyreals / 1_000_000_000.0:F1}B"
            : current.Pyreals >= 1_000_000
                ? $"{current.Pyreals / 1_000_000.0:F1}M"
                : current.Pyreals >= 1_000
                    ? $"{current.Pyreals / 1_000.0:F0}k"
                    : current.Pyreals.ToString("N0");

        var msgType = pyrealDiff < 0 ? ACE.Entity.Enum.ChatMessageType.CombatEnemy : ACE.Entity.Enum.ChatMessageType.CombatSelf;
        player.SendMessage($"{context}: {currentStr} ({diffStr})", msgType);
    }
}
