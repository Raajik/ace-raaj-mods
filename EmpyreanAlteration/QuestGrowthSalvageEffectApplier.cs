namespace EmpyreanAlteration;

// Resolves quest-growth salvage rules by WCID and applies numeric effects to the target.
public static class QuestGrowthSalvageEffectApplier
{
    private static Dictionary<uint, QuestGrowthSalvageTinkerRule>? _ruleByWcid;

    public static void BuildLookup(IReadOnlyList<QuestGrowthSalvageTinkerRule>? rules)
    {
        if (rules == null || rules.Count == 0)
        {
            _ruleByWcid = null;
            return;
        }

        Dictionary<uint, QuestGrowthSalvageTinkerRule> dict = new();
        foreach (QuestGrowthSalvageTinkerRule rule in rules)
        {
            if (!rule.Enabled || rule.Wcids == null)
                continue;
            foreach (uint w in rule.Wcids)
                dict[w] = rule;
        }

        _ruleByWcid = dict;
    }

    public static QuestGrowthSalvageTinkerRule? GetRule(uint sourceWcid)
    {
        if (_ruleByWcid == null)
            return null;
        return _ruleByWcid.TryGetValue(sourceWcid, out QuestGrowthSalvageTinkerRule? r) ? r : null;
    }

    public static int RollValue(QuestGrowthSalvageTinkerRule rule)
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

    public static string GetEffectDescription(QuestGrowthSalvageTinkerRule rule, int value, bool isFailure)
    {
        int signed = isFailure ? -value : value;
        string kind = rule.EffectKind ?? "";
        switch (kind)
        {
            case "Damage":
                return $"Damage {(signed >= 0 ? "+" : "")}{signed}";
            case "DamageVariance":
                return signed >= 0 ? "Damage variance reduced" : "Damage variance increased";
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
            case "ArmorModVsAcid":
                return $"Armor vs Acid {(signed >= 0 ? "+" : "")}{signed}%";
            case "ArmorModVsSlash":
                return $"Armor vs Slash {(signed >= 0 ? "+" : "")}{signed}%";
            case "ArmorModVsBludgeon":
                return $"Armor vs Bludgeon {(signed >= 0 ? "+" : "")}{signed}%";
            case "ArmorModVsFire":
                return $"Armor vs Fire {(signed >= 0 ? "+" : "")}{signed}%";
            case "ArmorModVsCold":
                return $"Armor vs Cold {(signed >= 0 ? "+" : "")}{signed}%";
            case "ArmorModVsElectric":
                return $"Armor vs Electric {(signed >= 0 ? "+" : "")}{signed}%";
            case "ArmorModVsPierce":
                return $"Armor vs Pierce {(signed >= 0 ? "+" : "")}{signed}%";
            default:
                return string.Empty;
        }
    }

    public static bool ApplyEffect(WorldObject target, QuestGrowthSalvageTinkerRule rule, int value, bool isFailure)
    {
        int v = isFailure ? -value : value;
        string kind = rule.EffectKind ?? "";
        switch (kind)
        {
            case "Damage":
                target.Damage = (target.Damage ?? 0) + v;
                return true;
            case "DamageVariance":
                float factor = 1f - (v / 100f);
                if (factor <= 0f)
                    factor = 0.01f;
                target.DamageVariance = (target.DamageVariance ?? 1f) * factor;
                return true;
            case "WeaponSpeed":
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
            case "ArmorModVsAcid":
                target.ArmorModVsAcid = (target.ArmorModVsAcid ?? 1f) + (v / 100f);
                return true;
            case "ArmorModVsSlash":
                target.ArmorModVsSlash = (target.ArmorModVsSlash ?? 1f) + (v / 100f);
                return true;
            case "ArmorModVsBludgeon":
                target.ArmorModVsBludgeon = (target.ArmorModVsBludgeon ?? 1f) + (v / 100f);
                return true;
            case "ArmorModVsFire":
                target.ArmorModVsFire = (target.ArmorModVsFire ?? 1f) + (v / 100f);
                return true;
            case "ArmorModVsCold":
                target.ArmorModVsCold = (target.ArmorModVsCold ?? 1f) + (v / 100f);
                return true;
            case "ArmorModVsElectric":
                target.ArmorModVsElectric = (target.ArmorModVsElectric ?? 1f) + (v / 100f);
                return true;
            case "ArmorModVsPierce":
                target.ArmorModVsPierce = (target.ArmorModVsPierce ?? 1f) + (v / 100f);
                return true;
            default:
                return false;
        }
    }
}
