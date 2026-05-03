using System.Globalization;

namespace Overtinked;

// Resolves salvage rules by WCID (including dual-WCID pairs) and applies numeric effects to the target.
public static class SalvageEffectApplier
{
    private const string DefaultDefenseSalvagedLongFormat = "Apply this material to treasure-generated armor to imbue the target with a +{0} bonus to {1} Defense.";
    private const string DefaultDefenseFoolproofLongFormat = "Apply this material to a treasure-generated armor to imbue the target with a +{0} bonus to {1} Defense.";

    private static readonly Dictionary<uint, (string Kind, bool Foolproof)> DefenseSalvageByWcid = new()
    {
        [21066] = ("Melee", false),
        [21088] = ("Missile", false),
        [21089] = ("Magic", false),
        [30101] = ("Melee", true),
        [30105] = ("Missile", true),
        [30106] = ("Magic", true),
    };

    /// <summary>
    /// Optional effect + description for /bank salvage status. Null fields mean LeyLineLedger should use its JSON rule.
    /// Called via reflection from LeyLineLedger (assembly name Overtinked).
    /// </summary>
    public readonly record struct SalvageBankLines(string? Effect, string? Description);

    /// <summary>
    /// Interop helper: returns [effect, description] or null when Overtinked has nothing to add (LeyLineLedger uses static JSON).
    /// </summary>
    public static string?[]? GetSalvageBankLinesForInterop(uint wcid, string? materialDisplayName)
    {
        SalvageBankLines lines = ResolveSalvageBankLines(wcid, materialDisplayName);
        if (string.IsNullOrWhiteSpace(lines.Effect) && string.IsNullOrWhiteSpace(lines.Description))
            return null;
        return new[] { lines.Effect, lines.Description };
    }

    /// <summary>
    /// Single source for bank status strings: defense imbue (bonus + templates), SalvageRules by WCID, then name-based GetMaterialEffect.
    /// </summary>
    public static SalvageBankLines ResolveSalvageBankLines(uint wcid, string? materialDisplayName)
    {
        Settings? s = PatchClass.CurrentSettings;
        if (s == null)
            return default;

        if (DefenseSalvageByWcid.TryGetValue(wcid, out var defense) && s.DefenseImbueBonus > 0)
        {
            string shortLine = string.Format(CultureInfo.InvariantCulture, "Imbues +{0} {1} Defense", s.DefenseImbueBonus, defense.Kind);
            string longLine = FormatDefenseLongDesc(s, defense.Kind, defense.Foolproof);
            return new SalvageBankLines(shortLine, longLine);
        }

        SalvageTinkerRule? rule = GetRule(s, wcid);
        if (rule != null && rule.Enabled)
        {
            int rep = RepresentativeValue(rule);
            string? eff = SummarizeRuleBankEffectLine(rule, rep, isFailure: false);
            if (string.IsNullOrWhiteSpace(eff))
                eff = null;
            string? desc = BuildSalvageRuleBankDescription(rule, rep);
            return new SalvageBankLines(eff, desc);
        }

        string? mat = GetMaterialEffect(materialDisplayName ?? "");
        if (!string.IsNullOrWhiteSpace(mat))
            return new SalvageBankLines(mat, null);

        return default;
    }

    /// <summary>
    /// Long examine text for defense salvage bags; respects OverrideDefenseSalvageLongDescInAppraise and DefenseImbueBonus.
    /// </summary>
    public static bool TryGetDefenseSalvageAppraiseLongDesc(Settings s, uint weenieClassId, out string longDesc)
    {
        longDesc = "";
        if (s.DefenseImbueBonus <= 0 || !s.OverrideDefenseSalvageLongDescInAppraise)
            return false;
        if (!DefenseSalvageByWcid.TryGetValue(weenieClassId, out var entry))
            return false;
        longDesc = FormatDefenseLongDesc(s, entry.Kind, entry.Foolproof);
        return true;
    }

    // Long examine text for numeric SalvageRules bags (same numbers/strings as bank when BankDescriptionFormat is set).
    public static bool TryGetNumericSalvageBagAppraiseLongDesc(Settings s, uint weenieClassId, out string longDesc)
    {
        longDesc = "";
        if (!s.OverrideNumericSalvageBagLongDescInAppraise)
            return false;

        SalvageTinkerRule? rule = GetRule(s, weenieClassId);
        if (rule == null || !rule.Enabled)
            return false;

        int rep = RepresentativeValue(rule);

        if (!string.IsNullOrWhiteSpace(rule.BankDescriptionFormat))
        {
            string? formatted = TryFormatRuleLine(rule, rule.BankDescriptionFormat.Trim(), rep, isFailure: false);
            if (!string.IsNullOrWhiteSpace(formatted))
            {
                longDesc = formatted;
                AppendBaneClauseForAppraiseLongDesc(rule, ref longDesc);
                return true;
            }
        }

        string name = string.IsNullOrWhiteSpace(rule.Name) ? (rule.EffectKind ?? "Salvage") : rule.Name.Trim();
        string effect = GetEffectDescription(rule, rep, isFailure: false);
        longDesc = string.IsNullOrWhiteSpace(effect) ? name : $"{name}: {effect}";
        AppendBaneClauseForAppraiseLongDesc(rule, ref longDesc);
        return true;
    }

    static void AppendBaneClauseForAppraiseLongDesc(SalvageTinkerRule rule, ref string longDesc)
    {
        if (rule.BaneSpellIds == null || rule.BaneSpellIds.Length == 0)
            return;
        int n = rule.BaneSpellIds.Length;
        longDesc += n == 1
            ? " Also applies or upgrades one bane enchantment on valid armor or weapon."
            : $" Also applies or upgrades up to {n} bane enchantments on valid armor or weapon.";
    }

    static string FormatDefenseLongDesc(Settings s, string kind, bool foolproof)
    {
        string fmt = foolproof
            ? (string.IsNullOrWhiteSpace(s.DefenseSalvageLongDescFoolproofFormat) ? DefaultDefenseFoolproofLongFormat : s.DefenseSalvageLongDescFoolproofFormat.Trim())
            : (string.IsNullOrWhiteSpace(s.DefenseSalvageLongDescSalvagedFormat) ? DefaultDefenseSalvagedLongFormat : s.DefenseSalvageLongDescSalvagedFormat.Trim());
        return string.Format(CultureInfo.InvariantCulture, fmt, s.DefenseImbueBonus, kind);
    }

    static string? BuildSalvageRuleBankDescription(SalvageTinkerRule rule, int representativeValue)
    {
        if (!string.IsNullOrWhiteSpace(rule.BankDescriptionFormat))
        {
            string? formatted = TryFormatRuleLine(rule, rule.BankDescriptionFormat.Trim(), representativeValue, isFailure: false);
            if (!string.IsNullOrWhiteSpace(formatted))
                return formatted;
        }

        string name = string.IsNullOrWhiteSpace(rule.Name) ? (rule.EffectKind ?? "Salvage") : rule.Name.Trim();
        if (rule.BaneSpellIds != null && rule.BaneSpellIds.Length > 0)
            return $"{name}: bane spell chain ({rule.BaneSpellIds.Length} tiers)";
        if (rule.FixedValue.HasValue)
            return $"{name}: fixed value {rule.FixedValue.Value} ({rule.EffectKind})";
        if (rule.MinValue != rule.MaxValue)
            return $"{name}: rolls {rule.MinValue}-{rule.MaxValue} ({rule.EffectKind})";
        if (!string.IsNullOrWhiteSpace(rule.EffectKind))
            return $"{name}: {rule.EffectKind}";
        return name;
    }

    static int RepresentativeValue(SalvageTinkerRule rule)
    {
        if (rule.FixedValue.HasValue)
            return rule.FixedValue.Value;
        return (rule.MinValue + rule.MaxValue) / 2;
    }

    static string NormalizeMaterialName(string name)
    {
        return name.Trim()
            .Replace("Salvaged ", "", StringComparison.OrdinalIgnoreCase)
            .ToLowerInvariant();
    }

    static bool TryGetRuleByMaterialName(Settings? settings, string normalizedName, out SalvageTinkerRule? rule)
    {
        rule = null;
        if (settings == null || normalizedName.Length == 0)
            return false;
        if (_ruleByNormalizedName == null)
            BuildLookup(settings);
        return _ruleByNormalizedName != null && _ruleByNormalizedName.TryGetValue(normalizedName, out rule);
    }

    static string? TryFormatRuleLine(SalvageTinkerRule rule, string format, int value, bool isFailure)
    {
        try
        {
            int signed = isFailure ? -value : value;
            return string.Format(CultureInfo.InvariantCulture, format, value, signed, rule.Name ?? "", rule.EffectKind ?? "");
        }
        catch (FormatException ex)
        {
            ModManager.Log($"[Overtinked] Invalid format string for rule '{rule.Name}' ({rule.EffectKind}): {ex.Message}", ModManager.LogLevel.Warn);
            return null;
        }
    }

    static string SummarizeRuleBankEffectLine(SalvageTinkerRule rule, int rep, bool isFailure)
    {
        if (!string.IsNullOrWhiteSpace(rule.BankEffectFormat))
        {
            string? line = TryFormatRuleLine(rule, rule.BankEffectFormat.Trim(), rep, isFailure);
            if (!string.IsNullOrWhiteSpace(line))
                return line;
        }

        if (!string.IsNullOrWhiteSpace(rule.EffectSummaryFormat))
        {
            string? line = TryFormatRuleLine(rule, rule.EffectSummaryFormat.Trim(), rep, isFailure);
            if (!string.IsNullOrWhiteSpace(line))
                return line;
        }

        return GetEffectDescription(rule, rep, isFailure);
    }

    static string? LegacyMaterialHintByNormalizedName(string keyLower)
    {
        return keyLower switch
        {
            "gold" => "+25% Value",
            "linen" => "-25% Burden",
            "moonstone" => "+500 Mana",
            "pine" => "-25% Value",
            _ => null,
        };
    }

    /// <summary>
    /// Maps material display name (case-insensitive) to a short effect hint for /bank when LLL passes the name, not WCID.
    /// Prefer SalvageRules: <see cref="SalvageTinkerRule.Name"/> normalized must match. Falls back to legacy hints for materials without rules (Gold, Linen, etc.).
    /// </summary>
    public static string? GetMaterialEffect(string materialName)
    {
        if (string.IsNullOrWhiteSpace(materialName))
            return null;
        string key = NormalizeMaterialName(materialName);
        if (key.Length == 0)
            return null;

        Settings? s = PatchClass.CurrentSettings;
        if (TryGetRuleByMaterialName(s, key, out SalvageTinkerRule? byName) && byName != null)
        {
            int rep = RepresentativeValue(byName);
            return SummarizeRuleBankEffectLine(byName, rep, isFailure: false);
        }

        return LegacyMaterialHintByNormalizedName(key);
    }

    // WCID -> rule lookup built from Settings.SalvageRules (each rule's Wcids all point to that rule).
    private static Dictionary<uint, SalvageTinkerRule>? _ruleByWcid;

    // Normalized rule.Name -> rule (last enabled rule wins if duplicate names).
    private static Dictionary<string, SalvageTinkerRule>? _ruleByNormalizedName;

    public static void BuildLookup(Settings settings)
    {
        if (settings.SalvageRules == null || settings.SalvageRules.Count == 0)
        {
            _ruleByWcid = null;
            _ruleByNormalizedName = null;
            return;
        }

        var dict = new Dictionary<uint, SalvageTinkerRule>();
        var byName = new Dictionary<string, SalvageTinkerRule>(StringComparer.Ordinal);
        foreach (SalvageTinkerRule rule in settings.SalvageRules)
        {
            if (!rule.Enabled || rule.Wcids == null)
                continue;
            foreach (uint w in rule.Wcids)
                dict[w] = rule;

            if (!string.IsNullOrWhiteSpace(rule.Name))
            {
                string nk = NormalizeMaterialName(rule.Name);
                if (nk.Length > 0)
                    byName[nk] = rule;
            }
        }

        _ruleByWcid = dict;
        _ruleByNormalizedName = byName;
    }

    public static SalvageTinkerRule? GetRule(Settings? settings, uint sourceWcid)
    {
        if (settings == null)
            return null;
        if (_ruleByWcid == null || _ruleByNormalizedName == null)
            BuildLookup(settings);
        return _ruleByWcid != null && _ruleByWcid.TryGetValue(sourceWcid, out var r) ? r : null;
    }

    public static int RollValue(SalvageTinkerRule rule)
    {
        if (rule.FixedValue.HasValue)
            return rule.FixedValue.Value;
        int min = rule.MinValue;
        int max = rule.MaxValue;
        if (min > max)
            (min, max) = (max, min);
        if (min == max)
            return min;
        return Random.Shared.Next(min, max + 1);
    }

    public static string GetEffectDescription(SalvageTinkerRule rule, int value, bool isFailure)
    {
        if (!string.IsNullOrWhiteSpace(rule.EffectSummaryFormat))
        {
            string? custom = TryFormatRuleLine(rule, rule.EffectSummaryFormat.Trim(), value, isFailure);
            if (!string.IsNullOrWhiteSpace(custom))
                return custom;
        }

        int signed = isFailure ? -value : value;
        string kind = rule.EffectKind ?? "";

        if (kind.StartsWith("ArmorModVs"))
        {
            string element = kind.Substring("ArmorModVs".Length);
            return $"Armor vs {element} MAXED";
        }

        switch (kind)
        {
            case "Damage":
                return $"Damage {(signed >= 0 ? "+" : "")}{signed}";
            case "DamageVariance":
                if (signed >= 0)
                {
                    float factor = 1f - (signed / 100f);
                    if (factor <= 0f)
                        factor = 0.01f;
                    return $"Damage variance reduced (×{factor.ToString("0.###", CultureInfo.InvariantCulture)})";
                }
                return "Damage variance increased";
            case "WeaponSpeed":
                return signed >= 0
                    ? $"Weapon speed faster by {signed}"
                    : $"Weapon speed slower by {Math.Abs(signed)}";
            case "ArmorLevel":
                return $"Armor Level {(signed >= 0 ? "+" : "")}{signed}";
            case "DamageMod":
                return $"Damage modifier {(signed >= 0 ? "+" : "")}{signed}%";
            case "WeaponDefense":
                return $"Weapon defense {(signed >= 0 ? "+" : "")}{signed}%";
            case "WeaponOffense":
                return $"Weapon offense {(signed >= 0 ? "+" : "")}{signed}%";
            case "ElementalDamageMod":
                return $"Elemental damage {(signed >= 0 ? "+" : "")}{signed}%";
            default:
                return string.Empty;
        }
    }

    public static bool ApplyEffect(WorldObject target, SalvageTinkerRule rule, int value, bool isFailure)
    {
        int v = isFailure ? -value : value;
        string kind = rule.EffectKind ?? "";

        // Armor mod salvages: max out the specific resistance in one application (set to 2.0)
        if (kind.StartsWith("ArmorModVs"))
        {
            switch (kind)
            {
                case "ArmorModVsAcid": target.ArmorModVsAcid = 2.0f; break;
                case "ArmorModVsSlash": target.ArmorModVsSlash = 2.0f; break;
                case "ArmorModVsBludgeon": target.ArmorModVsBludgeon = 2.0f; break;
                case "ArmorModVsFire": target.ArmorModVsFire = 2.0f; break;
                case "ArmorModVsCold": target.ArmorModVsCold = 2.0f; break;
                case "ArmorModVsElectric": target.ArmorModVsElectric = 2.0f; break;
                case "ArmorModVsPierce": target.ArmorModVsPierce = 2.0f; break;
            }
            return true;
        }

        switch (kind)
        {
            case "Damage":
                target.Damage = (target.Damage ?? 0) + v;
                return true;
            case "DamageVariance":
                // Success: reduce variance (e.g. 20 -> *0.8). Failure: increase (e.g. *1.2).
                float factor = 1f - (v / 100f);
                if (factor <= 0f)
                    factor = 0.01f;
                target.DamageVariance = (target.DamageVariance ?? 1f) * factor;
                return true;
            case "WeaponSpeed":
                // Positive value = faster (lower WeaponTime). Failure: negative = slower.
                int current = (int)(target.WeaponTime ?? 0);
                target.WeaponTime = Math.Max(0, current - v);
                return true;
            case "ArmorLevel":
                target.ArmorLevel = (target.ArmorLevel ?? 0) + v;
                return true;
            case "DamageMod":
                target.DamageMod = (target.DamageMod ?? 1f) + (v / 100f);
                return true;
            case "WeaponDefense":
                target.WeaponDefense = (target.WeaponDefense ?? 0f) + (v / 100f);
                return true;
            case "WeaponOffense":
                target.WeaponOffense = (target.WeaponOffense ?? 0f) + (v / 100f);
                return true;
            case "ElementalDamageMod":
                target.ElementalDamageMod = (target.ElementalDamageMod ?? 1f) + (v / 100f);
                return true;
            default:
                return false;
        }
    }

    // Apply or upgrade a bane spell on the target item based on BaneSpellIds progression.
    // Used for weapon tinkers where spells upgrade incrementally.
    public static void ApplyBaneSpell(WorldObject target, SalvageTinkerRule rule, Player? player, bool quietPlayerBaneMessage = false)
    {
        if (rule.BaneSpellIds == null || rule.BaneSpellIds.Length == 0)
            return;

        try
        {
            target.Biota!.PropertiesSpellBook ??= new Dictionary<int, float>();
            var book = target.Biota.PropertiesSpellBook;

            int currentTier = -1;
            for (int i = 0; i < rule.BaneSpellIds.Length; i++)
            {
                if (book.ContainsKey(rule.BaneSpellIds[i]))
                {
                    currentTier = i;
                    break;
                }
            }

            if (currentTier >= 0)
                book.Remove(rule.BaneSpellIds[currentTier]);

            int nextTier = Math.Min(currentTier + 1, rule.BaneSpellIds.Length - 1);
            int nextSpellId = rule.BaneSpellIds[nextTier];
            book[nextSpellId] = 1.0f;

            target.UiEffects |= UiEffects.Magical;

            if (!quietPlayerBaneMessage && player != null && PatchClass.CurrentSettings?.ShowPlayerSalvageMessage == true)
            {
                string tierName = nextTier == 0 ? "added" : "upgraded";
                player.SendMessage($"[Overtinked] Bane spell {tierName}.", ChatMessageType.Craft);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Overtinked] ApplyBaneSpell failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    // Apply ALL bane spells from the rule at once (for armor salvages: one bag = max resistance + all bane spells).
    // Replaces any existing entries of the same spell IDs to avoid duplicates.
    public static void ApplyFullBaneSpells(WorldObject target, SalvageTinkerRule rule, Player? player, bool quietPlayerBaneMessage = false)
    {
        if (rule.BaneSpellIds == null || rule.BaneSpellIds.Length == 0)
            return;

        try
        {
            target.Biota!.PropertiesSpellBook ??= new Dictionary<int, float>();
            var book = target.Biota.PropertiesSpellBook;

            foreach (int spellId in rule.BaneSpellIds)
            {
                book.Remove(spellId);
                book[spellId] = 1.0f;
            }

            target.UiEffects |= UiEffects.Magical;

            if (!quietPlayerBaneMessage && player != null && PatchClass.CurrentSettings?.ShowPlayerSalvageMessage == true)
            {
                player.SendMessage($"[Overtinked] Bane spells applied: {rule.BaneSpellIds.Length} enchantments.", ChatMessageType.Craft);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Overtinked] ApplyFullBaneSpells failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    // Ensure the item has a mana pool if it doesn't already. Only creates pool; never modifies existing.
    public static void EnsureManaPool(WorldObject target)
    {
        if (target.ItemMaxMana.HasValue)
            return;

        target.ItemMaxMana = 1500;
        target.ItemCurMana = 1500;
        target.ManaRate = 0;
    }
}
