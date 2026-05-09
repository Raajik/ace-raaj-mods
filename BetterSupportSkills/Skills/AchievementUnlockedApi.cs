using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

/// <summary>
/// Reflection-based bridge to AchievementUnlocked mod.
/// Provides account-wide and character-specific achievement checks.
/// </summary>
internal static class AchievementUnlockedApi
{
    static Type? _managerType;
    static System.Reflection.MethodInfo? _hasAchievementMethod;
    static System.Reflection.MethodInfo? _hasAccountAchievementMethod;
    static bool _initialized;

    public static void Initialize()
    {
        if (_initialized) return;

        try
        {
            var asm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.GetName().Name == "AchievementUnlocked");

            if (asm == null)
            {
                ModManager.Log("[BSS] AchievementUnlocked assembly not loaded. Class gating uses skill checks only.", ModManager.LogLevel.Info);
                _initialized = true;
                return;
            }

            _managerType = asm.GetType("AchievementUnlocked.AchievementManager");
            if (_managerType == null)
            {
                ModManager.Log("[BSS] AchievementManager type not found in AchievementUnlocked.", ModManager.LogLevel.Warn);
                _initialized = true;
                return;
            }

            _hasAchievementMethod = _managerType.GetMethod("HasAchievement", new[] { typeof(Player), typeof(string) });
            _hasAccountAchievementMethod = _managerType.GetMethod("HasAccountAchievement", new[] { typeof(uint), typeof(string) });

            ModManager.Log("[BSS] AchievementUnlocked API bridge initialized (read-only for account-wide display if used).", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] Failed to initialize AchievementUnlocked API: {ex.Message}", ModManager.LogLevel.Warn);
        }

        _initialized = true;
    }

    public static bool HasAchievement(Player player, string id)
    {
        if (!_initialized) Initialize();
        if (_hasAchievementMethod == null) return false;

        try
        {
            var result = _hasAchievementMethod.Invoke(null, new object[] { player, id });
            return result is bool b && b;
        }
        catch
        {
            return false;
        }
    }

    static bool HasAccountAchievement(uint accountId, string id)
    {
        if (!_initialized) Initialize();
        if (_hasAccountAchievementMethod == null) return false;

        try
        {
            var result = _hasAccountAchievementMethod.Invoke(null, new object[] { accountId, id });
            return result is bool b && b;
        }
        catch
        {
            return false;
        }
    }

    // Class paths: skill requirements only. AchievementUnlocked mod optional for other server hooks.
    public static bool HasClassUnlocked(Player player, string className)
    {
        return CheckMeetsRequirements(player, className);
    }

    /// <summary>
    /// Checks if a class is unlocked account-wide (for display purposes).
    /// </summary>
    public static bool IsClassUnlockedAccountWide(Player player, string className)
    {
        return HasAccountAchievement(player.Account.AccountId, $"Class{className}");
    }

    public static bool CheckMeetsRequirements(Player player, string className)
    {
        return className switch
        {
            "Druid" => IsSpecialized(player, Skill.Summoning) && IsSpecialized(player, Skill.LifeMagic),
            "Elementalist" => IsSpecialized(player, Skill.Summoning) && IsSpecialized(player, Skill.WarMagic),
            "Necromancer" => IsSpecialized(player, Skill.Summoning) && IsSpecialized(player, Skill.VoidMagic),
            "Enchanter" => IsSpecialized(player, Skill.Summoning) && IsSpecialized(player, Skill.CreatureEnchantment),
            "Artificer" => IsSpecialized(player, Skill.Summoning) && IsSpecialized(player, Skill.ItemEnchantment),
            "Rogue" => IsSpecialized(player, Skill.DirtyFighting) && IsSpecialized(player, Skill.DualWield) && IsSpecialized(player, Skill.FinesseWeapons),
            "Berserker" => (IsSpecialized(player, Skill.HeavyWeapons) || IsSpecialized(player, Skill.TwoHandedCombat)) && IsSpecialized(player, Skill.Recklessness) && !IsTrainedOrSpec(player, Skill.MeleeDefense),
            "Crusader" => (IsSpecialized(player, Skill.LightWeapons) || IsSpecialized(player, Skill.HeavyWeapons)) && IsSpecialized(player, Skill.Shield) && IsSpecialized(player, Skill.MeleeDefense),
            "Windwalker" => IsSpecialized(player, Skill.LightWeapons) && IsSpecialized(player, Skill.WarMagic) && IsSpecialized(player, Skill.ManaConversion),
            "Battlemage" => IsSpecialized(player, Skill.TwoHandedCombat) && IsSpecialized(player, Skill.WarMagic) && IsSpecialized(player, Skill.ManaConversion),
            "DeathKnight" => (IsSpecialized(player, Skill.HeavyWeapons) || IsSpecialized(player, Skill.TwoHandedCombat)) && IsSpecialized(player, Skill.VoidMagic) && IsSpecialized(player, Skill.ArcaneLore),
            "Bloodmage" => IsSpecialized(player, Skill.LifeMagic) && IsSpecialized(player, Skill.ManaConversion) && IsSpecialized(player, Skill.ArcaneLore),
            "Healer" => IsSpecialized(player, Skill.Healing) && IsSpecialized(player, Skill.LifeMagic),
            "Adventurer" => MeetsAdventurerSkillGate(player),
            _ => false
        };
    }

    static bool MeetsAdventurerSkillGate(Player player)
    {
        Skill[] magicSkills =
        {
            Skill.CreatureEnchantment, Skill.ItemEnchantment, Skill.LifeMagic,
            Skill.WarMagic, Skill.VoidMagic
        };

        foreach (Skill skill in magicSkills)
        {
            var cs = player.GetCreatureSkill(skill);
            if (cs != null && cs.AdvancementClass >= SkillAdvancementClass.Trained)
                return false;
        }

        return true;
    }

    static bool IsSpecialized(Player player, Skill skill)
    {
        var cs = player.GetCreatureSkill(skill);
        return cs != null && cs.AdvancementClass == SkillAdvancementClass.Specialized;
    }

    internal static bool IsTrainedOrSpec(Player player, Skill skill)
    {
        var cs = player.GetCreatureSkill(skill);
        return cs != null && cs.AdvancementClass >= SkillAdvancementClass.Trained;
    }

    static int GetBaseSkill(Player player, Skill skill)
    {
        var cs = player.GetCreatureSkill(skill);
        if (cs == null) return 0;
        return (int)(cs.Ranks + cs.InitLevel);
    }
}
