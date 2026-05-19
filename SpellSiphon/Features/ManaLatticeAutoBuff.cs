namespace Spellsiphon.Features;

using System.Timers;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

/// <summary>
/// Auto-buff integration for Mana Lattice.
/// When a player has /buffs auto enabled (QOL toggle property 45215), this timer
/// checks if their Mana Lattice buffs are expiring and auto-reuses the lattice.
/// </summary>
internal static class ManaLatticeAutoBuff
{
    private static System.Timers.Timer? _checkTimer;
    private static readonly object _lock = new();

    // Match QOL AutoBuff's default TogglePropertyId (45215)
    // If QOL is loaded with a different ID, we fall back to our own toggle.
    private const int QolAutoBuffToggleId = 45215;
    private const int SpellsiphonAutoLatticeId = 45216;

    public static void TryApply()
    {
        lock (_lock)
        {
            if (_checkTimer != null)
                return;

            int intervalMs = 600000; // Check every 10 minutes
            _checkTimer = new System.Timers.Timer(intervalMs);
            _checkTimer.Elapsed += (s, e) => OnCheckTimer();
            _checkTimer.Start();

            ModManager.Log("[Spellsiphon] ManaLatticeAutoBuff timer enabled (10m interval).", ModManager.LogLevel.Info);
        }
    }

    public static void Stop()
    {
        lock (_lock)
        {
            _checkTimer?.Stop();
            _checkTimer?.Dispose();
            _checkTimer = null;
        }
    }

    static void OnCheckTimer()
    {
        try
        {
            foreach (var player in PlayerManager.GetAllOnline())
            {
                if (player.IsDead || !IsAutoLatticeEnabled(player))
                    continue;

                var lattice = FindManaLatticeInInventory(player);
                if (lattice == null)
                    continue;

                var spellIds = ReadLatticeSpellIds(lattice);
                if (spellIds.Count == 0)
                    continue;

                bool needsRecast = false;
                foreach (int spellId in spellIds)
                {
                    if (ShouldRecast(player, spellId))
                    {
                        needsRecast = true;
                        break;
                    }
                }

                if (needsRecast)
                {
                    try
                    {
                        // Simulate the player using the gem
                        if (lattice is Gem gem)
                        {
                            gem.ActOnUse(player);
                            if (PatchClass.Settings?.Verbose == true)
                                ModManager.Log($"[Spellsiphon] Auto-buff: reused Mana Lattice for {player.Name}", ModManager.LogLevel.Info);
                        }
                    }
                    catch (Exception ex)
                    {
                        ModManager.Log($"[Spellsiphon] ManaLattice auto-use failed for {player.Name}: {ex.Message}", ModManager.LogLevel.Warn);
                    }
                }
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Spellsiphon] ManaLatticeAutoBuff timer error: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    public static bool IsAutoLatticeEnabled(Player player)
    {
        // Prefer QOL's /buffs auto toggle if it's set
        int? qol = player.GetProperty((PropertyInt)QolAutoBuffToggleId);
        if (qol.HasValue)
            return qol.Value != 0;

        // Fall back to Spellsiphon's own toggle
        int? own = player.GetProperty((PropertyInt)SpellsiphonAutoLatticeId);
        if (own.HasValue)
            return own.Value != 0;

        // Default: enabled
        return true;
    }

    public static void SetAutoLatticeEnabled(Player player, bool enabled)
    {
        player.SetProperty((PropertyInt)SpellsiphonAutoLatticeId, enabled ? 1 : 0);
    }

    static Gem? FindManaLatticeInInventory(Player player)
    {
        uint latticeWcid = PatchClass.Settings?.ManaLatticeWcid ?? 850201;

        // Search main inventory
        foreach (var item in player.Inventory.Values)
        {
            if (item.WeenieClassId == latticeWcid && item is Gem gem)
                return gem;

            // Search inside sub-containers (side packs)
            if (item is Container container)
            {
                foreach (var sub in container.Inventory.Values)
                {
                    if (sub.WeenieClassId == latticeWcid && sub is Gem subGem)
                        return subGem;
                }
            }
        }

        return null;
    }

    static List<int> ReadLatticeSpellIds(WorldObject lattice)
    {
        List<int> result = new();
        try
        {
            var book = lattice.Biota?.PropertiesSpellBook;
            if (book != null && book.Count > 0)
                foreach (int id in book.Keys)
                    if (id > 0) result.Add(id);
        }
        catch { }

        try
        {
            uint? did = lattice.SpellDID;
            if (!did.HasValue)
                did = lattice.GetProperty(PropertyDataId.Spell);
            if (did.HasValue && did.Value > 0 && !result.Contains((int)did.Value))
                result.Add((int)did.Value);
        }
        catch { }

        return result;
    }

    static bool ShouldRecast(Player player, int spellId)
    {
        try
        {
            var spell = new Spell((uint)spellId);
            if (spell == null || spell.Id == 0)
                return false;

            var entry = player.EnchantmentManager.GetEnchantment(spell.Id);
            if (entry == null)
                return true; // Not active — needs recast

            // Permanent enchantments (Duration < 0) don't need recasting
            if (entry.Duration < 0)
                return false;

            // Recast when less than 60 seconds remaining
            double remaining = entry.Duration + entry.StartTime - Time.GetUnixTime();
            return remaining <= 60.0;
        }
        catch
        {
            return false;
        }
    }
}
