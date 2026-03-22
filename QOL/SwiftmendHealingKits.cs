using System.Collections.Concurrent;

namespace QOL;

// Healing kits: redirect use-on-target to self and apply a skill-scaled HoT (merged from former Swiftmend mod).
// Healer hook uses manual Harmony Patch + object[] __args (prefix with ref WorldObject fails to bind on some targets).
[HarmonyPatchCategory(nameof(Features.SwiftmendHealingKits))]
internal static class SwiftmendHealingKits
{
    static readonly ConcurrentDictionary<uint, SwiftmendHotState> ActiveHots = new();
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
                ModManager.Log("[QOL Swiftmend] Healer.HandleActionUseOnTarget(Player, WorldObject) not found; HoT hook not applied.", ModManager.LogLevel.Error);
                return;
            }

            MethodInfo? prefix = AccessTools.Method(typeof(SwiftmendHealingKits), nameof(PreHealerHandleActionUseOnTargetFlexible));
            if (prefix == null)
            {
                ModManager.Log("[QOL Swiftmend] Flexible healer prefix method not found.", ModManager.LogLevel.Error);
                return;
            }

            harmony.Patch(method, prefix: new HarmonyMethod(prefix));
            HealerHookApplied = true;
            ModManager.Log("[QOL Swiftmend] Healer use-on-target hook applied (manual Patch + __args).", ModManager.LogLevel.Info);
            LogHealerPatchesStatic();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL Swiftmend] Failed to apply Healer hook: {ex}", ModManager.LogLevel.Error);
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
            ModManager.Log("[QOL Swiftmend] Healer use-on-target hook removed.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL Swiftmend] Failed to remove Healer hook: {ex}", ModManager.LogLevel.Error);
        }
    }

    public static bool PreHealerHandleActionUseOnTargetFlexible(Healer __instance, object[] __args)
    {
        Settings? cfg = PatchClass.Settings;
        if (cfg is null || !cfg.EnableSwiftmend)
            return true;

        SwiftmendSettings s = cfg.Swiftmend;
        if (__instance == null || __args == null || __args.Length < 2)
            return true;

        if (__args[0] is not Player healer)
            return true;

        __args[1] = healer;

        if (s.EnableDebugMessages)
            ModManager.Log("[QOL Swiftmend] PreHealerHandleActionUseOnTargetFlexible invoked (redirect target to self).", ModManager.LogLevel.Info);

        ApplySwiftmendHot(healer, __instance, s);
        return true;
    }

    static void LogHealerPatchesStatic()
    {
        try
        {
            var method = AccessTools.Method(typeof(Healer), nameof(Healer.HandleActionUseOnTarget),
                new Type[] { typeof(Player), typeof(WorldObject) });

            if (method == null)
            {
                ModManager.Log("[QOL Swiftmend] Healer.HandleActionUseOnTarget not found for patch inspection.", ModManager.LogLevel.Error);
                return;
            }

            var info = Harmony.GetPatchInfo(method);
            if (info?.Prefixes is { Count: > 0 })
            {
                foreach (var patch in info.Prefixes)
                {
                    var methodName = patch.PatchMethod?.DeclaringType?.FullName + "." + patch.PatchMethod?.Name;
                    ModManager.Log($"[QOL Swiftmend] Healer prefix: owner={patch.owner}, method={methodName}, priority={patch.priority}", ModManager.LogLevel.Info);
                }
            }
            else
                ModManager.Log("[QOL Swiftmend] No prefixes registered on Healer.HandleActionUseOnTarget.", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL Swiftmend] Error while inspecting Healer patches: {ex}", ModManager.LogLevel.Error);
        }
    }

    static void ApplySwiftmendHot(Player player, WorldObject kit, SwiftmendSettings s)
    {
        try
        {
            if (player.IsDead)
            {
                ModManager.Log("[QOL Swiftmend] ApplyHot: player is dead, aborting.", ModManager.LogLevel.Info);
                return;
            }

            var healingSkill = player.GetCreatureSkill(Skill.Healing);
            int skillValue = (int)healingSkill.Current;

            if (skillValue <= 0)
            {
                ModManager.Log("[QOL Swiftmend] ApplyHot: Healing skill <= 0, aborting.", ModManager.LogLevel.Info);
                return;
            }

            double multiplier = s.BaseSkillPercentPerTick;

            if (healingSkill.AdvancementClass == SkillAdvancementClass.Specialized)
                multiplier *= s.SpecializedMultiplier;

            double perTick = skillValue * multiplier;
            if (perTick <= 0.0)
            {
                ModManager.Log($"[QOL Swiftmend] ApplyHot: perTick <= 0 (skill={skillValue}, mult={multiplier}), aborting.", ModManager.LogLevel.Info);
                return;
            }

            float healthPerTick = 0;
            float staminaPerTick = 0;
            float manaPerTick = 0;

            string name = kit.Name?.ToLowerInvariant() ?? string.Empty;
            ModManager.Log($"[QOL Swiftmend] ApplyHot: kit name='{name}', skill={skillValue}, perTick={perTick:F2}.", ModManager.LogLevel.Info);

            if (s.EnableHealthKits && (name.Contains("healing") || name.Contains("health") || (!name.Contains("stamina") && !name.Contains("mana"))))
                healthPerTick = (float)perTick;

            if (s.EnableStaminaKits && (name.Contains("stamina") || name.Contains("stam")))
                staminaPerTick = (float)perTick;

            if (s.EnableManaKits && name.Contains("mana"))
                manaPerTick = (float)perTick;

            if (healthPerTick <= 0 && staminaPerTick <= 0 && manaPerTick <= 0)
            {
                ModManager.Log("[QOL Swiftmend] ApplyHot: all per-tick values are 0, aborting.", ModManager.LogLevel.Info);
                return;
            }

            double tickSeconds = s.HotTickSeconds;
            if (tickSeconds <= 0.0)
                tickSeconds = 1.0;
            int totalTicks = Math.Max(1, (int)Math.Round(s.HotDurationSeconds / tickSeconds));

            uint id = player.Guid.Full;

            ActiveHots.AddOrUpdate(id,
                _ => new SwiftmendHotState
                {
                    HealthPerTick = healthPerTick,
                    StaminaPerTick = staminaPerTick,
                    ManaPerTick = manaPerTick,
                    RemainingTicks = totalTicks
                },
                (_, state) =>
                {
                    state.HealthPerTick = healthPerTick;
                    state.StaminaPerTick = staminaPerTick;
                    state.ManaPerTick = manaPerTick;
                    state.RemainingTicks = totalTicks;
                    return state;
                });

            if (!TickRunning.ContainsKey(id))
                StartTickChain(player, s);

            ModManager.Log($"[QOL Swiftmend] ApplyHot: started/updated HoT for player {player.Name} (hp={healthPerTick}, sp={staminaPerTick}, mp={manaPerTick}, ticks={totalTicks}).", ModManager.LogLevel.Info);

            if (s.EnableDebugMessages)
            {
                float totalHealth = healthPerTick * totalTicks;
                float totalStamina = staminaPerTick * totalTicks;
                float totalMana = manaPerTick * totalTicks;
                player.SendMessage($"[QOL Swiftmend Debug] HoT applied: +{totalHealth:F1} health, +{totalStamina:F1} stamina, +{totalMana:F1} mana over {totalTicks} ticks.", ChatMessageType.Broadcast);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL Swiftmend] ApplySwiftmendHot error: {ex}", ModManager.LogLevel.Error);
        }
    }

    static void StartTickChain(Player player, SwiftmendSettings s)
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

    static void TickOnce(Player player, SwiftmendSettings s)
    {
        if (player == null)
            return;

        uint id = player.Guid.Full;

        if (!ActiveHots.TryGetValue(id, out SwiftmendHotState? state) || state == null)
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

internal sealed class SwiftmendHotState
{
    public float HealthPerTick { get; set; }

    public float StaminaPerTick { get; set; }

    public float ManaPerTick { get; set; }

    public int RemainingTicks { get; set; }
}
