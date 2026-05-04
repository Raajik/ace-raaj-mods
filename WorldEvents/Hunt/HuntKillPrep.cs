namespace WorldEvents;

// ACE calls Creature.OnDeath (GrantXP) before Creature.Die (Harmony prefixes). Loremaster PreGrantXP
// only records hunt kill character XP to PropertyInt64 40126 when PendingKillXpMultiplier (40121) is set;
// that was previously set only in PreDieHunt, so 40126 was never written. Apply the same pending state
// here so GrantXP runs with 40121 already on the killer.
internal static class HuntKillPrep
{
    internal static void TryApplyPendingKillBonuses(Creature victim, DamageHistoryInfo? lastDamager, Settings? settings)
    {
        if (settings?.EnableHunt != true || victim == null)
            return;

        var killer = ResolveKillerPlayer(lastDamager);
        if (killer == null)
            return;

        var speciesId = (uint)(victim.GetProperty(PropertyInt.CreatureType) ?? 0);
        if (speciesId == 0)
            return;

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

    internal static Player? ResolveKillerPlayer(DamageHistoryInfo? lastDamager)
    {
        if (lastDamager == null)
            return null;
        // Do not require lastDamager.IsPlayer: combat pets use non-player guids but PetOwner resolves to the summoner.
        return lastDamager.TryGetPetOwnerOrAttacker() as Player;
    }

    internal static double ComputeDamageBonusPercent(PlayerHuntData data, Settings settings)
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
}
