using System.Linq;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

// Routes proc/echo/cleave spell copies through the same mana + skill + component path as normal player casts
// (GetCastingPreCheckStatus, CalculateManaUsage, DoCastSpell_Inner) instead of TryCastSpell (free).
internal static class BssPlayerPaidSpellCast
{
    public static bool TryCastWithPlayerMana(Player player, Spell spell, WorldObject target, bool finishCast = false)
    {
        if (player == null || spell._spell == null || target == null)
            return false;

        // Prevent recursive re-entry into HandleCastSpell patches (cleave/echo/summon)
        // that would cause stack overflow when DoCastSpell_Inner → CreatePlayerSpell → HandleCastSpell
        bool wasInAutoCast = BssAutoCaster.IsInAutoCast;
        BssAutoCaster.IsInAutoCast = true;
        try
        {
            if (player.PhysicsObj?.Position == null)
                return false;

            // DoCastSpell_Inner compares StartPos vs current position; procs are not real windups — pin so we do not fizzle.
            player.StartPos = new ACE.Server.Physics.Common.Position(player.PhysicsObj.Position);

            var magicSkillRow = player.GetCreatureSkill(spell.School);
            if (magicSkillRow == null)
                return false;

            uint magicSkill = magicSkillRow.Current;
            Player.CastingPreCheckStatus status = player.GetCastingPreCheckStatus(spell, magicSkill, isWeaponSpell: false);

            uint manaUsed = 0;
            if (status == Player.CastingPreCheckStatus.Success)
                manaUsed = player.CalculateManaUsage(player, spell, target);
            else if (status == Player.CastingPreCheckStatus.CastFailed)
                manaUsed = 5;

            if (manaUsed > player.Mana.Current)
            {
                player.SendUseDoneEvent(WeenieError.YouDontHaveEnoughManaToCast);
                return false;
            }

            // ACE CalculateManaUsage() always reports Mana Conversion proficiency use, but
            // MagicWithoutMC intentionally supports players with no trained MC row.
            if (player.GetCreatureSkill(Skill.ManaConversion) is CreatureSkill manaConversionSkill)
                Proficiency.OnSuccessUse(player, manaConversionSkill, spell.PowerMod);

            player.DoCastSpell_Inner(spell, casterItem: null, manaUsed, target, status, finishCast);
            return true;
        }
        finally
        {
            BssAutoCaster.IsInAutoCast = wasInAutoCast;
        }
    }

    // Mirrors WorldObject.TryCastSpell_WithRedirects for Creature targets with NonComponentTargetType item redirects.
    public static bool TryCastSpellWithRedirects_PlayerMana(Player player, Spell spell, WorldObject target)
    {
        if (target is Creature creatureTarget)
        {
            List<WorldObject>? redirectTargets = GetEquippedRedirectTargets(spell, creatureTarget);
            if (redirectTargets != null)
            {
                foreach (WorldObject itemTarget in redirectTargets)
                    TryCastWithPlayerMana(player, spell, itemTarget, finishCast: false);

                return redirectTargets.Count > 0;
            }
        }

        return TryCastWithPlayerMana(player, spell, target, finishCast: false);
    }

    static List<WorldObject>? GetEquippedRedirectTargets(Spell spell, Creature target)
    {
        switch (spell.NonComponentTargetType)
        {
            case ItemType.Vestements:
            case ItemType.Weapon:
            case ItemType.LockableMagicTarget:
            case ItemType.Caster:
            case ItemType.WeaponOrCaster:
            case ItemType.Item:
                return target.EquippedObjects.Values
                    .Where(i => (i.ItemType & spell.NonComponentTargetType) != 0
                        && (i.ValidLocations & EquipMask.Selectable) != 0
                        && i.IsEnchantable)
                    .ToList();
            default:
                return null;
        }
    }
}
