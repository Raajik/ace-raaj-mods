using System.Collections.Concurrent;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

internal static class HealerAura
{
    static readonly ConcurrentDictionary<uint, double> LastHealerAuraTick = new();

    public static void PostHeartbeatHealerAura(double currentUnixTime, WorldObject __instance)
    {
        if (__instance is not Player player)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableCombatClasses != true)
            return;

        if (SummoningClasses.GetPlayerClass(player) != "Healer")
            return;

        var healerSettings = settings.CombatClasses.Healer;
        if (healerSettings.FlatHealPerTick <= 0 || healerSettings.AuraRangeMeters <= 0)
            return;

        uint pid = player.Guid.Full;
        double last = LastHealerAuraTick.GetValueOrDefault(pid);
        if (last <= 0)
            last = currentUnixTime - 1.0;

        double dt = currentUnixTime - last;
        if (dt < healerSettings.AuraTickSeconds)
            return;

        dt = Math.Clamp(dt, healerSettings.AuraTickSeconds, 10.0);
        LastHealerAuraTick[pid] = currentUnixTime;

        var lb = player.CurrentLandblock;
        if (lb == null) return;

        float range = (float)healerSettings.AuraRangeMeters;
        int totalHealed = 0;

        // Heal self
        if (!player.IsDead && player.Health.Current < player.Health.MaxValue)
        {
            int selfHeal = (int)Math.Min(healerSettings.FlatHealPerTick, player.Health.MaxValue - player.Health.Current);
            if (selfHeal > 0)
            {
                player.UpdateVitalDelta(player.Health, selfHeal);
                totalHealed += selfHeal;
            }
        }

        // Heal nearby players (fellowship + same allegiance + friends)
        foreach (var obj in lb.GetWorldObjectsForPhysicsHandling())
        {
            if (obj is not Player ally || ally == player || ally.IsDead)
                continue;

            float dist = player.GetDistance(obj);
            if (dist > range)
                continue;

            // Only heal fellowship members, same-allegiance, or friends
            bool isFellow = player.Fellowship != null && player.Fellowship.GetFellowshipMembers().ContainsKey(ally.Guid.Full);
            bool isSameAllegiance = player.MonarchId != null && player.MonarchId == ally.MonarchId;
            bool isFriend = player.Character != null && ally.Character != null &&
                player.Character.HasAsFriend(ally.Guid.Full, player.CharacterDatabaseLock);

            if (!isFellow && !isSameAllegiance && !isFriend)
                continue;

            if (ally.Health.Current < ally.Health.MaxValue)
            {
                int allyHeal = (int)Math.Min(healerSettings.FlatHealPerTick, ally.Health.MaxValue - ally.Health.Current);
                if (allyHeal > 0)
                {
                    ally.UpdateVitalDelta(ally.Health, allyHeal);
                    totalHealed += allyHeal;
                }
            }
        }

        // Optional: small visual effect on self when healing others
        if (totalHealed > 0)
        {
            try { player.ApplyVisualEffects(PlayScript.EnchantUpGreen, 1.0f); } catch { }
        }
    }

    public static void PostEnterWorldHealerAura(Player __instance)
    {
        LastHealerAuraTick.TryRemove(__instance.Guid.Full, out _);
    }
}
