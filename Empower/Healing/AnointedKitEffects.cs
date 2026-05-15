using ACE.Entity.Enum;

namespace Empower.Healing;

/// <summary>
/// Runtime perk effects that fire during healing kit use.
/// Patches Healer methods to apply Anointed Kit perks.
/// </summary>
internal static class AnointedKitEffects
{

    // ======================================================================
    // AUTO-SELF: Intercept ground-use to heal self in one click
    // ======================================================================
    //
    // Approach: Prefix on Player.HandleActionUseItem. When the item is a
    // Healer (healing kit) with Auto-Self perk, set a ThreadStatic redirect
    // flag. Then in our HandleActionUseOnTarget prefix, if the flag is set
    // and target == null, assume self-target.
    //
    // The tricky part: HandleActionUseItem opens the targeting reticle for
    // targetable items. We need to skip that and go straight to self-heal.
    // We do this by setting a flag and then calling the use-on-self logic.
    //
    // ======================================================================

    /// <summary>
    /// Prefix on Player.HandleActionUseItem. When a Healer item with Auto-Self
    /// is used, directly call HandleActionUseOnTarget with self as target.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Player), nameof(Player.HandleActionUseItem), new Type[] { typeof(WorldObject) })]
    public static bool PreHandleActionUseItem(WorldObject item, Player __instance)
    {
        if (item is not Healer healerKit)
            return true; // Not a healing kit, normal flow

        if (!HasPerk(healerKit, AnointedPerk.AutoSelf))
            return true; // No Auto-Self, normal targeting reticle

        // Redirect: directly heal self
        __instance.HandleActionUseOnTarget(__instance, __instance);
        return false; // Skip original (would open reticle)
    }

    // ======================================================================
    // HEALING PERKS — applied after the heal resolves
    // ======================================================================

    /// <summary>
    /// Postfix on Healer.DoHealing — applies all non-trivial perk effects.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Healer), nameof(Healer.DoHealing))]
    public static void PostDoHealing(Healer __instance, Player healer, Player target, uint missingVital)
    {
        if (healer == null || target == null) return;
        Healer kit = __instance;

        var settings = S.Settings?.AnointedKits;
        if (settings == null || !(S.Settings?.EnableAnointedHealingKits ?? false)) return;

        // Only apply to Anointed kits (check for our property)
        bool isAnointed = IsAnointedKit(kit);
        if (!isAnointed) return;

        int tier = Math.Clamp((kit.GetProperty((PropertyInt)AnointedKitPropertyIds.KitTier) ?? 1) - 1, 0, 7);

        // 1. Efficiency — already applied in GetHealAmount via prefix
        // 2. Critical Surge — already applied in GetHealAmount via prefix

        // 3. Omni-Heal: splash to other vitals
        if (HasPerk(kit, AnointedPerk.OmniHeal))
        {
            double splashPct = kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_OmniHeal) ?? 0.2;
            ApplyOmniHeal(healer, target, kit, splashPct);
        }

        // 4. Regeneration: start HoT
        if (HasPerk(kit, AnointedPerk.Regeneration))
        {
            double hotPct = kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Regeneration) ?? 0.5;
            StartRegenerationHot(healer, kit, hotPct);
        }

        // 5. Cleansing: chance to dispel one debuff
        if (HasPerk(kit, AnointedPerk.Cleansing))
        {
            double chance = kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Cleansing) ?? 0.2;
            TryCleanse(target, chance);
        }

        // 6. Reactive Barrier: grant DR rating for 5s
        if (HasPerk(kit, AnointedPerk.ReactiveBarrier))
        {
            int dr = (int)(kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_ReactiveBarrier) ?? 2);
            ApplyReactiveBarrier(healer, dr);
        }

        // 7. Boon: buff Healing skill for 10s
        if (HasPerk(kit, AnointedPerk.Boon))
        {
            double percent = kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Boon) ?? 0.1;
            ApplyBoon(healer, percent);
        }
    }

    // ======================================================================
    // EFFICIENCY PREFIX — reduce stamina cost during heal amount calc
    // ======================================================================

    /// <summary>
    /// Prefix on Healer.GetHealAmount — modifies stamina cost for Efficiency perk.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Healer), nameof(Healer.GetHealAmount))]
    public static void PreGetHealAmount(Healer __instance, ref uint staminaCost)
    {
        if (__instance == null) return;
        if (!HasPerk(__instance, AnointedPerk.Efficiency)) return;

        double reduction = __instance.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Efficiency) ?? 0.0;
        if (reduction <= 0) return;

        // staminaCost is set inside GetHealAmount, not an input param.
        // We can't modify it via prefix because it's computed inside the method.
        // Instead, we'll postfix it.
    }

    /// <summary>
    /// Postfix on Healer.GetHealAmount — applies Efficiency stamina reduction.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Healer), nameof(Healer.GetHealAmount))]
    public static void PostGetHealAmount(Healer __instance, ref uint staminaCost)
    {
        if (__instance == null) return;
        if (!HasPerk(__instance, AnointedPerk.Efficiency)) return;

        double reduction = __instance.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Efficiency) ?? 0.0;
        if (reduction <= 0) return;

        uint saved = (uint)(staminaCost * (1.0 - reduction));
        staminaCost = Math.Max(1u, saved); // Always cost at least 1 stamina
    }

    // ======================================================================
    // CRITICAL SURGE — modify crit chance in GetHealAmount
    // ======================================================================

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Healer), nameof(Healer.GetHealAmount))]
    public static void PreGetHealAmountCrit(Healer __instance, ref bool criticalHeal)
    {
        // This is too early — the actual crit roll happens inside GetHealAmount.
        // We need to re-roll after the fact.
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Healer), nameof(Healer.GetHealAmount))]
    public static void PostGetHealAmountCrit(Healer __instance, Player healer, Player target, uint missingVital, ref bool criticalHeal, ref uint staminaCost)
    {
        if (__instance == null) return;
        if (!HasPerk(__instance, AnointedPerk.CriticalSurge)) return;

        // If already a crit from the vanilla 10% check, leave it.
        if (criticalHeal) return;

        double bonusChance = __instance.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_CriticalSurge) ?? 0.0;
        if (bonusChance <= 0) return;

        if (ThreadSafeRandom.Next(0.0f, 1.0f) < bonusChance)
            criticalHeal = true;
    }

    // ======================================================================
    // OMNI-HEAL IMPLEMENTATION
    // ======================================================================

    private static void ApplyOmniHeal(Player healer, Player target, Healer kit, double splashPct)
    {
        // Determine which vitals to splash to based on the kit's BoosterEnum
        var primaryVital = kit.BoosterEnum;
        var otherVitals = new List<CreatureVital>();

        if (primaryVital != PropertyAttribute2nd.MaxHealth && target.Health.Current < target.Health.MaxValue)
            otherVitals.Add(target.Health);
        if (primaryVital != PropertyAttribute2nd.MaxStamina && target.Stamina.Current < target.Stamina.MaxValue)
            otherVitals.Add(target.Stamina);
        if (primaryVital != PropertyAttribute2nd.MaxMana && target.Mana.Current < target.Mana.MaxValue)
            otherVitals.Add(target.Mana);

        foreach (var vital in otherVitals)
        {
            int missing = (int)(vital.MaxValue - vital.Current);
            int splash = Math.Max(1, (int)(missing * splashPct));
            target.UpdateVitalDelta(vital, splash);
        }

        healer.SendMessage($"Your Anointed Kit splashes {otherVitals.Count} other vital(s) for bonus healing.", ChatMessageType.Broadcast);
    }

    // ======================================================================
    // REGENERATION HOT
    // ======================================================================

    private static readonly ConcurrentDictionary<uint, RegenerationState> _activeHots = new();

    private static void StartRegenerationHot(Player player, Healer kit, double totalHotPct)
    {
        if (player.IsDead || player == null) return;

        double hotDurationSeconds = 15.0;
        double tickSeconds = 1.0;
        int totalTicks = (int)(hotDurationSeconds / tickSeconds);
        double healPerTickFraction = totalHotPct / totalTicks;

        // Calculate the actual heal amount that was just done by inspecting missing vital delta
        // For simplicity, we base it on the kit's HealkitMod and the player's healing skill
        var healingSkill = player.GetCreatureSkill(Skill.Healing);
        double healPerTick = healingSkill.Current * (kit.HealkitMod ?? 1.0) * healPerTickFraction;

        uint id = player.Guid.Full;
        _activeHots[id] = new RegenerationState
        {
            HealPerTick = (float)healPerTick,
            RemainingTicks = totalTicks,
        };

        if (!_hotTickRunning.ContainsKey(id))
            StartHotTickChain(player);
    }

    private static readonly ConcurrentDictionary<uint, bool> _hotTickRunning = new();

    private static void StartHotTickChain(Player player)
    {
        uint id = player.Guid.Full;
        if (!_activeHots.ContainsKey(id)) return;

        _hotTickRunning[id] = true;

        var chain = new ActionChain();
        chain.AddDelaySeconds(1.0f);
        chain.AddAction(player, () => TickHotOnce(player));
        chain.EnqueueChain();
    }

    private static void TickHotOnce(Player player)
    {
        if (player == null || player.IsDead) return;

        uint id = player.Guid.Full;
        if (!_activeHots.TryGetValue(id, out var state) || state == null)
        {
            _hotTickRunning.TryRemove(id, out _);
            return;
        }

        var heal = (int)Math.Round(state.HealPerTick);
        if (heal > 0 && player.Health.Current < player.Health.MaxValue)
            player.UpdateVitalDelta(player.Health, heal);

        state.RemainingTicks--;
        if (state.RemainingTicks <= 0)
        {
            _activeHots.TryRemove(id, out _);
            _hotTickRunning.TryRemove(id, out _);
            return;
        }

        var chain = new ActionChain();
        chain.AddDelaySeconds(1.0f);
        chain.AddAction(player, () => TickHotOnce(player));
        chain.EnqueueChain();
    }

    private sealed class RegenerationState
    {
        public float HealPerTick { get; set; }
        public int RemainingTicks { get; set; }
    }

    // ======================================================================
    // CLEANSING
    // ======================================================================

    private static void TryCleanse(Player target, double chance)
    {
        if (ThreadSafeRandom.Next(0.0f, 1.0f) >= chance) return;

        // Remove all negative enchantments
        if (target.EnchantmentManager is { } em)
        {
            em.RemoveAllBadEnchantments();
            target.SendMessage("Your Anointed Kit cleanses a harmful effect!", ChatMessageType.Broadcast);
        }
    }

    // ======================================================================
    // REACTIVE BARRIER
    // ======================================================================

    private static readonly ConcurrentDictionary<uint, int> _activeBarriers = new();

    private static void ApplyReactiveBarrier(Player player, int drRating)
    {
        uint id = player.Guid.Full;
        _activeBarriers[id] = drRating;

        // Schedule removal after 5 seconds
        var chain = new ActionChain();
        chain.AddDelaySeconds(5.0f);
        chain.AddAction(player, () => RemoveBarrier(player));
        chain.EnqueueChain();

        player.SendMessage($"Your Anointed Kit grants +{drRating} Damage Resistance for 5 seconds!", ChatMessageType.Broadcast);
    }

    private static void RemoveBarrier(Player player)
    {
        if (player == null) return;
        _activeBarriers.TryRemove(player.Guid.Full, out _);
    }

    /// <summary>
    /// Postfix on Creature.GetDamageResistRating — applies Reactive Barrier DR.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GetDamageResistRating), new Type[] { typeof(CombatType?), typeof(bool) })]
    public static void PostGetDamageResistRating(Creature __instance, ref int __result)
    {
        if (__instance is not Player player) return;
        if (_activeBarriers.TryGetValue(player.Guid.Full, out int dr) && dr > 0)
            __result += dr;
    }

    // ======================================================================
    // BOON — Healing skill buff
    // ======================================================================

    private static void ApplyBoon(Player player, double percent)
    {
        // Grant a temporary buff to Healing skill by setting a fake property
        // that a skill postfix can read
        uint id = player.Guid.Full;
        _boonValues[id] = percent;

        var chain = new ActionChain();
        chain.AddDelaySeconds(10.0f);
        chain.AddAction(player, () => RemoveBoon(player));
        chain.EnqueueChain();

        int percentInt = (int)(percent * 100);
        player.SendMessage($"Your Anointed Kit grants +{percentInt}% to your Healing skill for 10 seconds!", ChatMessageType.Broadcast);
    }

    private static readonly ConcurrentDictionary<uint, double> _boonValues = new();

    private static void RemoveBoon(Player player)
    {
        if (player == null) return;
        _boonValues.TryRemove(player.Guid.Full, out _);
    }

    /// <summary>
    /// Postfix on CreatureSkill.Current getter — adds Boon bonus to Healing skill.
    /// </summary>
    [HarmonyPostfix]
    [HarmonyPatch(typeof(CreatureSkill), nameof(CreatureSkill.Current), MethodType.Getter)]
    public static void PostCreatureSkillCurrent(CreatureSkill __instance, ref uint __result)
    {
        if (__instance.Skill != Skill.Healing) return;
        var creature = Traverse.Create(__instance).Field<Creature>("creature").Value;
        if (creature is not Player player) return;

        if (_boonValues.TryGetValue(player.Guid.Full, out double percent) && percent > 0)
        {
            uint bonus = (uint)(__result * percent);
            __result += bonus;
        }
    }

    // ======================================================================
    // UTILITY
    // ======================================================================

    private static bool HasPerk(Healer kit, AnointedPerk perk)
    {
        uint prop = AnointedKitPropertyIds.PerkFlagProperty(perk);
        if (prop == 0) return false;
        return kit.GetProperty((PropertyBool)prop) ?? false;
    }

    private static bool IsAnointedKit(Healer kit)
    {
        // Check for any of our perk flags
        foreach (uint flag in AnointedKitPropertyIds.AllPerkFlags)
        {
            if (kit.GetProperty((PropertyBool)flag) ?? false)
                return true;
        }
        return false;
    }
}