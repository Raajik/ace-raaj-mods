namespace Xenology;

public partial class PatchClass
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die), new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PreDieXenology(DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager, Creature __instance)
    {
        var settings = CurrentSettings;
        if (settings?.EnableXenology != true || __instance == null)
            return;

        var killer = ResolveKillerPlayer(lastDamager);
        if (killer == null)
            return;

        var wcid = __instance.WeenieClassId;
        if (wcid == 0)
            return;

        var guid = killer.Guid.Full;
        var data = XenologyRuntime.GetOrLoadPlayer(guid);

        var speciesMap = XenologyRuntime.GlobalSpeciesKills.ToDictionary(kv => kv.Key, kv => kv.Value);
        var bottom = XenologyRanks.BuildBottomSet(speciesMap, settings);
        var popularity = bottom.Contains(wcid) ? settings.BottomTenPopularityMultiplier : 1.0;

        var hunt = XenologyRuntime.GetHuntMultiplierForWcid(wcid);

        var streakMult = 1.0;
        if (settings.StreakMultiplierPerStack > 0
            && data.LastKillUtc.HasValue
            && (DateTime.UtcNow - data.LastKillUtc.Value).TotalSeconds <= settings.StreakTimeoutSeconds)
        {
            var bonus = data.StreakCount * settings.StreakMultiplierPerStack;
            bonus = Math.Min(bonus, settings.StreakMaxMultiplierBonus);
            streakMult = 1.0 + bonus;
        }

        var totalMult = popularity * hunt * streakMult;
        if (totalMult < 0 || double.IsNaN(totalMult) || double.IsInfinity(totalMult))
            totalMult = 1.0;

        killer.SetProperty((PropertyFloat)XenologyPropertyIds.PendingKillXpMultiplier, (float)totalMult);

        var dmgPct = ComputeDamageBonusPercent(data, settings);
        var trophyHint = Math.Min(settings.TrophyChanceCap, dmgPct * settings.TrophyChancePerDamagePercent);
        killer.SetProperty((PropertyFloat)XenologyPropertyIds.PendingTrophyChanceHint, (float)trophyHint);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die), new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PostDieXenology(DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager, Creature __instance)
    {
        var settings = CurrentSettings;
        if (settings?.EnableXenology != true || __instance == null)
            return;

        var killer = ResolveKillerPlayer(lastDamager);
        if (killer == null)
            return;

        var wcid = __instance.WeenieClassId;
        if (wcid == 0)
            return;

        var guid = killer.Guid.Full;
        var data = XenologyRuntime.GetOrLoadPlayer(guid);

        XenologyRuntime.GlobalSpeciesKills.AddOrUpdate(wcid, 1, (_, v) => v + 1);
        XenologyRuntime.MarkGlobalDirty();

        if (!data.SpeciesKills.TryGetValue(wcid, out var sk))
            sk = 0;
        data.SpeciesKills[wcid] = sk + 1;
        data.TotalLifetimeKills++;

        var speciesMap = XenologyRuntime.GlobalSpeciesKills.ToDictionary(kv => kv.Key, kv => kv.Value);
        var bottom = XenologyRanks.BuildBottomSet(speciesMap, settings);
        var popularity = bottom.Contains(wcid) ? settings.BottomTenPopularityMultiplier : 1.0;
        var hunt = XenologyRuntime.GetHuntMultiplierForWcid(wcid);

        var streakMult = 1.0;
        if (settings.StreakMultiplierPerStack > 0
            && data.LastKillUtc.HasValue
            && (DateTime.UtcNow - data.LastKillUtc.Value).TotalSeconds <= settings.StreakTimeoutSeconds)
        {
            var bonus = data.StreakCount * settings.StreakMultiplierPerStack;
            bonus = Math.Min(bonus, settings.StreakMaxMultiplierBonus);
            streakMult = 1.0 + bonus;
        }

        var xxp = settings.BaseXenologyXpPerKill * popularity * hunt * streakMult;
        data.TotalXenologyXp += xxp;

        var timedOut = !data.LastKillUtc.HasValue
            || (DateTime.UtcNow - data.LastKillUtc.Value).TotalSeconds > settings.StreakTimeoutSeconds;
        if (timedOut)
            data.StreakCount = 1;
        else
            data.StreakCount++;

        data.LastKillUtc = DateTime.UtcNow;
        data.LastKillWcid = wcid;

        AnnounceMilestones(killer, data, settings);

        if (XenologyRuntime.ActiveHunt?.TargetSpecies.Contains(wcid) == true)
        {
            lock (XenologyRuntime.HuntLock)
            {
                if (XenologyRuntime.ActiveHunt != null)
                {
                    XenologyRuntime.ActiveHunt.HuntPointsByPlayer.TryGetValue(guid, out var pts);
                    XenologyRuntime.ActiveHunt.HuntPointsByPlayer[guid] = pts + xxp;
                    XenologyPersistence.SaveActiveHunt(XenologyRuntime.ActiveHunt);
                }
            }
        }

        XenologyRuntime.PlayerData[guid] = data;
        XenologyRuntime.FlushPlayer(guid, data);
        XenologyRuntime.FlushGlobalIfDue(settings);

        killer.RemoveProperty((PropertyFloat)XenologyPropertyIds.PendingKillXpMultiplier);
        killer.RemoveProperty((PropertyFloat)XenologyPropertyIds.PendingTrophyChanceHint);
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP), new Type[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    [HarmonyPriority(430)]
    public static void PreGrantXpKill(ref long amount, XpType xpType, ShareType shareType, Player __instance)
    {
        var settings = CurrentSettings;
        if (settings?.EnableXenology != true || xpType != XpType.Kill)
            return;

        var mult = __instance.GetProperty((PropertyFloat)XenologyPropertyIds.PendingKillXpMultiplier);
        if (!mult.HasValue || mult.Value <= 0)
            return;

        var m = mult.Value;
        if (m > 0 && !double.IsNaN(m) && !double.IsInfinity(m))
            amount = (long)(amount * m);
    }

    static Player? ResolveKillerPlayer(DamageHistoryInfo? lastDamager)
    {
        if (lastDamager == null || !lastDamager.IsPlayer)
            return null;
        return lastDamager.TryGetPetOwnerOrAttacker() as Player;
    }

    static double ComputeDamageBonusPercent(PlayerXenologyData data, Settings settings)
    {
        var weighted = data.TotalLifetimeKills;
        var pct = weighted * settings.DamageBonusPerWeightedKill * 100.0;
        if (pct > settings.DamageBonusCapPercent)
            pct = settings.DamageBonusCapPercent;
        if (pct < 0 || double.IsNaN(pct))
            return 0;
        return pct;
    }

    static void AnnounceMilestones(Player player, PlayerXenologyData data, Settings settings)
    {
        var t = data.TotalLifetimeKills;
        var tier = 0;
        if (t >= settings.MilestoneKillsTier3)
            tier = 3;
        else if (t >= settings.MilestoneKillsTier2)
            tier = 2;
        else if (t >= settings.MilestoneKillsTier1)
            tier = 1;

        if (tier > data.LastAnnouncedMilestoneTier)
        {
            data.LastAnnouncedMilestoneTier = tier;
            player.SendMessage($"[Xenology] Milestone: {t:N0} lifetime kills — loot tier offset +{tier} on qualifying drops.");
        }
    }
}
