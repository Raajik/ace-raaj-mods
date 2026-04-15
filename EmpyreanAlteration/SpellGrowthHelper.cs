namespace EmpyreanAlteration;

// Applies spell and cantrip growth to items on level-up using settings-driven spell ID pools.
internal static partial class SpellGrowthHelper
{
    private static readonly SpellGrowthSettings DefaultSpellGrowth = new();

    private static readonly object _lock = new();
    private static bool _autoBuilt;
    private static List<int> _weaponPoolMelee = new();
    private static List<int> _weaponPoolMissile = new();
    private static List<int> _weaponPoolCaster = new();
    private static List<int> _autoArmorJewelry = new();
    private static List<CantripLine> _autoCantripLines = new();

    // Clears dat-built pools so a reload/unload does not keep stale spell lists across settings or PortalDat changes.
    internal static void ResetPoolsForUnload()
    {
        lock (_lock)
        {
            _autoBuilt = false;
            _weaponPoolMelee = new List<int>();
            _weaponPoolMissile = new List<int>();
            _weaponPoolCaster = new List<int>();
            _autoArmorJewelry = new List<int>();
            _autoCantripLines = new List<CantripLine>();
        }
    }

    // Tries to add or upgrade a spell/cantrip on level-up based on category weights.
    // Returns true if any change was applied.
    internal static bool TryApplySpellGrowth(WorldObject item, Player player, int level, Settings settings)
    {
        if (item == null || settings == null)
            return false;

        SpellGrowthSettings cfg = settings.SpellGrowth ?? DefaultSpellGrowth;
        if (!cfg.Enabled)
            return false;

        EnsureAutoPools(cfg);

        // Determine category pool
        List<int> pool = GetCategoryPool(item, cfg);
        if (pool.Count == 0 && (cfg.CantripLines == null || cfg.CantripLines.Count == 0))
            return false;

        // Outcome weights: spell vs cantrip
        int spellW = cfg.SpellOutcomeWeight;
        int cantripW = cfg.CantripOutcomeWeight;
        if (spellW < 0) spellW = 0;
        if (cantripW < 0) cantripW = 0;
        int total = spellW + cantripW;
        if (total == 0)
            return false;

        int roll = Random.Shared.Next(0, total);
        if (roll < spellW)
            return TryApplyOrUpgradeSpell(item, player, level, pool, cfg);

        return TryApplyOrUpgradeCantrip(item, player, level, cfg);
    }

    internal static bool TryApplySpellGrowth(WorldObject item, Player player, int level, Settings settings, bool emitMessages, out string? appliedDescription)
    {
        appliedDescription = null;

        if (item == null || settings == null)
            return false;

        SpellGrowthSettings cfg = settings.SpellGrowth ?? DefaultSpellGrowth;
        if (!cfg.Enabled)
            return false;

        EnsureAutoPools(cfg);

        List<int> pool = GetCategoryPool(item, cfg);
        if (pool.Count == 0 && (cfg.CantripLines == null || cfg.CantripLines.Count == 0))
            return false;

        int spellW = cfg.SpellOutcomeWeight;
        int cantripW = cfg.CantripOutcomeWeight;
        if (spellW < 0) spellW = 0;
        if (cantripW < 0) cantripW = 0;
        int total = spellW + cantripW;
        if (total == 0)
            return false;

        int roll = Random.Shared.Next(0, total);
        if (roll < spellW)
            return TryApplyOrUpgradeSpell(item, player, level, pool, cfg, emitMessages, out appliedDescription);

        return TryApplyOrUpgradeCantrip(item, player, level, cfg, emitMessages, out appliedDescription);
    }

    private static List<int> GetCategoryPool(WorldObject item, SpellGrowthSettings cfg)
    {
        WeenieType type = item.WeenieType;
        if (type == WeenieType.MeleeWeapon || type == WeenieType.MissileLauncher || type == WeenieType.Caster)
        {
            if (cfg.WeaponSpellIds != null && cfg.WeaponSpellIds.Count > 0)
                return cfg.WeaponSpellIds;
            return type switch
            {
                WeenieType.MeleeWeapon => _weaponPoolMelee,
                WeenieType.MissileLauncher => _weaponPoolMissile,
                _ => _weaponPoolCaster,
            };
        }

        if (type == WeenieType.Clothing)
            return (cfg.ArmorOrJewelrySpellIds != null && cfg.ArmorOrJewelrySpellIds.Count > 0) ? cfg.ArmorOrJewelrySpellIds : _autoArmorJewelry;
        return cfg.GenericSpellIds ?? new List<int>();
    }

    private static bool TryApplyOrUpgradeSpell(WorldObject item, Player player, int level, List<int> pool, SpellGrowthSettings cfg)
    {
        return TryApplyOrUpgradeSpell(item, player, level, pool, cfg, emitMessages: true, out _);
    }

    private static bool TryApplyOrUpgradeSpell(WorldObject item, Player player, int level, List<int> pool, SpellGrowthSettings cfg, bool emitMessages, out string? appliedDescription)
    {
        appliedDescription = null;

        if (pool == null || pool.Count == 0)
            return false;

        // Prevent "downgrades": if an item already has Blood Drinker VI, do not add Blood Drinker I, etc.
        // We do this by treating spells as belonging to "lines" derived from their names, then only adding
        // a spell from a line that isn't present, or upgrading within the same line to a higher tier.
        Dictionary<string, int> presentLineToTier = BuildPresentSpellLineTierMap(item);

        // Always try upgrades before adding new spell lines (SpellUpgradeChance is unused; see Settings comment).
        List<string> upgradableKeys = new();
        foreach (var kvp in presentLineToTier)
        {
            string key = kvp.Key;
            int currentTier = kvp.Value;
            bool hasHigherInPool = pool.Any(id =>
            {
                string? k = GetSpellLineKey(id);
                if (k == null || !string.Equals(k, key, StringComparison.OrdinalIgnoreCase))
                    return false;
                return GetSpellTierRank(id) > currentTier;
            });
            if (hasHigherInPool)
                upgradableKeys.Add(key);
        }

        if (upgradableKeys.Count > 0)
        {
            string chosenKey = upgradableKeys[Random.Shared.Next(0, upgradableKeys.Count)];
            int currentTier = presentLineToTier[chosenKey];

            int? upgradeId = pool
                .Select(id => (id, k: GetSpellLineKey(id), tier: GetSpellTierRank(id)))
                .Where(x => x.k != null && string.Equals(x.k, chosenKey, StringComparison.OrdinalIgnoreCase))
                .Where(x => x.tier > currentTier)
                .OrderBy(x => x.tier)
                .Select(x => (int?)x.id)
                .FirstOrDefault();

            if (upgradeId.HasValue && AddSpellId(item, upgradeId.Value))
            {
                RemoveLowerSpellTiersInLine(item, chosenKey, GetSpellTierRank(upgradeId.Value));
                string spellName = TryGetSpellName(upgradeId.Value);
                appliedDescription = $"upgrades its spell ({spellName})";
                if (emitMessages)
                    player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and {appliedDescription}.");
                return true;
            }
        }

        // Add a new spell line from pool if missing (never add a lower-tier spell in an existing line).
        int? spellId = FindFirstNotPresentNewLine(item, pool, presentLineToTier);
        if (!spellId.HasValue)
            return false;

        if (AddSpellId(item, spellId.Value))
        {
            string spellName = TryGetSpellName(spellId.Value);
            appliedDescription = $"gains a new spell ({spellName})";
            if (emitMessages)
                player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and {appliedDescription}.");
            return true;
        }

        return false;
    }

    private static bool TryApplyOrUpgradeCantrip(WorldObject item, Player player, int level, SpellGrowthSettings cfg)
    {
        return TryApplyOrUpgradeCantrip(item, player, level, cfg, emitMessages: true, out _);
    }

    private static bool TryApplyOrUpgradeCantrip(WorldObject item, Player player, int level, SpellGrowthSettings cfg, bool emitMessages, out string? appliedDescription)
    {
        appliedDescription = null;

        List<CantripLine> lines = (cfg.CantripLines != null && cfg.CantripLines.Count > 0) ? cfg.CantripLines : _autoCantripLines;
        if (lines.Count == 0)
            return false;

        // CantripUpgradeChance is unused: collect lines that can step to the next tier, then pick one at random.
        List<CantripLine> upgradeableLines = new();
        foreach (var line in lines)
        {
            if (TryGetCantripNextUpgradeId(item, line, out _))
                upgradeableLines.Add(line);
        }

        if (upgradeableLines.Count > 0)
        {
            CantripLine pickLine = upgradeableLines[Random.Shared.Next(0, upgradeableLines.Count)];
            if (TryGetCantripNextUpgradeId(item, pickLine, out int nextId) && AddSpellId(item, nextId))
            {
                RemoveCantripTiersBelow(item, pickLine, nextId);
                string spellName = TryGetSpellName(nextId);
                appliedDescription = $"upgrades its cantrip ({spellName})";
                if (emitMessages)
                    player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and {appliedDescription}.");
                return true;
            }
        }

        // Add the first tier of a line not present
        foreach (var line in lines)
        {
            int? baseId = FirstMissingFromLine(item, line);
            if (baseId.HasValue && AddSpellId(item, baseId.Value))
            {
                string spellName = TryGetSpellName(baseId.Value);
                appliedDescription = $"gains a cantrip ({spellName})";
                if (emitMessages)
                    player.SendMessage($"{item.Name} has reached level {level}/{item.ItemMaxLevel} and {appliedDescription}.");
                return true;
            }
        }

        return false;
    }

    private static void EnsureAutoPools(SpellGrowthSettings cfg)
    {
        if (!cfg.AutoPopulateFromDat)
            return;

        lock (_lock)
        {
            if (_autoBuilt)
                return;

            try
            {
                var portalDat = DatManager.PortalDat;
                var spells = portalDat?.SpellTable?.Spells;
                if (spells == null)
                {
                    _autoBuilt = true;
                    return;
                }

                // Armor/jewelry: beneficial self enchants not classified as weapon-only.
                _autoArmorJewelry = BuildArmorJewelryPool(spells);

                // Weapon pools: strict allow-list per WeenieType (no generic "Mastery" — that pulled void/creature magic onto swords).
                _weaponPoolMelee = BuildWeaponPool(spells, cfg, WeenieType.MeleeWeapon);
                _weaponPoolMissile = BuildWeaponPool(spells, cfg, WeenieType.MissileLauncher);
                _weaponPoolCaster = BuildWeaponPool(spells, cfg, WeenieType.Caster);

                _autoArmorJewelry.AddRange(BuildPoolByNameContains(spells, cfg.ArmorOrJewelrySpellNameContains));
                _autoArmorJewelry = _autoArmorJewelry.Distinct().ToList();

                _autoCantripLines = BuildDefaultCantripLines(spells);

                ModManager.Log($"[Overtinked] SpellGrowth auto pools: melee={_weaponPoolMelee.Count}, missile={_weaponPoolMissile.Count}, caster={_weaponPoolCaster.Count}, armor/jewelry={_autoArmorJewelry.Count}, cantripLines={_autoCantripLines.Count}", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Overtinked] SpellGrowth auto pool build failed: {ex.Message}", ModManager.LogLevel.Error);
            }
            finally
            {
                _autoBuilt = true;
            }
        }
    }

    private static List<int> BuildPoolByNameContains(Dictionary<uint, ACE.DatLoader.Entity.SpellBase> spells, List<string>? contains)
    {
        if (contains == null || contains.Count == 0)
            return new List<int>();

        List<int> result = new();
        foreach (var kvp in spells)
        {
            uint id = kvp.Key;
            string? name = kvp.Value?.Name;
            if (string.IsNullOrWhiteSpace(name))
                continue;

            foreach (string frag in contains)
            {
                if (string.IsNullOrWhiteSpace(frag))
                    continue;
                if (name.Contains(frag, StringComparison.OrdinalIgnoreCase))
                {
                    result.Add((int)id);
                    break;
                }
            }
        }

        return result.Distinct().ToList();
    }

    private static List<CantripLine> BuildDefaultCantripLines(Dictionary<uint, ACE.DatLoader.Entity.SpellBase> spells)
    {
        // Build cantrip lines by grouping spell names that start with tier prefixes.
        string[] tiers = { "Minor ", "Moderate ", "Major ", "Epic ", "Legendary " };
        Dictionary<string, List<(int tierIndex, int id)>> lines = new(StringComparer.OrdinalIgnoreCase);

        foreach (var kvp in spells)
        {
            uint id = kvp.Key;
            string? name = kvp.Value?.Name;
            if (string.IsNullOrWhiteSpace(name))
                continue;

            int tierIndex = -1;
            string baseName = name;
            for (int i = 0; i < tiers.Length; i++)
            {
                if (name.StartsWith(tiers[i], StringComparison.OrdinalIgnoreCase))
                {
                    tierIndex = i;
                    baseName = name.Substring(tiers[i].Length).Trim();
                    break;
                }
            }

            if (tierIndex < 0)
                continue;

            // Only include obvious attribute/vital cantrips by name.
            if (!IsSupportedCantripBase(baseName))
                continue;

            if (!lines.TryGetValue(baseName, out var list))
            {
                list = new();
                lines[baseName] = list;
            }
            list.Add((tierIndex, (int)id));
        }

        List<CantripLine> result = new();
        foreach (var kvp in lines)
        {
            var ordered = kvp.Value.OrderBy(x => x.tierIndex).Select(x => x.id).Distinct().ToList();
            if (ordered.Count == 0)
                continue;
            result.Add(new CantripLine { Name = kvp.Key, TierIds = ordered });
        }

        return result;
    }

    private static List<int> BuildArmorJewelryPool(Dictionary<uint, ACE.DatLoader.Entity.SpellBase> spells)
    {
        uint[] playerSpells = Player.PlayerSpellTable;
        HashSet<uint> allowed = new(playerSpells);
        List<int> armorJewelry = new();

        foreach (uint id in allowed)
        {
            if (!spells.TryGetValue(id, out var sb) || sb == null)
                continue;

            if (!IsBeneficialEnchantment(sb))
                continue;

            string name = sb.Name ?? string.Empty;
            if (string.IsNullOrWhiteSpace(name))
                continue;

            if (LooksLikeProtection(name))
            {
                armorJewelry.Add((int)id);
                continue;
            }

            if (IsEligibleForAnyWeaponGrowth(sb))
                continue;

            armorJewelry.Add((int)id);
        }

        return armorJewelry.Distinct().ToList();
    }

    private static List<int> BuildWeaponPool(Dictionary<uint, ACE.DatLoader.Entity.SpellBase> spells, SpellGrowthSettings cfg, WeenieType weaponType)
    {
        uint[] playerSpells = Player.PlayerSpellTable;
        HashSet<uint> allowed = new(playerSpells);
        List<int> list = new();

        foreach (uint id in allowed)
        {
            if (!spells.TryGetValue(id, out var sb) || sb == null)
                continue;

            if (!IsWeaponGrowthEligible(sb, weaponType))
                continue;

            list.Add((int)id);
        }

        foreach (int id in BuildPoolByNameContains(spells, cfg.WeaponSpellNameContains))
        {
            if (!spells.TryGetValue((uint)id, out var sb) || sb == null)
                continue;

            if (!IsWeaponGrowthEligible(sb, weaponType))
                continue;

            list.Add(id);
        }

        return list.Distinct().ToList();
    }

    private static bool IsEligibleForAnyWeaponGrowth(ACE.DatLoader.Entity.SpellBase sb)
    {
        return IsWeaponGrowthEligible(sb, WeenieType.MeleeWeapon)
            || IsWeaponGrowthEligible(sb, WeenieType.MissileLauncher)
            || IsWeaponGrowthEligible(sb, WeenieType.Caster);
    }

    private static bool IsWeaponGrowthEligible(ACE.DatLoader.Entity.SpellBase sb, WeenieType weaponType)
    {
        if (!IsBeneficialEnchantment(sb))
            return false;

        string name = sb.Name ?? string.Empty;
        if (string.IsNullOrWhiteSpace(name))
            return false;

        return weaponType switch
        {
            WeenieType.MeleeWeapon => IsMeleeWeaponGrowthName(name),
            WeenieType.MissileLauncher => IsMissileWeaponGrowthName(name),
            WeenieType.Caster => IsCasterWeaponGrowthName(name),
            _ => false,
        };
    }

    // Shared melee/missile physical enchants (damage, CS/CB-style mods, attack/defense, speed where named).
    private static bool IsUniversalPhysicalWeaponEnchant(string name)
    {
        return NameContains(name, "Blood Drinker")
            || NameContains(name, "Heart Seeker")
            || NameContains(name, "Swift Killer")
            || NameContains(name, "Spirit Drinker")
            || (NameContains(name, "Defender") && !NameContains(name, "Magic Defense"))
            || NameContains(name, "Weapon Speed");
    }

    private static bool IsMeleeWeaponGrowthName(string name)
    {
        if (IsUniversalPhysicalWeaponEnchant(name))
            return true;

        return NameContains(name, "Heavy Weapon Mastery")
            || NameContains(name, "Light Weapon Mastery")
            || NameContains(name, "Finesse Weapon Mastery")
            || NameContains(name, "Dirty Fighting")
            || NameContains(name, "Dual Wield")
            || NameContains(name, "Recklessness")
            || NameContains(name, "Sneak Attack");
    }

    private static bool IsMissileWeaponGrowthName(string name)
    {
        if (IsUniversalPhysicalWeaponEnchant(name))
            return true;

        return NameContains(name, "Missile Weapon Mastery");
    }

    // Caster sticks/wands: same physical enchants that apply to the weapon plus magic skill masteries (not weapon masteries).
    private static bool IsCasterWeaponGrowthName(string name)
    {
        if (IsUniversalPhysicalWeaponEnchant(name))
            return true;

        return IsMagicSkillMasteryEnchant(name);
    }

    private static bool IsMagicSkillMasteryEnchant(string name)
    {
        if (!NameContains(name, "Mastery"))
            return false;

        if (NameContains(name, "Weapon"))
            return false;

        return NameContains(name, "Creature Magic")
            || NameContains(name, "Life Magic")
            || NameContains(name, "War Magic")
            || NameContains(name, "Item Enchantment")
            || NameContains(name, "Void Magic")
            || NameContains(name, "Mana Conversion");
    }

    private static bool NameContains(string name, string fragment)
    {
        return name.Contains(fragment, StringComparison.OrdinalIgnoreCase);
    }

    private static bool IsBeneficialEnchantment(ACE.DatLoader.Entity.SpellBase sb)
    {
        try
        {
            SpellFlags flags = (SpellFlags)sb.Bitfield;

            if (!flags.HasFlag(SpellFlags.Beneficial))
                return false;

            if (!flags.HasFlag(SpellFlags.SelfTargeted))
                return false;

            // Exclude portals and obvious non-enchantments.
            if (sb.MetaSpellType != SpellType.Enchantment && sb.MetaSpellType != SpellType.Boost)
                return false;

            // Prefer non-damage schools.
            if (sb.School == MagicSchool.WarMagic || sb.School == MagicSchool.VoidMagic)
                return false;

            return true;
        }
        catch
        {
            return false;
        }
    }

    private static bool LooksLikeProtection(string name)
    {
        return name.Contains("Protection", StringComparison.OrdinalIgnoreCase)
            || name.Contains("Ward", StringComparison.OrdinalIgnoreCase)
            || name.Contains("Invulnerability", StringComparison.OrdinalIgnoreCase)
            || name.Contains("Impenetrability", StringComparison.OrdinalIgnoreCase)
            || name.Contains("Magic Resistance", StringComparison.OrdinalIgnoreCase);
    }

    private static bool IsSupportedCantripBase(string baseName)
    {
        // Tight initial set; expand later.
        string[] allowed =
        {
            "Strength",
            "Endurance",
            "Coordination",
            "Quickness",
            "Focus",
            "Willpower",
            "Health Gain",
            "Stamina Gain",
            "Mana Gain",
        };

        return allowed.Any(a => baseName.Contains(a, StringComparison.OrdinalIgnoreCase));
    }

    private static int? FindAnyPresent(WorldObject item, List<int> pool)
    {
        foreach (int id in pool)
        {
            if (HasSpellId(item, id))
                return id;
        }
        return null;
    }

    private static int? FindFirstNotPresent(WorldObject item, List<int> pool)
    {
        foreach (int id in pool)
        {
            if (!HasSpellId(item, id))
                return id;
        }
        return null;
    }

    private static int? FindFirstNotPresentNewLine(WorldObject item, List<int> pool, Dictionary<string, int> presentLineToTier)
    {
        foreach (int id in pool)
        {
            if (HasSpellId(item, id))
                continue;

            string? key = GetSpellLineKey(id);
            if (string.IsNullOrWhiteSpace(key))
                continue;

            if (presentLineToTier.ContainsKey(key))
                continue;

            return id;
        }

        // If every remaining spell is in an existing line, we still allow adding a higher tier within a present line.
        // This avoids "no-op" when the pool is only one line (rare, but possible in user configs).
        foreach (int id in pool)
        {
            if (HasSpellId(item, id))
                continue;

            string? key = GetSpellLineKey(id);
            if (string.IsNullOrWhiteSpace(key))
                continue;

            if (!presentLineToTier.TryGetValue(key, out int currentTier))
                continue;

            int tier = GetSpellTierRank(id);
            if (tier > currentTier)
                return id;
        }

        return null;
    }

    private static Dictionary<string, int> BuildPresentSpellLineTierMap(WorldObject item)
    {
        Dictionary<string, int> map = new(StringComparer.OrdinalIgnoreCase);

        try
        {
            var book = item.Biota?.PropertiesSpellBook;
            if (book == null || book.Count == 0)
                return map;

            foreach (int id in book.Keys)
            {
                string? key = GetSpellLineKey(id);
                if (string.IsNullOrWhiteSpace(key))
                    continue;

                int tier = GetSpellTierRank(id);
                if (!map.TryGetValue(key, out int existingTier) || tier > existingTier)
                    map[key] = tier;
            }
        }
        catch
        {
        }

        return map;
    }

    private static string? GetSpellLineKey(int spellId)
    {
        string name = TryGetSpellName(spellId);
        if (string.IsNullOrWhiteSpace(name))
            return null;

        string s = name.Trim();

        // Remove common prefixes for spell tiers.
        string[] prefixes =
        {
            "Lesser ",
            "Minor ",
            "Moderate ",
            "Major ",
            "Greater ",
            "Epic ",
            "Legendary ",
        };

        foreach (string p in prefixes)
        {
            if (s.StartsWith(p, StringComparison.OrdinalIgnoreCase))
            {
                s = s.Substring(p.Length).Trim();
                break;
            }
        }

        // Remove trailing roman numerals or digits (e.g., "Blood Drinker VI", "Strength I").
        s = TrimTrailingTierToken(s);
        s = s.Trim();

        return string.IsNullOrWhiteSpace(s) ? null : s;
    }

    private static int GetSpellTierRank(int spellId)
    {
        string name = TryGetSpellName(spellId);
        if (string.IsNullOrWhiteSpace(name))
            return 0;

        string s = name.Trim();

        // Prefix tiers (cantrips and some buffs)
        if (s.StartsWith("Minor ", StringComparison.OrdinalIgnoreCase)) return 10;
        if (s.StartsWith("Moderate ", StringComparison.OrdinalIgnoreCase)) return 20;
        if (s.StartsWith("Major ", StringComparison.OrdinalIgnoreCase)) return 30;
        if (s.StartsWith("Epic ", StringComparison.OrdinalIgnoreCase)) return 40;
        if (s.StartsWith("Legendary ", StringComparison.OrdinalIgnoreCase)) return 50;

        if (s.StartsWith("Lesser ", StringComparison.OrdinalIgnoreCase)) return 5;
        if (s.StartsWith("Greater ", StringComparison.OrdinalIgnoreCase)) return 25;

        // Trailing roman numerals (I..X) or digits
        int? roman = TryParseTrailingRomanNumeral(s);
        if (roman.HasValue)
            return roman.Value;

        int? digits = TryParseTrailingDigits(s);
        if (digits.HasValue)
            return digits.Value;

        return 1;
    }

    private static string TrimTrailingTierToken(string s)
    {
        if (string.IsNullOrWhiteSpace(s))
            return s;

        string trimmed = s.TrimEnd();
        int lastSpace = trimmed.LastIndexOf(' ');
        if (lastSpace < 0)
            return trimmed;

        string token = trimmed.Substring(lastSpace + 1);
        if (TryParseRoman(token).HasValue)
            return trimmed.Substring(0, lastSpace);

        if (int.TryParse(token, out _))
            return trimmed.Substring(0, lastSpace);

        return trimmed;
    }

    private static int? TryParseTrailingRomanNumeral(string s)
    {
        if (string.IsNullOrWhiteSpace(s))
            return null;

        string trimmed = s.TrimEnd();
        int lastSpace = trimmed.LastIndexOf(' ');
        if (lastSpace < 0)
            return null;

        string token = trimmed.Substring(lastSpace + 1);
        return TryParseRoman(token);
    }

    private static int? TryParseTrailingDigits(string s)
    {
        if (string.IsNullOrWhiteSpace(s))
            return null;

        string trimmed = s.TrimEnd();
        int lastSpace = trimmed.LastIndexOf(' ');
        if (lastSpace < 0)
            return null;

        string token = trimmed.Substring(lastSpace + 1);
        if (int.TryParse(token, out int v))
            return v;

        return null;
    }

    private static int? TryParseRoman(string token)
    {
        if (string.IsNullOrWhiteSpace(token))
            return null;

        string t = token.Trim().ToUpperInvariant();
        return t switch
        {
            "I" => 1,
            "II" => 2,
            "III" => 3,
            "IV" => 4,
            "V" => 5,
            "VI" => 6,
            "VII" => 7,
            "VIII" => 8,
            "IX" => 9,
            "X" => 10,
            _ => null
        };
    }

    // Next tier id only when the item already has a cantrip from this line and a higher tier exists.
    private static bool TryGetCantripNextUpgradeId(WorldObject item, CantripLine line, out int nextId)
    {
        nextId = 0;
        if (line?.TierIds == null || line.TierIds.Count == 0)
            return false;

        for (int i = 0; i < line.TierIds.Count; i++)
        {
            int id = line.TierIds[i];
            if (!HasSpellId(item, id))
                continue;

            if (i + 1 < line.TierIds.Count)
            {
                nextId = line.TierIds[i + 1];
                return true;
            }

            return false;
        }

        return false;
    }

    private static int? FirstMissingFromLine(WorldObject item, CantripLine line)
    {
        if (line?.TierIds == null || line.TierIds.Count == 0)
            return null;

        foreach (int id in line.TierIds)
        {
            if (!HasSpellId(item, id))
                return id;
        }
        return null;
    }

    private static bool HasSpellId(WorldObject item, int spellId)
    {
        try
        {
            return item.Biota?.PropertiesSpellBook?.ContainsKey(spellId) == true;
        }
        catch
        {
            return false;
        }
    }

    private static bool AddSpellId(WorldObject item, int spellId)
    {
        try
        {
            if (item.Biota == null)
                return false;

            item.Biota.PropertiesSpellBook ??= new Dictionary<int, float>();
            var book = item.Biota.PropertiesSpellBook;

            if (!book.ContainsKey(spellId))
                book[spellId] = 1.0f;

            // Mark item as magical if possible
            try
            {
                item.UiEffects |= UiEffects.Magical;
            }
            catch
            {
            }

            return true;
        }
        catch
        {
            return false;
        }
    }

    private static void RemoveSpellId(WorldObject item, int spellId)
    {
        try
        {
            item.Biota?.PropertiesSpellBook?.Remove(spellId);
        }
        catch
        {
        }
    }

    private static void RemoveLowerSpellTiersInLine(WorldObject item, string lineKey, int keepMinTierRank)
    {
        if (item.Biota?.PropertiesSpellBook == null || string.IsNullOrWhiteSpace(lineKey))
            return;

        List<int> toRemove = new();
        foreach (int id in item.Biota.PropertiesSpellBook.Keys)
        {
            string? k = GetSpellLineKey(id);
            if (k == null || !string.Equals(k, lineKey, StringComparison.OrdinalIgnoreCase))
                continue;
            if (GetSpellTierRank(id) < keepMinTierRank)
                toRemove.Add(id);
        }

        foreach (int id in toRemove)
            RemoveSpellId(item, id);
    }

    private static void RemoveCantripTiersBelow(WorldObject item, CantripLine line, int newSpellId)
    {
        if (line?.TierIds == null || item.Biota?.PropertiesSpellBook == null)
            return;

        int idx = line.TierIds.IndexOf(newSpellId);
        if (idx <= 0)
            return;

        for (int i = 0; i < idx; i++)
            RemoveSpellId(item, line.TierIds[i]);
    }

    private static string TryGetSpellName(int spellId)
    {
        try
        {
            var spells = DatManager.PortalDat?.SpellTable?.Spells;
            if (spells != null && spells.TryGetValue((uint)spellId, out var sb) && !string.IsNullOrWhiteSpace(sb?.Name))
                return sb.Name!;
        }
        catch
        {
        }
        return spellId.ToString();
    }
}

