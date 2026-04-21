using System.Collections.Concurrent;
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
    private const bool EnableDebug = false;

    private static void DebugLog(string msg)
    {
        if (EnableDebug)
            ModManager.Log($"[BSS DF] {msg}", ModManager.LogLevel.Info);
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

    private static void CheckCustomSpells()
    {
        if (CustomSpellsLoaded) return;
        
        try
        {
            var assemblies = AppDomain.CurrentDomain.GetAssemblies();
            var customSpellsAsm = assemblies.FirstOrDefault(a => a.FullName.StartsWith("CustomSpells"));
            
            if (customSpellsAsm != null)
            {
                var patchType = customSpellsAsm.GetType("CustomSpells.PatchClass");
                CustomSpellsLoaded = patchType != null;
            }
        }
        catch (Exception ex)
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