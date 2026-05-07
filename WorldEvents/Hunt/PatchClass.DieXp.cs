namespace WorldEvents;

public partial class PatchClass
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.OnDeath), new Type[] { typeof(DamageHistoryInfo), typeof(DamageType), typeof(bool) })]
    public static void PreOnDeathHunt(DamageHistoryInfo lastDamager, DamageType damageType, bool criticalHit, Creature __instance)
    {
        // Player deaths call base OnDeath; skip so we do not stamp hunt pending props on PK killers using the victim's CreatureType.
        if (__instance is Player)
            return;

        HuntKillPrep.TryApplyPendingKillBonuses(__instance, lastDamager, CurrentSettings);
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die), new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PreDieHunt(DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager, Creature __instance)
    {
        HuntKillPrep.TryApplyPendingKillBonuses(__instance, lastDamager, CurrentSettings);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die), new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PostDieHunt(DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager, Creature __instance)
    {
        var settings = CurrentSettings;
        if (settings?.EnableHunt != true || __instance == null)
            return;

        var killer = HuntKillPrep.ResolveKillerPlayer(lastDamager);
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

        AnnounceAchievements(killer, data, settings);

        var huntNow = DateTime.UtcNow;
        if (HuntRuntime.ActiveHunt != null
            && huntNow >= HuntRuntime.ActiveHunt.WindowStartUtc
            && huntNow < HuntRuntime.ActiveHunt.WindowEndUtc)
        {
            var grantedXp = (long)(killer.GetProperty((PropertyInt64)HuntPropertyIds.PendingGrantedCharacterXp) ?? 0);
            killer.RemoveProperty((PropertyInt64)HuntPropertyIds.PendingGrantedCharacterXp);
            // Window points were only from character kill XP (40126). Grey mobs / zero-XP kills can grant 0 there while Hunt XP (xxp) still increases — align both.
            double fromGrantedXp = grantedXp > 0 ? Math.Ceiling(grantedXp * 0.01) : 0.0;
            double fromHuntXp = xxp > 0 ? Math.Ceiling(xxp * 0.01) : 0.0;
            double huntPts = Math.Max(fromGrantedXp, fromHuntXp);
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

        HuntRuntime.PlayerData[guid] = data;
        HuntRuntime.FlushPlayer(guid, data);
        HuntRuntime.FlushGlobalIfDue(settings);

        killer.RemoveProperty((PropertyFloat)HuntPropertyIds.PendingKillXpMultiplier);
        killer.RemoveProperty((PropertyFloat)HuntPropertyIds.PendingTrophyChanceHint);
        killer.RemoveProperty((PropertyFloat)HuntPropertyIds.PendingHuntXpPreview);
    }

    static void AnnounceAchievements(Player player, PlayerHuntData data, Settings settings)
    {
        double progress = settings.UseAchievementXpForTiers ? data.TotalHuntXp : data.TotalLifetimeKills;
        var tier = HuntRanks.AchievementLootTierFromProgress(progress, settings);

        if (tier > data.LastAnnouncedAchievementTier)
        {
            data.LastAnnouncedAchievementTier = tier;
            var label = settings.UseAchievementXpForTiers
                ? $"{data.TotalHuntXp:N0} Hunt XP"
                : $"{data.TotalLifetimeKills:N0} lifetime kills";
            player.SendMessage($"[Hunt] Achievement: {label} -- loot tier offset +{tier} on qualifying drops.");
        }
    }
}
