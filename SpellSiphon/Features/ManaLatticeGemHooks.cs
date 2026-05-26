using ACE.Server.Entity;
using ACE.Server.Network.GameMessages.Messages;
using ACE.Server.WorldObjects;
using Spellsiphon.Helpers;

namespace Spellsiphon.Features;

/// <summary>
/// Fixes Mana Lattice activation by intercepting Gem.UseGem.
/// Vanilla Gem.UseGem only casts SpellDID; Mana Lattice stores spells in PropertiesSpellBook.
/// This postfix casts every spell in the spellbook when a Mana Lattice is used.
/// </summary>
internal static class ManaLatticeGemHooks
{
    internal static void PostUseGem(Player player, WorldObject __instance)
    {
        Settings? s = PatchClass.Settings;
        if (s == null || !s.Enabled)
            return;

        if (__instance.WeenieClassId != s.ManaLatticeWcid)
            return;

        List<int> spellIds = ItemSpellIds.Read(__instance);
        if (spellIds.Count == 0)
        {
            player.SendMessage("[Spellsiphon] This Mana Lattice holds no spells.");
            return;
        }

        int castCount = 0;
        foreach (int spellId in spellIds)
        {
            try
            {
                var spell = new ACE.Server.Entity.Spell(spellId);
                if (spell == null || spell.Id == 0)
                    continue;

                // Mirror vanilla Gem.UseGem casting logic
                if (spell.IsImpenBaneType || spell.IsItemRedirectableType)
                    player.TryCastItemEnchantment_WithRedirects(spell, player, __instance);
                else
                    player.TryCastSpell(spell, player, __instance, tryResist: false);

                castCount++;
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Spellsiphon] ManaLattice cast error for spell {spellId}: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        if (castCount > 0)
        {
            bool isEndless = (__instance.GetProperty((PropertyBool)ItemPayload.IsEndlessManaLatticeProp) ?? false)
                || __instance.Name?.Contains("Endless Mana Lattice", StringComparison.OrdinalIgnoreCase) == true;

            string label = isEndless ? "Endless Mana Lattice" : "Mana Lattice";
            player.SendMessage($"[Spellsiphon] The {label} pulses with {castCount} spell(s).");
        }
    }

}
