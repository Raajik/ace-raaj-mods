using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.MagicWithoutMcSkill))]
internal static class MagicWithoutManaConversion
{
    [ThreadStatic]
    static bool _inBssEcho;

    [ThreadStatic]
    static bool _isInMagicWithoutMcCast;

    public static bool PrefixPlayerEnterWorld(Player __instance)
    {
        TryApplyWeaveBuffs(__instance);
        return true;
    }

    static void TryApplyWeaveBuffs(Player player)
    {
        if (PatchClass.Settings is not { EnableMagicWithoutManaConversion: true } s)
            return;

        var manaConversion = player.GetCreatureSkill(Skill.ManaConversion);
        if (manaConversion != null && manaConversion.AdvancementClass >= SkillAdvancementClass.Trained)
            return;

        MagicWithoutManaConversionSettings m = s.MagicWithoutManaConversion;
        int stacks = Math.Clamp(m.WeaveStacksForPlus50, 0, 20);

        var ce = player.GetCreatureSkill(Skill.CreatureEnchantment);
        var ie = player.GetCreatureSkill(Skill.ItemEnchantment);
        if (ce == null || ie == null ||
            ce.AdvancementClass < SkillAdvancementClass.Trained ||
            ie.AdvancementClass < SkillAdvancementClass.Trained)
            return;

        for (int i = 0; i < stacks; i++)
        {
            if (m.CreatureEnchantmentWeaveSpellId > 0)
            {
                var sp = new Spell(m.CreatureEnchantmentWeaveSpellId);
                player.TryCastSpell(sp, player);
            }

            if (m.ItemEnchantmentWeaveSpellId > 0)
            {
                var sp = new Spell(m.ItemEnchantmentWeaveSpellId);
                player.TryCastSpell(sp, player);
            }
        }
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), "HandleCastSpell", new Type[] {
        typeof(Spell), typeof(WorldObject), typeof(WorldObject), typeof(WorldObject), typeof(bool), typeof(bool), typeof(bool) })]
    public static void PostHandleCastSpellEcho(Spell spell, WorldObject target, WorldObject? itemCaster, WorldObject? weapon,
        bool isWeaponSpell, bool fromProc, bool equip, WorldObject? __instance = null)
    {
        if (_isInMagicWithoutMcCast)
            return;

        if (_inBssEcho || __instance is not Player player)
            return;

        if (spell == null)
            return;

        _isInMagicWithoutMcCast = true;
        try
        {
            if (PatchClass.Settings is not { EnableMagicWithoutManaConversion: true } s)
                return;

            var mcSkill = player.GetCreatureSkill(Skill.ManaConversion);
            if (mcSkill != null && mcSkill.AdvancementClass >= SkillAdvancementClass.Trained)
                return;

            if (!spell.IsHarmful || target == null)
                return;

            MagicWithoutManaConversionSettings m = s.MagicWithoutManaConversion;

            _inBssEcho = true;
            try
            {
                if (m.EchoWarVoidHarmful && IsWarOrVoid(spell))
                {
                    BssPlayerPaidSpellCast.TryCastSpellWithRedirects_PlayerMana(player, spell, target);
                    return;
                }

                if (m.TripleLifeHarmful && IsLife(spell))
                {
                    BssPlayerPaidSpellCast.TryCastSpellWithRedirects_PlayerMana(player, spell, target);
                    BssPlayerPaidSpellCast.TryCastSpellWithRedirects_PlayerMana(player, spell, target);
                }
            }
            finally
            {
                _inBssEcho = false;
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[BSS MagicWithoutMC] PostHandleCastSpellEcho error: {ex.Message}", ModManager.LogLevel.Warn);
        }
        finally
        {
            _isInMagicWithoutMcCast = false;
        }
    }

    static bool IsWarOrVoid(Spell spell)
    {
        return spell.School == MagicSchool.WarMagic || spell.School == MagicSchool.VoidMagic;
    }

    static bool IsLife(Spell spell)
    {
        return spell.School == MagicSchool.LifeMagic;
    }
}
