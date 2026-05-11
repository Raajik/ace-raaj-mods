namespace EmpyreanAlteration;

// Ordered weapon spell ladder (Blood Drinker → … → Swift Killer) with tier caps from treasure tier.
internal static partial class SpellGrowthHelper
{
    // Spell branch: if any ladder spell can tier up, roll SpellUpgradeChance for an ordered upgrade; else roll SpellAddChance to add the next missing line.
    internal static bool TryOrderedWeaponSpellLadderStep(
        WorldObject item,
        Player player,
        int level,
        IReadOnlyList<string> orderedLineKeys,
        WeenieType weaponType,
        int treasureTier,
        double upgradeChance,
        double addChance,
        bool allowNewSpellLines,
        bool emitMessages,
        out string? appliedDescription)
    {
        appliedDescription = null;
        if (item == null || orderedLineKeys == null || orderedLineKeys.Count == 0)
            return false;

        EnsureAutoPools(new SpellGrowthSettings());

        int maxTierRank = Math.Clamp(treasureTier > 0 ? treasureTier : 1, 1, 10);
        List<int> pool = BuildOrderedLadderPool(orderedLineKeys, weaponType, maxTierRank);
        if (pool.Count == 0)
            return false;

        Dictionary<string, int> present = BuildPresentSpellLineTierMap(item);

        bool canUpgrade = LadderCanUpgradeAny(orderedLineKeys, pool, present);

        if (canUpgrade && Random.Shared.NextDouble() < upgradeChance)
        {
            if (TryOrderedUpgrade(item, player, level, orderedLineKeys, pool, present, maxTierRank, emitMessages, out appliedDescription))
                return true;
        }

        if (allowNewSpellLines && Random.Shared.NextDouble() < addChance)
        {
            if (TryOrderedAdd(item, player, level, orderedLineKeys, pool, present, maxTierRank, emitMessages, out appliedDescription))
                return true;
        }

        return false;
    }

    private static bool LadderCanUpgradeAny(
        IReadOnlyList<string> orderedLineKeys,
        List<int> pool,
        Dictionary<string, int> present)
    {
        foreach (string lineKey in orderedLineKeys)
        {
            if (!present.TryGetValue(lineKey, out int curTier))
                continue;

            bool hasHigher = pool.Any(id =>
            {
                string? k = GetSpellLineKey(id);
                if (k == null || !string.Equals(k, lineKey, StringComparison.OrdinalIgnoreCase))
                    return false;
                return GetSpellTierRank(id) > curTier;
            });

            if (hasHigher)
                return true;
        }

        return false;
    }

    private static bool TryOrderedUpgrade(
        WorldObject item,
        Player player,
        int level,
        IReadOnlyList<string> orderedLineKeys,
        List<int> pool,
        Dictionary<string, int> present,
        int maxTierRank,
        bool emitMessages,
        out string? appliedDescription)
    {
        appliedDescription = null;

        foreach (string lineKey in orderedLineKeys)
        {
            if (!present.TryGetValue(lineKey, out int curTier))
                continue;

            int? nextId = pool
                .Where(id =>
                {
                    string? k = GetSpellLineKey(id);
                    return k != null && string.Equals(k, lineKey, StringComparison.OrdinalIgnoreCase);
                })
                .Where(id => GetSpellTierRank(id) > curTier && GetSpellTierRank(id) <= maxTierRank)
                .OrderBy(id => GetSpellTierRank(id))
                .Select(id => (int?)id)
                .FirstOrDefault();

            if (!nextId.HasValue)
                continue;

            if (AddSpellId(item, nextId.Value))
            {
                RemoveLowerSpellTiersInLine(item, lineKey, GetSpellTierRank(nextId.Value));
                string spellName = TryGetSpellName(nextId.Value);
                appliedDescription = $"upgrades ({spellName})";
                if (emitMessages)
                    player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and upgrades its spell ({spellName}).");
                return true;
            }
        }

        return false;
    }

    private static bool TryOrderedAdd(
        WorldObject item,
        Player player,
        int level,
        IReadOnlyList<string> orderedLineKeys,
        List<int> pool,
        Dictionary<string, int> present,
        int maxTierRank,
        bool emitMessages,
        out string? appliedDescription)
    {
        appliedDescription = null;

        foreach (string lineKey in orderedLineKeys)
        {
            bool hasLine = present.Keys.Any(k => string.Equals(k, lineKey, StringComparison.OrdinalIgnoreCase));
            if (hasLine)
                continue;

            List<int> candidates = pool
                .Where(id =>
                {
                    string? k = GetSpellLineKey(id);
                    return k != null && string.Equals(k, lineKey, StringComparison.OrdinalIgnoreCase);
                })
                .Where(id => GetSpellTierRank(id) <= maxTierRank)
                .OrderByDescending(id => GetSpellTierRank(id))
                .ToList();

            if (candidates.Count == 0)
                continue;

            int bestId = candidates[0];

            if (AddSpellId(item, bestId))
            {
                string spellName = TryGetSpellName(bestId);
                appliedDescription = $"gains ({spellName})";
                if (emitMessages)
                    player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and gains a new spell ({spellName}).");
                return true;
            }
        }

        return false;
    }

    private static List<int> BuildOrderedLadderPool(IReadOnlyList<string> orderedLineKeys, WeenieType weaponType, int maxTierRank)
    {
        List<int> pool = new();
        try
        {
            var spells = DatManager.PortalDat?.SpellTable?.Spells;
            if (spells == null)
                return pool;

            uint[] playerSpells = Player.PlayerSpellTable;
            HashSet<uint> allowed = new(playerSpells);

            foreach (uint rawId in allowed)
            {
                int id = (int)rawId;
                if (!spells.TryGetValue(rawId, out var sb) || sb == null)
                    continue;

                if (!IsWeaponGrowthEligible(sb, weaponType))
                    continue;

                string? key = GetSpellLineKey(id);
                if (string.IsNullOrWhiteSpace(key))
                    continue;

                bool inLadder = orderedLineKeys.Any(f => string.Equals(f, key, StringComparison.OrdinalIgnoreCase));
                if (!inLadder)
                    continue;

                if (GetSpellTierRank(id) > maxTierRank)
                    continue;

                pool.Add(id);
            }
        }
        catch
        {
        }

        return pool.Distinct().ToList();
    }
}
