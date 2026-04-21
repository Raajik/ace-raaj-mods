using System.Collections.Concurrent;
using ACE.Server.Entity;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.HealingSkill))]
internal static class HealingSkillReplenish
{
    static readonly ConcurrentDictionary<uint, ReplenishHotState> ActiveHots = new();
    static readonly ConcurrentDictionary<uint, bool> TickRunning = new();

    static readonly object HealerHookLock = new();
    static bool HealerHookApplied;

    internal static void RefreshHealerHook(Harmony harmony, bool enable)
    {
        lock (HealerHookLock)
        {
            if (enable)
                TryApplyHealerHook(harmony);
            else
                TryRemoveHealerHook(harmony);
        }
    }

    internal static void RemoveHealerHookOnModStop(Harmony harmony)
    {
        lock (HealerHookLock)
        {
            TryRemoveHealerHook(harmony);
        }
    }

    static void TryApplyHealerHook(Harmony harmony)
    {
        if (HealerHookApplied)
            return;

        try
        {
            MethodInfo? method = AccessTools.Method(typeof(Healer), nameof(Healer.HandleActionUseOnTarget),
                new Type[] { typeof(Player), typeof(WorldObject) });

            if (method == null)
            {
                ModManager.Log("[BSS Replenish] Healer.HandleActionUseOnTarget not found; hook not applied.", ModManager.LogLevel.Error);
                return;
            }

            MethodInfo? prefix = AccessTools.Method(typeof(HealingSkillReplenish), nameof(PreHealerHandleActionUseOnTargetFlexible));
            if (prefix == null)
            {
                ModManager.Log("[BSS Replenish] Flexible healer prefix method not found.", ModManager.LogLevel.Error);
                return;
            }

            harmony.Patch(method, prefix: new HarmonyMethod(prefix));
            HealerHookApplied = true;
            ModManager.Log("[BSS Replenish] Healer use-on-target hook applied.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS Replenish] Failed to apply Healer hook: {ex}", ModManager.LogLevel.Error);
        }
    }

    static void TryRemoveHealerHook(Harmony harmony)
    {
        if (!HealerHookApplied)
            return;

        try
        {
            MethodInfo? method = AccessTools.Method(typeof(Healer), nameof(Healer.HandleActionUseOnTarget),
                new Type[] { typeof(Player), typeof(WorldObject) });
            if (method != null)
                harmony.Unpatch(method, HarmonyPatchType.Prefix, harmony.Id);

            HealerHookApplied = false;
            ModManager.Log("[BSS Replenish] Healer use-on-target hook removed.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS Replenish] Failed to remove Healer hook: {ex}", ModManager.LogLevel.Error);
        }
    }

    public static bool PreHealerHandleActionUseOnTargetFlexible(Healer __instance, object[] __args)
    {
        Settings? cfg = PatchClass.Settings;
        if (cfg is null)
            return true;

        ReplenishSettings s = cfg.Replenish;
        if (__instance == null || __args == null || __args.Length < 2)
            return true;

        if (__args[0] is not Player healer)
            return true;

        __args[1] = healer;

        if (s.EnableDebugMessages)
            ModManager.Log($"[BSS Replenish] Player used healing kit.", ModManager.LogLevel.Info);

        ApplyReplenishHot(healer, s);
        return true;
    }

    static void ApplyReplenishHot(Player player, ReplenishSettings s)
    {
        try
        {
            if (player.IsDead)
                return;

            var healingSkill = player.GetCreatureSkill(Skill.Healing);
            int skillValue = (int)healingSkill.Current;

            if (skillValue <= 0)
                return;

            double multiplier = s.BaseSkillPercentPerTick;

            if (healingSkill.AdvancementClass == SkillAdvancementClass.Specialized)
                multiplier *= s.SpecializedMultiplier;

            // Restore a small amount to ALL 3 vitals every tick
            float perTick = (float)(skillValue * multiplier);

            if (perTick <= 0)
                return;

            double tickSeconds = s.HotTickSeconds > 0 ? s.HotTickSeconds : 1.0;
            int totalTicks = Math.Max(1, (int)Math.Round(s.HotDurationSeconds / tickSeconds));

            uint id = player.Guid.Full;

            ActiveHots.AddOrUpdate(id,
                _ => new ReplenishHotState
                {
                    HealthPerTick = perTick,
                    StaminaPerTick = perTick,
                    ManaPerTick = perTick,
                    RemainingTicks = totalTicks
                },
                (_, state) =>
                {
                    state.HealthPerTick = perTick;
                    state.StaminaPerTick = perTick;
                    state.ManaPerTick = perTick;
                    state.RemainingTicks = totalTicks;
                    return state;
                });

            if (!TickRunning.ContainsKey(id))
                StartTickChain(player, s);

            ModManager.Log($"[BSS Replenish] Applied to {player.Name}: +{perTick:F1} all vitals/tick x {totalTicks} ticks (skill={skillValue}, mult={multiplier:F2}).", ModManager.LogLevel.Info);

            if (s.EnableDebugMessages)
            {
                float total = perTick * totalTicks;
                player.SendMessage($"[BSS Replenish] +{total:F1} Health/Stamina/Mana over {totalTicks} seconds.", ChatMessageType.Broadcast);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS Replenish] ApplyReplenishHot error: {ex}", ModManager.LogLevel.Error);
        }
    }

    static void StartTickChain(Player player, ReplenishSettings s)
    {
        if (player == null)
            return;

        uint id = player.Guid.Full;

        if (!ActiveHots.ContainsKey(id))
            return;

        TickRunning[id] = true;

        var chain = new ActionChain();
        chain.AddDelaySeconds((float)s.HotTickSeconds);
        chain.AddAction(player, () => TickOnce(player, s));
        chain.EnqueueChain();
    }

    static void TickOnce(Player player, ReplenishSettings s)
    {
        if (player == null)
            return;

        uint id = player.Guid.Full;

        if (!ActiveHots.TryGetValue(id, out ReplenishHotState? state) || state == null)
        {
            TickRunning.TryRemove(id, out _);
            return;
        }

        if (player.IsDead)
        {
            ActiveHots.TryRemove(id, out _);
            TickRunning.TryRemove(id, out _);
            return;
        }

        if (state.HealthPerTick > 0)
            player.UpdateVitalDelta(player.Health, (int)Math.Round(state.HealthPerTick));

        if (state.StaminaPerTick > 0)
            player.UpdateVitalDelta(player.Stamina, (int)Math.Round(state.StaminaPerTick));

        if (state.ManaPerTick > 0)
            player.UpdateVitalDelta(player.Mana, (int)Math.Round(state.ManaPerTick));

        state.RemainingTicks--;

        if (state.RemainingTicks <= 0)
        {
            ActiveHots.TryRemove(id, out _);
            TickRunning.TryRemove(id, out _);
            return;
        }

        var chain = new ActionChain();
        chain.AddDelaySeconds((float)s.HotTickSeconds);
        chain.AddAction(player, () => TickOnce(player, s));
        chain.EnqueueChain();
    }
}

internal sealed class ReplenishHotState
{
    public float HealthPerTick { get; set; }
    public float StaminaPerTick { get; set; }
    public float ManaPerTick { get; set; }
    public int RemainingTicks { get; set; }
}