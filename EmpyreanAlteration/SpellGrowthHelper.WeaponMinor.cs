namespace EmpyreanAlteration;

internal static partial class SpellGrowthHelper
{
    // Picks a random eligible player-table spell whose name contains one of the fragments and adds it to the item.
    internal static bool TryAddMinorCantripByNameFragments(
        WorldObject item,
        WeenieType weaponType,
        IReadOnlyList<string> nameFragments,
        out string? spellName)
    {
        spellName = null;
        if (item == null || nameFragments == null || nameFragments.Count == 0)
            return false;

        try
        {
            var spells = DatManager.PortalDat?.SpellTable?.Spells;
            if (spells == null)
                return false;

            List<int> matches = new();
            uint[] playerSpells = Player.PlayerSpellTable;
            foreach (uint rawId in playerSpells)
            {
                if (!spells.TryGetValue(rawId, out var sb) || sb == null)
                    continue;

                if (!IsWeaponGrowthEligible(sb, weaponType))
                    continue;

                string n = sb.Name ?? string.Empty;
                if (string.IsNullOrWhiteSpace(n))
                    continue;

                foreach (string frag in nameFragments)
                {
                    if (string.IsNullOrWhiteSpace(frag))
                        continue;
                    if (n.Contains(frag, StringComparison.OrdinalIgnoreCase))
                    {
                        matches.Add((int)rawId);
                        break;
                    }
                }
            }

            if (matches.Count == 0)
                return false;

            int pick = matches[Random.Shared.Next(0, matches.Count)];
            if (!AddSpellId(item, pick))
                return false;

            spellName = TryGetSpellName(pick);
            return true;
        }
        catch
        {
            return false;
        }
    }
}
