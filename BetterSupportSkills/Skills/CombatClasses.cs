using System.Collections.Concurrent;
using System.Diagnostics;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

internal static class CombatClasses
{
    [Conditional("DEBUG")]
    private static void DebugLog(string msg)
    {
        ModManager.Log($"[BSS CombatClasses] {msg}", ModManager.LogLevel.Debug);
    }

    static readonly ConcurrentDictionary<uint, double> LastCrusaderHealTick = new();

    // -- Melee Hit Effects (Rogue Bleed, Berserker Life Steal, Crusader Crit) --

    public static void PostDamageTargetCombatEffects(Creature target, WorldObject damageSource, Player __instance, ref DamageEvent __result)
    {
        if (__result is null || !__result.HasDamage || target == null)
            return;

        if (__result.CombatType != CombatType.Melee && __result.CombatType != CombatType.Missile)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableCombatClasses != true)
            return;

        var combatSettings = settings.CombatClasses;
        string? activeClass = SummoningClasses.GetPlayerClass(__instance);

        // Rogue bleed on every hit
        if (activeClass == "Rogue" && combatSettings.Rogue.BleedPercentPerHit > 0)
        {
            ApplyRogueBleed(__instance, target, combatSettings.Rogue);
        }

        // Berserker life steal
        if (activeClass == "Berserker" && combatSettings.Berserker.LifeStealPercent > 0)
        {
            ApplyBerserkerLifeSteal(__instance, target, __result, combatSettings.Berserker);
        }

        // Crusader crit bonus
        if (activeClass == "Crusader" && combatSettings.Crusader.CritDamageMultiplier > 1.0)
        {
            if (__result.IsCritical)
            {
                ApplyCrusaderCritBonus(__instance, target, ref __result, combatSettings.Crusader);
            }
        }
    }

    static void ApplyRogueBleed(Player player, Creature target, RogueSettings rs)
    {
        double pct = rs.BleedPercentPerHit;
        int maxTicks = rs.BleedTicks;
        double interval = rs.BleedIntervalSeconds;
        int tickCount = 0;

        void Tick()
        {
            if (target.IsDead) return;
            tickCount++;
            int tier = tickCount <= maxTicks / 3 ? 1 : tickCount <= (maxTicks * 2) / 3 ? 2 : 3;
            float damage = (float)(target.Health.MaxValue * pct * tier);
            if (damage > 0)
            {
                target.TakeDamage(player, DamageType.Slash, damage);
                target.EnqueueBroadcast(new GameMessageScript(target.Guid, PlayScript.DirtyFightingDamageOverTime));
            }
            if (tickCount < maxTicks)
            {
                var chain = new ActionChain();
                chain.AddDelaySeconds(interval);
                chain.AddAction(target, Tick);
                chain.EnqueueChain();
            }
        }

        var chain = new ActionChain();
        chain.AddDelaySeconds(interval);
        chain.AddAction(target, Tick);
        chain.EnqueueChain();
    }

    static void ApplyBerserkerLifeSteal(Player player, Creature target, DamageEvent damageEvent, BerserkerSettings bs)
    {
        float damage = damageEvent.Damage;
        float healAmount = damage * (float)bs.LifeStealPercent;
        if (healAmount < 1) return;

        int maxHeal = bs.LifeStealMaxPerHit;
        int heal = (int)Math.Min(healAmount, maxHeal);
        if (heal > 0 && player.Health.Current < player.Health.MaxValue)
        {
            int actualHeal = (int)Math.Min(heal, player.Health.MaxValue - player.Health.Current);
            player.UpdateVitalDelta(player.Health, actualHeal);
            player.SendMessage($"You drain {actualHeal} health from {target.Name}.");
        }
    }

    static void ApplyCrusaderCritBonus(Player player, Creature target, ref DamageEvent damageEvent, CrusaderSettings cs)
    {
        float bonusMultiplier = (float)cs.CritDamageMultiplier - 1.0f;
        if (bonusMultiplier <= 0) return;

        float bonusDamage = damageEvent.Damage * bonusMultiplier;
        if (bonusDamage > 0)
        {
            target.TakeDamage(player, damageEvent.DamageType, bonusDamage, false);
            player.SendMessage($"Your righteous fury deals {(int)bonusDamage} bonus damage!");
        }
    }

    // -- Crusader Passive Heal -------------------------------------------

    public static void PostHeartbeatCrusaderHeal(double currentUnixTime, WorldObject __instance)
    {
        if (__instance is not Player player)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableCombatClasses != true)
            return;

        var combatSettings = settings.CombatClasses;
        if (combatSettings.Crusader.PassiveHealPercentPerSecond <= 0)
            return;

        if (SummoningClasses.GetPlayerClass(player) != "Crusader")
            return;

        uint pid = player.Guid.Full;
        double last = LastCrusaderHealTick.GetValueOrDefault(pid);
        if (last <= 0)
            last = currentUnixTime - 1.0;

        double dt = currentUnixTime - last;
        if (dt < 0.5)
            return;

        dt = Math.Clamp(dt, 0.5, 10.0);
        LastCrusaderHealTick[pid] = currentUnixTime;

        if (player.IsDead || player.Health.Current >= player.Health.MaxValue)
            return;

        double heal = player.Health.MaxValue * combatSettings.Crusader.PassiveHealPercentPerSecond * dt;
        if (heal < 0.5)
            return;

        int healInt = (int)Math.Min(int.MaxValue, Math.Round(heal));
        if (healInt < 1) healInt = 1;

        player.UpdateVitalDelta(player.Health, healInt);
    }

    public static void PostEnterWorld(Player __instance)
    {
        LastCrusaderHealTick.TryRemove(__instance.Guid.Full, out _);
    }
}
