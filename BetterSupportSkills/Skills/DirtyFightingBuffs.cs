using System.Collections.Concurrent;
using System.Diagnostics;
using System.Linq;
using ACE.Entity;
using ACE.Server.Entity;
using ACE.Server.Entity.Actions;
using ACE.Server.Network;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.Structure;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.DirtyFightingSkill))]
internal static class DirtyFightingBuffs
{
    public static bool CustomSpellsLoaded { get; private set; }

    [Conditional("DEBUG")]
    private static void DebugLog(string msg)
    {
        ModManager.Log($"[BSS DF] {msg}", ModManager.LogLevel.Debug);
    }

    private static readonly int[] EnhancedDefenseDebuff = { 90000007, 90000008 };
    private static readonly int[] EnhancedAttackDebuff = { 90000009, 90000010 };
    private static readonly int[] EnhancedHealDebuff = { 90000011, 90000012 };
    private static readonly int[] EnhancedBleed = { 90000013, 90000014 };

    public static void OnPlayerLogin(Player player) { }
    public static void OnPlayerWorldOpen(Player player) { }

    public static bool PrefixPlayerEnterWorld(Player __instance)
    {
        CheckCustomSpells();
        return true;
    }

    // -- 100% Application Rate ------------------------------------------

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.FightDirty))]
    public static bool PrefixFightDirty(Creature __instance, WorldObject target, WorldObject weapon)
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableDirtyFighting != true)
            return true; // Let vanilla handle it

        var dirtySkill = __instance.GetCreatureSkill(Skill.DirtyFighting);
        if (dirtySkill.AdvancementClass < SkillAdvancementClass.Trained)
            return true;

        var creatureTarget = target as Creature;
        if (creatureTarget == null)
            return true;

        // Always apply based on attack height (100% rate)
        switch (__instance.AttackHeight)
        {
            case ACE.Entity.Enum.AttackHeight.Low:
                __instance.FightDirty_ApplyLowAttack(creatureTarget, weapon);
                break;
            case ACE.Entity.Enum.AttackHeight.Medium:
                __instance.FightDirty_ApplyMediumAttack(creatureTarget, weapon);
                break;
            case ACE.Entity.Enum.AttackHeight.High:
                __instance.FightDirty_ApplyHighAttack(creatureTarget, weapon);
                break;
        }

        return false; // Skip original chance-based logic
    }

    private static void CheckCustomSpells()
    {
        if (CustomSpellsLoaded) return;
        
        try
        {
            var assemblies = AppDomain.CurrentDomain.GetAssemblies();
            var customSpellsAsm = assemblies.FirstOrDefault(a => a.FullName?.StartsWith("CustomSpells") == true);
            
            if (customSpellsAsm != null)
            {
                var patchType = customSpellsAsm.GetType("CustomSpells.PatchClass");
                CustomSpellsLoaded = patchType != null;
            }
        }
        catch (Exception)
        {
            CustomSpellsLoaded = false;
        }
    }

    public static void PostfixFightDirty_ApplyLowAttack(Creature __instance, Creature target, WorldObject weapon)
    {
        if (!CustomSpellsLoaded)
            return;

        if (__instance is not Player player)
            return;

        var dfSkill = player.GetCreatureSkill(Skill.DirtyFighting);
        if (dfSkill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        var isSpecialized = dfSkill.AdvancementClass == SkillAdvancementClass.Specialized;
        var spellId = isSpecialized ? EnhancedDefenseDebuff[1] : EnhancedDefenseDebuff[0];

        ApplyCustomSpell(target, player, weapon, spellId);
    }

    public static void PostfixFightDirty_ApplyHighAttack(Creature __instance, Creature target, WorldObject weapon)
    {
        if (!CustomSpellsLoaded)
            return;

        if (__instance is not Player player)
            return;

        var dfSkill = player.GetCreatureSkill(Skill.DirtyFighting);
        if (dfSkill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        var isSpecialized = dfSkill.AdvancementClass == SkillAdvancementClass.Specialized;
        var spellId = isSpecialized ? EnhancedAttackDebuff[1] : EnhancedAttackDebuff[0];

        ApplyCustomSpell(target, player, weapon, spellId);
    }

    // Tracks last DF message per (target, spell) to suppress refresh spam
    static readonly ConcurrentDictionary<(uint TargetGuid, uint SpellId), DateTime> LastDfMessageTime = new();

    /// <summary>
    /// Prefix on FightDirty_SendMessage -- suppresses chat messages when the same debuff
    /// was messaged recently (indicating a duration refresh rather than a fresh application).
    /// </summary>
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.FightDirty_SendMessage))]
    public static bool PreFightDirtySendMessage(Creature target, Spell spell)
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableDirtyFighting != true)
            return true; // let vanilla handle when our mod is off

        if (spell == null)
            return true;

        var key = (target.Guid.Full, (uint)spell.Id);
        var now = DateTime.UtcNow;

        if (LastDfMessageTime.TryGetValue(key, out var last) && (now - last).TotalSeconds < 5.0)
            return false; // suppress — likely a refresh

        LastDfMessageTime[key] = now;
        return true; // allow fresh application message
    }

    public static void PostfixFightDirty_ApplyMediumAttack(Creature __instance, Creature target, WorldObject weapon)
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableDirtyFighting != true)
            return;

        if (__instance is not Player player)
            return;

        var dfSkill = player.GetCreatureSkill(Skill.DirtyFighting);
        if (dfSkill.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        if (CustomSpellsLoaded)
        {
            var isSpec = dfSkill.AdvancementClass == SkillAdvancementClass.Specialized;
            var spellId = isSpec ? EnhancedBleed[1] : EnhancedBleed[0];

            ApplyCustomSpell(target, player, weapon, spellId);
            return;
        }

        var dfSettings = settings.DirtyFighting;
        if (dfSettings == null)
            return;

        var isSpecBleed = dfSkill.AdvancementClass == SkillAdvancementClass.Specialized;
        double basePct = isSpecBleed ? dfSettings.BleedPercentSpecialized : dfSettings.BleedPercentTrained;

        if (target is Player targetPlayer)
            targetPlayer.SendMessage("You are bleeding profusely!");

        ApplyPercentageBleed(target, player, basePct);
    }

    private static void ApplyCustomSpell(Creature target, Player attacker, WorldObject weapon, int spellId)
    {
        try
        {
            var spell = new Spell((SpellId)spellId);
            if (spell.NotFound)
            {
                DebugLog("Custom spell " + spellId + " NOT FOUND");
                return;
            }

            var addResult = target.EnchantmentManager.Add(spell, attacker, weapon);

            // Rogue debuff amplification
            if (addResult.Enchantment != null && SummoningClasses.GetPlayerClass(attacker) == "Rogue")
            {
                var rogueMult = PatchClass.Settings?.CombatClasses?.Rogue?.DebuffMultiplier ?? 1.0;
                if (rogueMult > 1.0)
                {
                    addResult.Enchantment.StatModValue = (float)(addResult.Enchantment.StatModValue * rogueMult);
                }
            }

            if (target is Player playerTarget)
                playerTarget.Session.Network.EnqueueSend(new GameEventMagicUpdateEnchantment(playerTarget.Session, new Enchantment(playerTarget, addResult.Enchantment)));

            target.EnqueueBroadcast(new GameMessageScript(target.Guid, PlayScript.DirtyFightingDefenseDebuff));
        }
        catch (Exception ex)
        {
            DebugLog("Failed to apply custom spell " + spellId + ": " + ex.Message);
        }
    }

    private static void ApplyPercentageBleed(Creature target, Player attacker, double basePct)
    {
        var tickCount = 0;
        var maxTicks = 30;

        void Tick()
        {
            if (target.IsDead)
                return;

            tickCount++;
            int tier;
            if (tickCount <= 5)
                tier = 1;
            else if (tickCount <= 10)
                tier = 2;
            else
                tier = 3;

            var percentPerTick = basePct * tier;
            var damage = (float)(target.Health.MaxValue * percentPerTick);

            target.TakeDamage(attacker, DamageType.Slash, damage);

            target.EnqueueBroadcast(new GameMessageScript(target.Guid, PlayScript.DirtyFightingDamageOverTime));

            if (tickCount < maxTicks)
            {
                var chain = new ActionChain();
                chain.AddDelaySeconds(1.0);
                chain.AddAction(target, Tick);
                chain.EnqueueChain();
            }
        }

        var chain = new ActionChain();
        chain.AddDelaySeconds(1.0);
        chain.AddAction(target, Tick);
        chain.EnqueueChain();
    }
}
