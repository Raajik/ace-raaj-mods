namespace WorldEvents;

public partial class PatchClass
{
    [ThreadStatic] static uint _pendingKillerGuid;
    [ThreadStatic] static long _pendingGrantedKillXp;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die), new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PreDieHunt(DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager, Creature __instance)
    {
        var settings = CurrentSettings;
        if (settings?.EnableHunt != true || __instance == null)
            return;

        var killer = ResolveKillerPlayer(lastDamager);
        if (killer == null)
            return;

        var speciesId = (uint)(__instance.GetProperty(PropertyInt.CreatureType) ?? 0);
        if (speciesId == 0)
            return;

        _pendingKillerGuid = killer.Guid.Full;
        _pendingGrantedKillXp = 0;

        var guid = killer.Guid.Full;
        var data = HuntRuntime.GetOrLoadPlayer(guid);

        HuntRuntime.GlobalSpeciesKills.TryGetValue(speciesId, out var gShardPre);
        var speciesMap = HuntRuntime.GlobalSpeciesKills.ToDictionary(kv => kv.Key, kv => kv.Value);
        var bottom = HuntRanks.BuildBottomSet(speciesMap, settings);
        var popularity = bottom.Contains(speciesId) ? settings.BottomTenPopularityMultiplier : 1.0;

        var hunt = HuntRuntime.GetHuntMultiplierForSpecies(speciesId);

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

        killer.SetProperty((PropertyFloat)HuntPropertyIds.PendingKillXpMultiplier, (float)totalMult);

        var previewXxp = settings.BaseHuntXpPerKill * totalMult;
        killer.SetProperty((PropertyFloat)HuntPropertyIds.PendingHuntXpPreview, (float)previewXxp);

        var dmgPct = ComputeDamageBonusPercent(data, settings);
        var trophyHint = Math.Min(settings.TrophyChanceCap, dmgPct * settings.TrophyChancePerDamagePercent);
        killer.SetProperty((PropertyFloat)HuntPropertyIds.PendingTrophyChanceHint, (float)trophyHint);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die), new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PostDieHunt(DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager, Creature __instance)
    {
        var settings = CurrentSettings;
        if (settings?.EnableHunt != true || __instance == null)
            return;

        var killer = ResolveKillerPlayer(lastDamager);
        if (killer == null)
            return;

        var speciesId = (uint)(__instance.GetProperty(PropertyInt.CreatureType) ?? 0);
        if (speciesId == 0)
            return;

        var guid = killer.Guid.Full;
        var data = HuntRuntime.GetOrLoadPlayer(guid);

        HuntRuntime.GlobalSpeciesKills.TryGetValue(speciesId, out var gShardPreRare);
        HuntRuntime.GlobalSpeciesKills.AddOrUpdate(speciesId, 1, (_, v) => v + 1);
        HuntRuntime.MarkGlobalDirty();

        if (!data.SpeciesKills.TryGetValue(speciesId, out var sk))
            sk = 0;
        data.SpeciesKills[speciesId] = sk + 1;
        data.TotalLifetimeKills++;

        var speciesMap = HuntRuntime.GlobalSpeciesKills.ToDictionary(kv => kv.Key, kv => kv.Value);
        var bottom = HuntRanks.BuildBottomSet(speciesMap, settings);
        var popularity = bottom.Contains(speciesId) ? settings.BottomTenPopularityMultiplier : 1.0;
        var hunt = HuntRuntime.GetHuntMultiplierForSpecies(speciesId);

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

        var xxp = settings.BaseHuntXpPerKill * popularity * hunt * streakMult * rarityMult;
        data.TotalHuntXp += xxp;

        var timedOut = !data.LastKillUtc.HasValue
            || (DateTime.UtcNow - data.LastKillUtc.Value).TotalSeconds > settings.StreakTimeoutSeconds;
        if (timedOut)
            data.StreakCount = 1;
        else
            data.StreakCount++;

        data.LastKillUtc = DateTime.UtcNow;
        data.LastKillWcid = speciesId;

        AnnounceMilestones(killer, data, settings);

        var huntNow = DateTime.UtcNow;
        if (HuntRuntime.ActiveHunt != null
            && huntNow >= HuntRuntime.ActiveHunt.WindowStartUtc
            && huntNow < HuntRuntime.ActiveHunt.WindowEndUtc)
        {
            var huntPts = Math.Ceiling(_pendingGrantedKillXp * 0.01);
            lock (HuntRuntime.HuntLock)
            {
                if (HuntRuntime.ActiveHunt != null
                    && huntNow >= HuntRuntime.ActiveHunt.WindowStartUtc
                    && huntNow < HuntRuntime.ActiveHunt.WindowEndUtc)
                {
                    // Lock player into bracket at first kill of this window
                    if (!HuntRuntime.ActiveHunt.PlayerBrackets.TryGetValue(guid, out var bracket))
                    {
                        bracket = HuntLevels.GetBracket(killer);
                        HuntRuntime.ActiveHunt.PlayerBrackets[guid] = bracket;
                    }

                    if (!HuntRuntime.ActiveHunt.HuntPointsByBracket.TryGetValue(bracket, out var bracketPts))
                    {
                        bracketPts = new Dictionary<uint, double>();
                        HuntRuntime.ActiveHunt.HuntPointsByBracket[bracket] = bracketPts;
                    }

                    bracketPts.TryGetValue(guid, out var pts);
                    bracketPts[guid] = pts + huntPts;
                    HuntPersistence.SaveActiveHunt(HuntRuntime.ActiveHunt);
                }
            }
        }

        _pendingKillerGuid = 0;
        _pendingGrantedKillXp = 0;

        HuntRuntime.PlayerData[guid] = data;
        HuntRuntime.FlushPlayer(guid, data);
        HuntRuntime.FlushGlobalIfDue(settings);

        killer.RemoveProperty((PropertyFloat)HuntPropertyIds.PendingKillXpMultiplier);
        killer.RemoveProperty((PropertyFloat)HuntPropertyIds.PendingTrophyChanceHint);
        killer.RemoveProperty((PropertyFloat)HuntPropertyIds.PendingHuntXpPreview);
    }

    // GrantXP prefix order (low priority first): Loremaster default ~400 → Hunt 430 → ChallengeModes 450+.
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
        if (settings?.EnableHunt != true || xpType != XpType.Kill)
            return;

        var mult = __instance.GetProperty((PropertyFloat)HuntPropertyIds.PendingKillXpMultiplier);
        if (!mult.HasValue || mult.Value <= 0)
            return;

        var m = mult.Value;
        if (m > 0 && !double.IsNaN(m) && !double.IsInfinity(m))
            amount = (long)(amount * m);

        // Capture the killer's post-multiplier XP for hunt point calculation (1% of XP earned).
        if (__instance.Guid.Full == _pendingKillerGuid)
            _pendingGrantedKillXp = amount;

        // Consume immediately so fellowship / other re-entrant GrantXP(Kill) do not double-apply the same mult.
        __instance.RemoveProperty((PropertyFloat)HuntPropertyIds.PendingKillXpMultiplier);
    }

    static Player? ResolveKillerPlayer(DamageHistoryInfo? lastDamager)
    {
        if (lastDamager == null || !lastDamager.IsPlayer)
            return null;
        return lastDamager.TryGetPetOwnerOrAttacker() as Player;
    }

    static double ComputeDamageBonusPercent(PlayerHuntData data, Settings settings)
    {
        double progress = settings.DamageBonusUsesHuntXp ? data.TotalHuntXp : data.TotalLifetimeKills;
        double coeff = settings.DamageBonusUsesHuntXp ? settings.DamageBonusPerHuntXp : settings.DamageBonusPerWeightedKill;
        var pct = progress * coeff * 100.0;
        if (pct > settings.DamageBonusCapPercent)
            pct = settings.DamageBonusCapPercent;
        if (pct < 0 || double.IsNaN(pct))
            return 0;
        return pct;
    }

    static void AnnounceMilestones(Player player, PlayerHuntData data, Settings settings)
    {
        double progress = settings.UseMilestoneXpForTiers ? data.TotalHuntXp : data.TotalLifetimeKills;
        var tier = HuntRanks.MilestoneLootTierFromProgress(progress, settings);

        if (tier > data.LastAnnouncedMilestoneTier)
        {
            data.LastAnnouncedMilestoneTier = tier;
            var label = settings.UseMilestoneXpForTiers
                ? $"{data.TotalHuntXp:N0} Hunt XP"
                : $"{data.TotalLifetimeKills:N0} lifetime kills";
            player.SendMessage($"[Hunt] Milestone: {label} — loot tier offset +{tier} on qualifying drops.");
        }
    }
}
