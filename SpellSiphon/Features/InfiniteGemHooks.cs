namespace SpellSiphon.Features;

using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.WorldObjects;
using HarmonyLib;

/// <summary>
/// Makes ALL gems with spells infinite-use (not consumed on activation).
/// Prefix on Gem.UseGem sets UnlimitedUse = true for spell-bearing gems
/// before vanilla consumption logic runs.
/// Gems cast via WorldObject.TryCastSpell which has no mana cost —
/// so this also gives them "no mana cost" behavior.
/// </summary>
[HarmonyPatch]
internal static class InfiniteGemHooks
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Gem), nameof(Gem.UseGem), new Type[] { typeof(Player) })]
    public static void PreUseGem(Player player, Gem __instance)
    {
        if (__instance == null)
            return;

        if (!IsSpellGem(__instance))
            return;

        // Mark as unlimited use so vanilla Gem.UseGem skips consumption
        __instance.SetProperty(PropertyBool.UnlimitedUse, true);
    }

    private static bool IsSpellGem(WorldObject item)
    {
        // Must be a gem
        if (item.WeenieType != WeenieType.Gem && (item.ItemType & ItemType.Gem) == 0)
            return false;

        // Must have spells (SpellDID or spellbook)
        bool hasSpellDID = item.SpellDID.HasValue && item.SpellDID.Value > 0;
        bool hasSpellBook = item.Biota?.PropertiesSpellBook != null && item.Biota.PropertiesSpellBook.Count > 0;

        return hasSpellDID || hasSpellBook;
    }
}