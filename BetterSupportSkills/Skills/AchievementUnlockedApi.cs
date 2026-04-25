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
    static System.Reflection.MethodInfo? _unlockAchievementMethod;
    static System.Reflection.MethodInfo? _hasAccountAchievementMethod;
    static System.Reflection.MethodInfo? _unlockAccountAchievementMethod;
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
                ModManager.Log("[BSS] AchievementUnlocked assembly not found. Class unlocks will use fallback checks.", ModManager.LogLevel.Info);
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
            _unlockAchievementMethod = _managerType.GetMethod("UnlockAchievement", new[] { typeof(Player), typeof(string), typeof(bool) });
            _hasAccountAchievementMethod = _managerType.GetMethod("HasAccountAchievement", new[] { typeof(uint), typeof(string) });
            _unlockAccountAchievementMethod = _managerType.GetMethod("UnlockAccountAchievement", new[] { typeof(uint), typeof(string) });

            ModManager.Log("[BSS] AchievementUnlocked API bridge initialized.", ModManager.LogLevel.Info);
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

    static void UnlockAchievement(Player player, string id)
    {
        if (!_initialized) Initialize();
        if (_unlockAchievementMethod == null) return;

        try
        {
            _unlockAchievementMethod.Invoke(null, new object[] { player, id, false });
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS] Failed to unlock achievement {id}: {ex.Message}", ModManager.LogLevel.Warn);
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

    /// <summary>
    /// Checks if a player has unlocked a specific class.
    /// Priority: account-wide → character-specific → auto-grant via skill check.
    /// </summary>
    public static bool HasClassUnlocked(Player player, string className)
    {
        string achId = $"Class{className}";

        // 1. Check account-wide first (alt-friendly)
        if (HasAccountAchievement(player.Account.AccountId, achId))
            return true;

        // 2. Check character-specific
        if (HasAchievement(player, achId))
            return true;

        // 3. Auto-check requirements and grant (fallback for when AchievementUnlocked is not tracking this)
        if (CheckMeetsRequirements(player, className))
        {
            UnlockAchievement(player, achId);
            return true;
        }

        return false;
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
            "Druid" => IsSpecialized(player, Skill.Summoning) && IsSpecialized(player, Skill.LifeMagic) && GetBaseSkill(player, Skill.Summoning) >= 100 && GetBaseSkill(player, Skill.LifeMagic) >= 100,
            "Elementalist" => IsSpecialized(player, Skill.Summoning) && IsSpecialized(player, Skill.WarMagic) && GetBaseSkill(player, Skill.Summoning) >= 100 && GetBaseSkill(player, Skill.WarMagic) >= 100,
            "Necromancer" => IsSpecialized(player, Skill.Summoning) && IsSpecialized(player, Skill.VoidMagic) && GetBaseSkill(player, Skill.Summoning) >= 100 && GetBaseSkill(player, Skill.VoidMagic) >= 100,
            "Enchanter" => IsSpecialized(player, Skill.Summoning) && IsSpecialized(player, Skill.CreatureEnchantment) && GetBaseSkill(player, Skill.Summoning) >= 100 && GetBaseSkill(player, Skill.CreatureEnchantment) >= 100,
            "Artificer" => IsSpecialized(player, Skill.Summoning) && IsSpecialized(player, Skill.ItemEnchantment) && GetBaseSkill(player, Skill.Summoning) >= 100 && GetBaseSkill(player, Skill.ItemEnchantment) >= 100,
            "Rogue" => IsSpecialized(player, Skill.DirtyFighting) && IsSpecialized(player, Skill.DualWield) && IsSpecialized(player, Skill.FinesseWeapons) && GetBaseSkill(player, Skill.DirtyFighting) >= 100 && GetBaseSkill(player, Skill.DualWield) >= 100 && GetBaseSkill(player, Skill.FinesseWeapons) >= 100,
            "Berserker" => (IsSpecialized(player, Skill.HeavyWeapons) || IsSpecialized(player, Skill.TwoHandedCombat)) && IsSpecialized(player, Skill.Recklessness) && (GetBaseSkill(player, Skill.HeavyWeapons) >= 100 || GetBaseSkill(player, Skill.TwoHandedCombat) >= 100) && GetBaseSkill(player, Skill.Recklessness) >= 100 && !IsTrainedOrSpec(player, Skill.MeleeDefense),
            "Crusader" => (IsSpecialized(player, Skill.LightWeapons) || IsSpecialized(player, Skill.HeavyWeapons)) && IsSpecialized(player, Skill.Shield) && IsSpecialized(player, Skill.MeleeDefense) && (GetBaseSkill(player, Skill.LightWeapons) >= 100 || GetBaseSkill(player, Skill.HeavyWeapons) >= 100) && GetBaseSkill(player, Skill.Shield) >= 100 && GetBaseSkill(player, Skill.MeleeDefense) >= 100,
            "Windwalker" => IsSpecialized(player, Skill.LightWeapons) && IsSpecialized(player, Skill.WarMagic) && IsSpecialized(player, Skill.ManaConversion) && GetBaseSkill(player, Skill.LightWeapons) >= 100 && GetBaseSkill(player, Skill.WarMagic) >= 100 && GetBaseSkill(player, Skill.ManaConversion) >= 100,
            "Battlemage" => IsSpecialized(player, Skill.TwoHandedCombat) && IsSpecialized(player, Skill.WarMagic) && IsSpecialized(player, Skill.ManaConversion) && GetBaseSkill(player, Skill.TwoHandedCombat) >= 100 && GetBaseSkill(player, Skill.WarMagic) >= 100 && GetBaseSkill(player, Skill.ManaConversion) >= 100,
            "DeathKnight" => (IsSpecialized(player, Skill.HeavyWeapons) || IsSpecialized(player, Skill.TwoHandedCombat)) && IsSpecialized(player, Skill.VoidMagic) && IsSpecialized(player, Skill.ArcaneLore) && (GetBaseSkill(player, Skill.HeavyWeapons) >= 100 || GetBaseSkill(player, Skill.TwoHandedCombat) >= 100) && GetBaseSkill(player, Skill.VoidMagic) >= 100 && GetBaseSkill(player, Skill.ArcaneLore) >= 100,
            "Bloodmage" => IsSpecialized(player, Skill.LifeMagic) && IsSpecialized(player, Skill.ManaConversion) && IsSpecialized(player, Skill.ArcaneLore) && GetBaseSkill(player, Skill.LifeMagic) >= 100 && GetBaseSkill(player, Skill.ManaConversion) >= 100 && GetBaseSkill(player, Skill.ArcaneLore) >= 100,
            _ => false
        };
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
