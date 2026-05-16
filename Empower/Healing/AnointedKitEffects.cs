using ACE.Entity.Enum;
using ACE.Server.Physics.Animation;

namespace Empower.Healing;

/// <summary>
/// Runtime perk effects that fire during healing kit use.
/// Patches Healer methods to apply Anointed Kit perks.
/// </summary>
internal static class AnointedKitEffects
{

    // ======================================================================
    // AUTO-SELF: All Anointed kits are Food-type (18) to bypass targeting reticle
    // ======================================================================
    // Food.OnActivate fires on double-click from inventory. We intercept it to
    // apply Healer-style skill-based healing (not flat Food boost).
    //
    // This replaces the old Healer.HandleActionUseOnTarget + HandleActionUseWithTarget
    // patches. The perks patch into the same flow below.

    /// <summary>
    /// Prefix on Food.OnActivate. When the item is our Anointed kit (WCID 900000),
    /// apply Healer-style healing (skill check, HealkitMod, critical chance, perks)
    /// instead of the flat Food boost.
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.OnActivate), new Type[] { typeof(WorldObject) })]
    public static bool PreFoodOnActivate(WorldObject activator, WorldObject __instance)
    {
        if (activator is not Player player) return true;
        if (__instance.WeenieClassId != 900000) return true;

        // Healer-style self-healing
        if (__instance is Food food)
            ApplyKitHealing(player, food);
        return false; // Skip original WorldObject.OnActivate
    }

    /// <summary>
    /// Applies Healer-style self-healing from an Anointed kit.
    /// </summary>
    private static void ApplyKitHealing(Player player, Food kit)
    {
        try
        {
            // Anti-spam: check cooldown
            if (player.IsBusy || player.Teleporting)
            {
                player.SendUseDoneEvent(WeenieError.YoureTooBusy);
                return;
            }

            // Get kit's healing stats
            int boostValue = kit.BoostValue;
            double healkitMod = kit.HealkitMod ?? 1.0;

            // Skill check
            var healingSkill = player.GetCreatureSkill(Skill.Healing);
            if (healingSkill.AdvancementClass < SkillAdvancementClass.Trained)
            {
                player.SendMessage("You are not trained in Healing!", ChatMessageType.Broadcast);
                player.SendUseDoneEvent();
                return;
            }

            var trainedMod = healingSkill.AdvancementClass == SkillAdvancementClass.Specialized ? 1.5f : 1.1f;
            var combatMod = player.CombatMode == CombatMode.NonCombat ? 1.0f : 1.1f;

            var vital = player.GetCreatureVital(kit.BoosterEnum);
            if (vital == null) return;
            var missingVital = vital.Missing;
            if (missingVital <= 0)
            {
                player.SendMessage($"Your {kit.BoosterEnum} is already full!", ChatMessageType.Broadcast);
                player.SendUseDoneEvent();
                return;
            }

            var effectiveSkill = (int)Math.Round((healingSkill.Current + boostValue) * trainedMod);
            var difficulty = (int)Math.Round(missingVital * 2 * combatMod);
            var skillCheck = SkillCheck.GetSkillChance(effectiveSkill, difficulty);
            bool success = skillCheck > ThreadSafeRandom.Next(0.0f, 1.0f);

            if (!success)
            {
                player.SendMessage("You fail to heal yourself.", ChatMessageType.Broadcast);
                player.SendUseDoneEvent();
                return;
            }

            // Heal amount
            var healBase = healingSkill.Current * (float)healkitMod;
            var healAmount = ThreadSafeRandom.Next(healBase * 0.2f, healBase * 0.5f);

            // Critical heal
            bool critical = ThreadSafeRandom.Next(0.0f, 1.0f) < 0.1f;
            if (critical) healAmount *= 2;
            if (healAmount > missingVital) healAmount = missingVital;

            // Stamina cost
            uint staminaCost = (uint)Math.Round(healAmount / 5.0f);
            if (staminaCost > player.Stamina.Current)
            {
                staminaCost = player.Stamina.Current;
                healAmount = staminaCost * 5;
            }

            // Efficiency perk
            if (IsAnointedKit(kit) && HasPerk(kit, AnointedPerk.Efficiency))
            {
                double reduction = kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Efficiency) ?? 0.0;
                if (reduction > 0)
                    staminaCost = Math.Max(1u, (uint)(staminaCost * (1.0 - reduction)));
            }

            // Critical Surge perk
            if (IsAnointedKit(kit) && HasPerk(kit, AnointedPerk.CriticalSurge) && !critical)
            {
                double bonusChance = kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_CriticalSurge) ?? 0.0;
                if (bonusChance > 0 && ThreadSafeRandom.Next(0.0f, 1.0f) < bonusChance)
                    critical = true;
            }

            // Start healing animation + action chain
            var motionCommand = MotionCommand.SkillHealSelf;
            var currentStance = player.CurrentMotionState.Stance;
            var animLength = MotionTable.GetAnimationLength(player.MotionTableId, currentStance, motionCommand);

            player.IsBusy = true;
            var actionChain = new ActionChain();
            actionChain.AddAction(player, () => player.SendMotionAsCommands(motionCommand, currentStance));
            actionChain.AddDelaySeconds(animLength);

            // Capture values for the closure
            var capturedHealAmount = (int)healAmount;
            var capturedStaminaCost = (int)staminaCost;
            var capturedCritical = critical;

            actionChain.AddAction(player, () =>
            {
                try
                {
                    // Apply stamina cost
                    player.UpdateVitalDelta(player.Stamina, -capturedStaminaCost);

                    // Apply healing
                    var actualHeal = (uint)player.UpdateVitalDelta(vital, capturedHealAmount);
                    player.DamageHistory.OnHeal(actualHeal);

                    var critStr = capturedCritical ? "expertly " : "";
                    player.SendMessage($"You {critStr}heal yourself for {actualHeal} {kit.BoosterEnum} points.", ChatMessageType.Broadcast);

                    // Apply perks
                    if (IsAnointedKit(kit))
                        ApplyAnointedPerks(player, player, kit, kit.BoosterEnum, capturedHealAmount, missingVital);

                    // Proficiency gain
                    Proficiency.OnSuccessUse(player, healingSkill, difficulty);
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[Empower] Healing action error: {ex.Message}", ModManager.LogLevel.Error);
                }
                finally
                {
                    player.IsBusy = false;
                    player.SendUseDoneEvent();
                }
            });

            actionChain.EnqueueChain();
            player.NextUseTime = DateTime.UtcNow.AddSeconds(animLength);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Empower] ApplyKitHealing error: {ex.Message}", ModManager.LogLevel.Error);
            if (player.IsBusy)
            {
                player.IsBusy = false;
                player.SendUseDoneEvent();
            }
        }
    }

    /// <summary>
    /// Applies Anointed kit perks after a successful heal.
    /// Called from ApplyKitHealing (Food path).
    /// </summary>
    private static void ApplyAnointedPerks(Player healer, Player target, WorldObject kit, PropertyAttribute2nd boosterEnum, int healAmount, uint missingVital)
    {
        if (!IsAnointedKit(kit)) return;

        // Omni-Heal
        if (HasPerk(kit, AnointedPerk.OmniHeal))
        {
            double splashPct = kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_OmniHeal) ?? 0.2;
            ApplyOmniHeal(healer, target, kit, boosterEnum, splashPct);
        }

        // Regeneration
        if (HasPerk(kit, AnointedPerk.Regeneration))
        {
            double hotPct = kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Regeneration) ?? 0.5;
            StartRegenerationHot(healer, kit, hotPct, boosterEnum);
        }

        // Cleansing
        if (HasPerk(kit, AnointedPerk.Cleansing))
        {
            double chance = kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Cleansing) ?? 0.2;
            TryCleanse(target, chance);
        }

        // Reactive Barrier
        if (HasPerk(kit, AnointedPerk.ReactiveBarrier))
        {
            int dr = (int)(kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_ReactiveBarrier) ?? 2);
            ApplyReactiveBarrier(healer, dr);
        }

        // Boon
        if (HasPerk(kit, AnointedPerk.Boon))
        {
            double percent = kit.GetProperty((PropertyFloat)AnointedKitPropertyIds.Value_Boon) ?? 0.1;
            ApplyBoon(healer, percent);
        }
    }


    // ======================================================================
    // OMNI-HEAL IMPLEMENTATION
    // ======================================================================

    private static void ApplyOmniHeal(Player healer, Player target, WorldObject kit, PropertyAttribute2nd primaryVital, double splashPct)
    {
        // Determine which vitals to splash to based on the kit's BoosterEnum
        // BoosterEnum uses Health(2), Stamina(4), Mana(6) — NOT MaxHealth(1)/MaxStamina(3)/MaxMana(5)
        var otherVitals = new List<CreatureVital>();
        var splashMessages = new List<string>();

        if (primaryVital != PropertyAttribute2nd.Health && target.Health.Current < target.Health.MaxValue)
        {
            int missing = (int)(target.Health.MaxValue - target.Health.Current);
            int splash = Math.Max(1, (int)(missing * splashPct));
            target.UpdateVitalDelta(target.Health, splash);
            splashMessages.Add($"Health +{splash}");
        }
        if (primaryVital != PropertyAttribute2nd.Stamina && target.Stamina.Current < target.Stamina.MaxValue)
        {
            int missing = (int)(target.Stamina.MaxValue - target.Stamina.Current);
            int splash = Math.Max(1, (int)(missing * splashPct));
            target.UpdateVitalDelta(target.Stamina, splash);
            splashMessages.Add($"Stamina +{splash}");
        }
        if (primaryVital != PropertyAttribute2nd.Mana && target.Mana.Current < target.Mana.MaxValue)
        {
            int missing = (int)(target.Mana.MaxValue - target.Mana.Current);
            int splash = Math.Max(1, (int)(missing * splashPct));
            target.UpdateVitalDelta(target.Mana, splash);
            splashMessages.Add($"Mana +{splash}");
        }

        if (splashMessages.Count > 0)
            healer.SendMessage($"Your Anointed Kit splashes: {string.Join(", ", splashMessages)}", ChatMessageType.Broadcast);
    }

    // ======================================================================
    // REGENERATION HOT
    // ======================================================================

    private static readonly ConcurrentDictionary<uint, RegenerationState> _activeHots = new();

    private static void StartRegenerationHot(Player player, WorldObject kit, double totalHotPct, PropertyAttribute2nd boosterEnum)
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
            BoosterEnum = boosterEnum,
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

        // If player logged out (null session), clean up and stop the chain
        if (player.Session == null)
        {
            _activeHots.TryRemove(id, out _);
            _hotTickRunning.TryRemove(id, out _);
            return;
        }

        if (!_activeHots.TryGetValue(id, out var state) || state == null)
        {
            _hotTickRunning.TryRemove(id, out _);
            return;
        }

        var heal = (int)Math.Round(state.HealPerTick);
        var vital = player.GetCreatureVital(state.BoosterEnum);
        if (heal > 0 && vital != null && vital.Current < vital.MaxValue)
            player.UpdateVitalDelta(vital, heal);

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
        public PropertyAttribute2nd BoosterEnum { get; set; }
    }

    // ======================================================================
    // CLEANSING
    // ======================================================================

    private static void TryCleanse(Player target, double chance)
    {
        if (ThreadSafeRandom.Next(0.0f, 1.0f) >= chance) return;

        try
        {
            // Count removable bad enchantments before cleansing
            var bio = target.Biota;
            if (bio?.PropertiesEnchantmentRegistry == null) return;

            var totalBefore = bio.PropertiesEnchantmentRegistry.Count;

            target.EnchantmentManager.RemoveAllBadEnchantments();

            var totalAfter = bio.PropertiesEnchantmentRegistry.Count;
            int removed = totalBefore - totalAfter;

            if (removed > 0)
                target.SendMessage($"Your Anointed Kit cleanses {removed} harmful effect(s)!", ChatMessageType.Broadcast);
        }
        catch { }
    }

    // ======================================================================
    // REACTIVE BARRIER
    // ======================================================================

    private static readonly ConcurrentDictionary<uint, int> _activeBarriers = new();

    private static void ApplyReactiveBarrier(Player player, int drRating)
    {
        uint id = player.Guid.Full;
        _activeBarriers[id] = drRating;

        // Schedule removal after 20 seconds
        var chain = new ActionChain();
        chain.AddDelaySeconds(20.0f);
        chain.AddAction(player, () => RemoveBarrier(player));
        chain.EnqueueChain();

        player.SendMessage($"Your Anointed Kit grants +{drRating} Damage Resistance for 20 seconds!", ChatMessageType.Broadcast);
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

    private static bool HasPerk(WorldObject kit, AnointedPerk perk)
    {
        uint prop = AnointedKitPropertyIds.PerkFlagProperty(perk);
        if (prop == 0) return false;
        return kit.GetProperty((PropertyBool)prop) ?? false;
    }

    private static bool IsAnointedKit(WorldObject kit)
    {
        var settings = S.Settings?.AnointedKits;
        return kit?.WeenieClassId == settings?.AnointedKitWcid;
    }
}