namespace EasyServerSettings;

public static class PresetApplier
{
    public sealed record ApplyResult(int BoolOk, int BoolRejected, int LongOk, int LongRejected, int DoubleOk, int DoubleRejected);

    public static ApplyResult Apply(Settings settings)
    {
        int boolOk = 0, boolRej = 0, longOk = 0, longRej = 0, doubleOk = 0, doubleRej = 0;

        ApplyDirectSettings(settings, ref boolOk, ref boolRej, ref doubleOk, ref doubleRej, ref longOk, ref longRej);

        if (settings.ResyncVariablesAfterApply)
        {
            try
            {
                PropertyManager.ResyncVariables();
            }
            catch (Exception ex)
            {
                ModManager.Log($"EasyServerSettings: ResyncVariables failed: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        return new ApplyResult(boolOk, boolRej, longOk, longRej, doubleOk, doubleRej);
    }

    private static void ApplyDirectSettings(Settings settings, ref int boolOk, ref int boolRej, ref int doubleOk, ref int doubleRej, ref int longOk, ref int longRej)
    {
        ApplyShardDictionaries(settings, ref boolOk, ref boolRej, ref longOk, ref longRej, ref doubleOk, ref doubleRej);

        ModifyDoubleWithLog("xp_modifier", settings.XpModifier, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("rare_drop_rate_percent", settings.RareDropRate, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("trophy_drop_rate", settings.TrophyDropRate, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("aetheria_drop_rate", settings.AetheriaDropRate, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("cantrip_drop_rate", settings.CantripDropRate, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("minor_cantrip_drop_rate", settings.MinorCantripDropRate, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("major_cantrip_drop_rate", settings.MajorCantripDropRate, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("epic_cantrip_drop_rate", settings.EpicCantripDropRate, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("legendary_cantrip_drop_rate", settings.LegendaryCantripDropRate, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("vitae_penalty", settings.VitaePenalty, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("vitae_penalty_max", settings.VitaePenaltyMax, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("melee_max_angle", settings.MeleeMaxAngle, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("spellcast_max_angle", settings.SpellcastMaxAngle, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("fast_missile_modifier", settings.FastMissileModifier, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("encounter_delay", settings.EncounterDelay, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("encounter_regen_interval", settings.EncounterRegenInterval, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("mob_awareness_range", settings.MobAwarenessRange, ref doubleOk, ref doubleRej, settings.VerboseLogging);
        ModifyDoubleWithLog("void_pvp_modifier", settings.VoidPvpModifier, ref doubleOk, ref doubleRej, settings.VerboseLogging);

        ModifyLongWithLog("pk_timer", settings.PkTimer, ref longOk, ref longRej, settings.VerboseLogging);
        ModifyLongWithLog("max_chars_per_account", settings.MaxCharsPerAccount, ref longOk, ref longRej, settings.VerboseLogging);
        ModifyLongWithLog("char_delete_time", settings.CharDeleteTime, ref longOk, ref longRej, settings.VerboseLogging);
        ModifyLongWithLog("fellowship_even_share_level", settings.FellowshipEvenShareLevel, ref longOk, ref longRej, settings.VerboseLogging);
        ModifyLongWithLog("player_save_interval", settings.PlayerSaveInterval, ref longOk, ref longRej, settings.VerboseLogging);

        ModifyBoolWithLog("pk_server", settings.PkServer, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("pkl_server", settings.PklServer, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("fastbuff", settings.Fastbuff, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("universal_masteries", settings.UniversalMasteries, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("show_dot_messages", settings.ShowDotMessages, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("show_aura_buff", settings.ShowAuraBuff, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("show_ammo_buff", settings.ShowAmmoBuff, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("fellow_quest_bonus", settings.FellowshipQuestBonus, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("fellow_kt_landblock", settings.FellowshipKillTaskLandblock, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("house_30day_cooldown", settings.House30DayCooldown, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("house_rent_enabled", settings.HouseRentEnabled, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("house_purchase_requirements", settings.HousePurchaseRequirements, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("world_closed", settings.WorldClosed, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("chess_enabled", settings.ChessEnabled, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("quest_info_enabled", settings.QuestInfoEnabled, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("rares_real_time", settings.RaresRealTime, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("account_login_boots_in_use", settings.AccountLoginBootsInUse, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("allow_negative_dispel_resist", settings.AllowNegativeDispelResist, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("allow_negative_rating_curve", settings.AllowNegativeRatingCurve, ref boolOk, ref boolRej, settings.VerboseLogging);
        ModifyBoolWithLog("allow_pkl_bump", settings.AllowPklBump, ref boolOk, ref boolRej, settings.VerboseLogging);
    }

    private static void ApplyShardDictionaries(Settings settings, ref int boolOk, ref int boolRej, ref int longOk, ref int longRej, ref int doubleOk, ref int doubleRej)
    {
        ApplyBoolDict(settings.ShardBooleansChat, settings.VerboseLogging, ref boolOk, ref boolRej);
        ApplyBoolDict(settings.ShardBooleansGameplay, settings.VerboseLogging, ref boolOk, ref boolRej);
        ApplyBoolDict(settings.ShardBooleansWorldLoot, settings.VerboseLogging, ref boolOk, ref boolRej);
        ApplyBoolDict(settings.ShardBooleansClientUi, settings.VerboseLogging, ref boolOk, ref boolRej);

        ApplyLongDict(settings.ShardLongsExtra, settings.VerboseLogging, ref longOk, ref longRej);
        ApplyDoubleDict(settings.ShardDoublesExtra, settings.VerboseLogging, ref doubleOk, ref doubleRej);
    }

    private static void ApplyBoolDict(Dictionary<string, bool>? dict, bool verbose, ref int ok, ref int rejected)
    {
        if (dict == null)
            return;

        foreach (KeyValuePair<string, bool> kv in dict)
            ModifyBoolWithLog(kv.Key, kv.Value, ref ok, ref rejected, verbose);
    }

    private static void ApplyLongDict(Dictionary<string, long>? dict, bool verbose, ref int ok, ref int rejected)
    {
        if (dict == null)
            return;

        foreach (KeyValuePair<string, long> kv in dict)
            ModifyLongWithLog(kv.Key, kv.Value, ref ok, ref rejected, verbose);
    }

    private static void ApplyDoubleDict(Dictionary<string, double>? dict, bool verbose, ref int ok, ref int rejected)
    {
        if (dict == null)
            return;

        foreach (KeyValuePair<string, double> kv in dict)
            ModifyDoubleWithLog(kv.Key, kv.Value, ref ok, ref rejected, verbose);
    }

    private static void ModifyDoubleWithLog(string key, double value, ref int ok, ref int rejected, bool verbose)
    {
        if (PropertyManager.ModifyDouble(key, value))
            ok++;
        else
        {
            rejected++;
            if (verbose)
                ModManager.Log($"EasyServerSettings: ModifyDouble rejected unknown key '{key}'.", ModManager.LogLevel.Warn);
        }
    }

    private static void ModifyLongWithLog(string key, long value, ref int ok, ref int rejected, bool verbose)
    {
        if (PropertyManager.ModifyLong(key, value))
            ok++;
        else
        {
            rejected++;
            if (verbose)
                ModManager.Log($"EasyServerSettings: ModifyLong rejected unknown key '{key}'.", ModManager.LogLevel.Warn);
        }
    }

    private static void ModifyBoolWithLog(string key, bool value, ref int ok, ref int rejected, bool verbose)
    {
        if (PropertyManager.ModifyBool(key, value))
            ok++;
        else
        {
            rejected++;
            if (verbose)
                ModManager.Log($"EasyServerSettings: ModifyBool rejected unknown key '{key}'.", ModManager.LogLevel.Warn);
        }
    }
}