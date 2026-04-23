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

        XenologyRuntime.GlobalSpeciesKills.TryGetValue(wcid, out var gShardPre);
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

        var rarityMult = settings.RarityGlobalKillsThreshold <= 0 || gShardPre >= settings.RarityGlobalKillsThreshold
            ? 1.0
            : settings.RarityXpMultiplier;

        var totalMult = popularity * hunt * streakMult * rarityMult;
        if (totalMult < 0 || double.IsNaN(totalMult) || double.IsInfinity(totalMult))
            totalMult = 1.0;

        killer.SetProperty((PropertyFloat)XenologyPropertyIds.PendingKillXpMultiplier, (float)totalMult);

        var previewXxp = settings.BaseXenologyXpPerKill * totalMult;
        killer.SetProperty((PropertyFloat)XenologyPropertyIds.PendingXenologyXpPreview, (float)previewXxp);

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

        XenologyRuntime.GlobalSpeciesKills.TryGetValue(wcid, out var gShardPreRare);
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

        var rarityMult = settings.RarityGlobalKillsThreshold <= 0 || gShardPreRare >= settings.RarityGlobalKillsThreshold
            ? 1.0
            : settings.RarityXpMultiplier;

        var xxp = settings.BaseXenologyXpPerKill * popularity * hunt * streakMult * rarityMult;
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

        var huntNow = DateTime.UtcNow;
        if (XenologyRuntime.ActiveHunt != null
            && huntNow >= XenologyRuntime.ActiveHunt.WindowStartUtc
            && huntNow < XenologyRuntime.ActiveHunt.WindowEndUtc)
        {
            lock (XenologyRuntime.HuntLock)
            {
                if (XenologyRuntime.ActiveHunt != null
                    && huntNow >= XenologyRuntime.ActiveHunt.WindowStartUtc
                    && huntNow < XenologyRuntime.ActiveHunt.WindowEndUtc)
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
        killer.RemoveProperty((PropertyFloat)XenologyPropertyIds.PendingXenologyXpPreview);
    }

    // GrantXP prefix order (low priority first): Loremaster default ~400 → Xenology 430 → ChallengeModes 450+.
    // Keep 430 if you add another mod that multiplies "raw" kill XP between Loremaster and challenge bonuses.
    //
    // One-shot: ACE fellowship SplitXp re-enters GrantXP(Kill) per member; leaving PendingKillXpMultiplier up
    // for the whole die frame makes the multiplier apply every time and breaks kill + equipped item XP math.
    // Consuming the property in this prefix matches stock behavior (one outer kill amount is split, not re-xped).
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

        // Consume immediately so fellowship / other re-entrant GrantXP(Kill) do not double-apply the same mult.
        __instance.RemoveProperty((PropertyFloat)XenologyPropertyIds.PendingKillXpMultiplier);
    }

    static Player? ResolveKillerPlayer(DamageHistoryInfo? lastDamager)
    {
        if (lastDamager == null || !lastDamager.IsPlayer)
            return null;
        return lastDamager.TryGetPetOwnerOrAttacker() as Player;
    }

    static double ComputeDamageBonusPercent(PlayerXenologyData data, Settings settings)
    {
        double progress = settings.DamageBonusUsesXenologyXp ? data.TotalXenologyXp : data.TotalLifetimeKills;
        double coeff = settings.DamageBonusUsesXenologyXp ? settings.DamageBonusPerXenologyXp : settings.DamageBonusPerWeightedKill;
        var pct = progress * coeff * 100.0;
        if (pct > settings.DamageBonusCapPercent)
            pct = settings.DamageBonusCapPercent;
        if (pct < 0 || double.IsNaN(pct))
            return 0;
        return pct;
    }

    static void AnnounceMilestones(Player player, PlayerXenologyData data, Settings settings)
    {
        double progress = settings.UseMilestoneXpForTiers ? data.TotalXenologyXp : data.TotalLifetimeKills;
        var tier = XenologyRanks.MilestoneLootTierFromProgress(progress, settings);

        if (tier > data.LastAnnouncedMilestoneTier)
        {
            data.LastAnnouncedMilestoneTier = tier;
            var label = settings.UseMilestoneXpForTiers
                ? $"{data.TotalXenologyXp:N0} xXP"
                : $"{data.TotalLifetimeKills:N0} lifetime kills";
            player.SendMessage($"[Xenology] Milestone: {label} — loot tier offset +{tier} on qualifying drops.");
        }
    }
}
