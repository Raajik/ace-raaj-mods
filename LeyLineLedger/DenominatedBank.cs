using System.Text;
using ACE.Entity.Enum.Properties;
using ACE.Server.Managers;
using ACE.Server.Network;
using ACE.Server.WorldObjects;

namespace LeyLineLedger;

/// <summary>
/// Denominated bank families: deposit any denomination, withdraw optimal denominations.
/// Integrated into LeyLineLedger /bank command; no separate /dbank needed.
/// Supports Pyreal (mote→ingot), Crystal shards, and Shadow shards.
/// </summary>
internal static class DenominatedBank
{
    public sealed record DenomItem(uint Wcid, string Name, int BaseValue);
    public sealed record Family(string Name, int BaseProp, List<DenomItem> Items);

    static readonly List<Family> Families = new()
    {
        new("pyreal", 40200, new()
        {
            new(6353, "Pyreal Mote", 1),
            new(6355, "Pyreal Sliver", 2),
            new(6354, "Pyreal Nugget", 4),
            new(6329, "Pyreal Bar", 8),
            new(6331, "Quality Pyreal Ingot", 12),
            new(6330, "Pyreal Ingot", 16),
        }),
        new("crystal", 40201, new()
        {
            new(6055, "Cracked Crystal Shard", 1),
            new(6057, "Tiny Crystal Shard", 2),
            new(6056, "Small Crystal Shard", 4),
            new(6623, "Crystal Fragment", 8),
        }),
        new("shadow", 40202, new()
        {
            new(6060, "Shadow Speck", 1),
            new(6059, "Shadow Sliver", 2),
            new(6058, "Shadow Shard", 4),
            new(6624, "Shadow Fragment", 8),
        }),
    };

    public static Family? FindFamily(string token)
    {
        if (string.IsNullOrWhiteSpace(token))
            return null;

        foreach (var f in Families)
            if (f.Name.Equals(token, StringComparison.OrdinalIgnoreCase))
                return f;

        return null;
    }

    public static bool TokenMatchesFamily(string token, out Family? family)
    {
        family = FindFamily(token);
        return family != null;
    }

    static DenomItem? FindDenomItem(Family family, uint wcid)
    {
        foreach (var d in family.Items)
            if (d.Wcid == wcid)
                return d;
        return null;
    }

    // -- Deposit ----------------------------------------------------------------

    /// <summary>Returns one message per family that had items deposited. Empty if none.</summary>
    public static List<string> DepositAllFamilies(Player player)
    {
        var results = new List<string>();
        foreach (var family in Families)
        {
            var msg = DepositFamily(player, family);
            if (msg != null)
                results.Add(msg);
        }
        return results;
    }

    public static string? DepositFamily(Player player, string token)
    {
        var family = FindFamily(token);
        if (family == null)
        {
            player.SendMessage($"Unknown family '{token}'. Use: pyreal, crystal, or shadow.");
            return null;
        }
        return DepositFamily(player, family);
    }

    /// <summary>Returns the deposit message, or null if nothing was deposited.</summary>
    static string? DepositFamily(Player player, Family family)
    {
        long totalBase = 0;
        int itemsRemoved = 0;

        foreach (var denom in family.Items)
        {
            var items = player.GetInventoryItemsOfWCID(denom.Wcid);
            if (items.Count == 0)
                continue;

            foreach (var item in items)
            {
                int stack = item.StackSize ?? 1;

                if (!player.TryRemoveFromInventoryWithNetworking(item.Guid, out _,
                        Player.RemoveFromInventoryAction.ConsumeItem))
                {
                    ModManager.Log($"[DenominatedBank] Failed to remove {item.Name} from inventory during deposit.");
                    continue;
                }
                item.Destroy();

                totalBase += (long)stack * denom.BaseValue;
                itemsRemoved += stack;
            }
        }

        if (itemsRemoved == 0)
            return null;

        player.IncBanked(family.BaseProp, totalBase);

        var largest = family.Items[^1];
        var largeCount = totalBase / largest.BaseValue;
        var remainder = totalBase % largest.BaseValue;

        var msg = $"Deposited {itemsRemoved} {family.Name} items ({totalBase} base units).";
        if (largeCount > 0)
            msg += $" Worth ~{largeCount} {largest.Name}{(remainder > 0 ? " + remainder" : "")}.";

        return msg;
    }

    // -- Withdraw ----------------------------------------------------------------

    public static void WithdrawFamily(Player player, string token, int requestedBase, bool silent = false)
    {
        var family = FindFamily(token);
        if (family == null)
        {
            if (!silent)
                player.SendMessage($"Unknown family '{token}'. Use: pyreal, crystal, or shadow.");
            return;
        }
        WithdrawFamily(player, family, requestedBase, silent);
    }

    static void WithdrawFamily(Player player, Family family, int requestedBase, bool silent)
    {
        if (requestedBase <= 0)
        {
            if (!silent)
                player.SendMessage("Amount must be a positive number of base units.");
            return;
        }

        var banked = player.GetBanked(family.BaseProp);
        if (banked < requestedBase)
        {
            if (!silent)
                player.SendMessage($"You only have {banked} {family.Name} base units banked (requested {requestedBase}).");
            return;
        }

        // Greedy algorithm: largest denominations first
        var plan = new List<(DenomItem item, int count)>();
        long remaining = requestedBase;
        const long maxPerStack = 100;

        for (int i = family.Items.Count - 1; i >= 0; i--)
        {
            var denom = family.Items[i];
            long count = remaining / denom.BaseValue;
            if (count <= 0)
                continue;

            while (count > 0)
            {
                long take = Math.Min(count, maxPerStack);
                plan.Add((denom, (int)take));
                remaining -= take * denom.BaseValue;
                count -= take;
            }
        }

        if (remaining > 0)
        {
            if (!silent)
                player.SendMessage("Unable to make exact change with available denominations.");
            return;
        }

        // Verify pack space
        int freeSlots = player.GetFreeInventorySlots();
        if (plan.Count > freeSlots)
        {
            if (!silent)
                player.SendMessage($"Not enough pack space. Need {plan.Count} slots, have ~{freeSlots}.");
            return;
        }

        // Create items (all-or-nothing: debit only if every stack lands in inventory)
        var created = new List<WorldObject>();
        foreach (var (denom, count) in plan)
        {
            var wo = WorldObjectFactory.CreateNewWorldObject(denom.Wcid);
            if (wo == null)
            {
                foreach (var prior in created)
                    prior.Destroy();
                if (!silent)
                    player.SendMessage($"Failed to create {denom.Name}. Nothing was taken from your bank.");
                ModManager.Log($"[DenominatedBank] WithdrawFamily: CreateNewWorldObject failed for WCID {denom.Wcid} ({denom.Name}), player {player.Name}.");
                return;
            }

            wo.SetStackSize(count);
            if (!player.TryCreateInInventoryWithNetworking(wo))
            {
                wo.Destroy();
                foreach (var prior in created)
                    prior.Destroy();
                if (!silent)
                    player.SendMessage($"Not enough pack space for {denom.Name} ×{count}. Nothing was taken from your bank.");
                return;
            }

            created.Add(wo);
        }

        player.IncBanked(family.BaseProp, -requestedBase);

        if (!silent)
        {
            var createdNames = new Dictionary<string, int>();
            foreach (var (denom, count) in plan)
                createdNames[denom.Name] = createdNames.GetValueOrDefault(denom.Name) + count;

            var parts = createdNames.Select(kv => $"{kv.Key} ×{kv.Value}").ToList();
            player.SendMessage($"Withdrew {requestedBase} {family.Name} base units: {string.Join(", ", parts)}. {banked - requestedBase} remaining.");
        }
    }

    // -- Status / List integration ------------------------------------------------

    public static void AppendStatus(Player player, StringBuilder sb)
    {
        foreach (var family in Families)
        {
            var banked = player.GetBanked(family.BaseProp);
            if (banked <= 0)
                continue;

            var largest = family.Items[^1];
            var largeCount = banked / largest.BaseValue;
            var remainder = banked % largest.BaseValue;

            sb.Append($"\n{family.Name}:\n  {banked:N0} base units (~{largeCount} {largest.Name} + {remainder})");
        }
    }

    /// <summary>Returns suggested family names if token is close to one.</summary>
    public static string? SuggestFamily(string token)
    {
        var lower = token.ToLowerInvariant();
        var matches = Families
            .Where(f => f.Name.StartsWith(lower, StringComparison.OrdinalIgnoreCase) ||
                       lower.StartsWith(f.Name, StringComparison.OrdinalIgnoreCase))
            .Select(f => f.Name)
            .ToList();

        if (matches.Count == 0)
        {
            matches = Families
                .Where(f => f.Name.Contains(lower, StringComparison.OrdinalIgnoreCase) ||
                           lower.Contains(f.Name, StringComparison.OrdinalIgnoreCase))
                .Select(f => f.Name)
                .ToList();
        }

        return matches.Count > 0 ? string.Join(", ", matches) : null;
    }
}
