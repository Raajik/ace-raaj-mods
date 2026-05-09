namespace Swarmed;

// Cached mean FakeFloat 11013 (ChallengeModes chaos QP factor) across online players for Swarmed scaling.
internal static class SwarmedChaos
{
    static DateTime _cacheUtc;
    static float _cachedMean = 1f;
    const double CacheSeconds = 5.0;

    internal static float GetMeanOnlineChaosFactor()
    {
        if ((DateTime.UtcNow - _cacheUtc).TotalSeconds < CacheSeconds)
            return _cachedMean;

        lock (typeof(SwarmedChaos))
        {
            if ((DateTime.UtcNow - _cacheUtc).TotalSeconds < CacheSeconds)
                return _cachedMean;

            double sum = 0;
            int n = 0;
            foreach (Player p in PlayerManager.GetAllOnline())
            {
                double c = p.GetProperty((FakeFloat)11013) is double d ? d : 1.0;
                if (c < 1.0)
                    c = 1.0;
                sum += c;
                n++;
            }

            _cachedMean = n > 0 ? (float)(sum / n) : 1f;
            _cacheUtc = DateTime.UtcNow;
            return _cachedMean;
        }
    }

    // Blend killer chaos with shard mean so reinforcements/CreatureEx feel chaos even when the killer is not in /cm chaos.
    internal static float EffectiveChaosFactor(Player? killer, Settings settings)
    {
        float f = 1f;
        if (killer != null)
        {
            var k = killer.GetProperty((FakeFloat)11013);
            if (k is double kd && kd > 1.01)
                f = (float)kd;
        }

        if (settings.ReinforcementChaosBlendOnlineMean)
        {
            float m = GetMeanOnlineChaosFactor();
            if (m > f)
                f = m;
        }

        return f;
    }

    internal static void ApplyCreatureExChaosBoost(ref double chance, Settings? settings)
    {
        if (settings is null || settings.CreatureExChaosBoostMaxMultiplier <= 1.0)
            return;

        float m = GetMeanOnlineChaosFactor();
        if (m <= 1.01f)
            return;

        double cap = settings.CreatureExChaosBoostMaxMultiplier - 1.0;
        double extra = Math.Min(cap, (m - 1f) * settings.CreatureExChaosBoostScale);
        chance = Math.Min(1.0, chance * (1.0 + extra));
    }
}

// Shard-wide cap on reinforcement creatures spawned per rolling 60s (perf ceiling).
internal static class ReinforcementSpawnBudget
{
    static readonly object _lock = new();
    static readonly List<DateTime> _spawnTimes = new();

    internal static int ConsumeSpawnBudget(int requested, int maxPerMinute)
    {
        if (maxPerMinute <= 0 || requested <= 0)
            return requested;

        var cutoff = DateTime.UtcNow.AddSeconds(-60);
        lock (_lock)
        {
            for (int i = _spawnTimes.Count - 1; i >= 0; i--)
            {
                if (_spawnTimes[i] < cutoff)
                    _spawnTimes.RemoveAt(i);
            }

            int used = _spawnTimes.Count;
            int room = Math.Max(0, maxPerMinute - used);
            int grant = Math.Min(requested, room);
            DateTime now = DateTime.UtcNow;
            for (int i = 0; i < grant; i++)
                _spawnTimes.Add(now);

            return grant;
        }
    }
}
