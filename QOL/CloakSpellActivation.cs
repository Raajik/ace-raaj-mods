using System.Reflection;
using ACE.Entity;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace QOL;

/// <summary>
/// Ensures spells on cloaks (cantrips, minors, etc.) are properly activated
/// when equipped. Vanilla ACE's MutateCloak never calls AssignMagic, so
/// loot-generated cloaks have ItemCurMana = null and TryActivateSpells is skipped.
/// This patch forces spell activation for any cloak with spellbook entries.
/// </summary>
[HarmonyPatch]
internal static class CloakSpellActivation
{
    // Set from PatchClass Start / OnWorldOpen
    internal static Settings? CachedSettings;

    static bool IsEnabled => CachedSettings?.EnableCloakSpellActivation ?? true;

    static MethodBase? TargetMethod()
    {
        return AccessTools.Method(typeof(Player), nameof(Player.TryEquipObjectWithNetworking),
            new[] { typeof(WorldObject), typeof(EquipMask) });
    }

    static bool Prepare()
    {
        if (TargetMethod() == null)
        {
            ModManager.Log("[QOL] CloakSpellActivation: TryEquipObjectWithNetworking not found; patch skipped.",
                ModManager.LogLevel.Warn);
            return false;
        }
        return true;
    }

    [HarmonyPostfix]
    public static void PostTryEquipObjectWithNetworking(bool __result, WorldObject item, Player __instance)
    {
        if (!__result || item == null || __instance == null)
            return;

        if (!IsEnabled)
            return;

        // Only process cloaks
        if (item.ValidLocations != EquipMask.Cloak)
            return;

        // Check if the cloak has spells in its spellbook
        var knownSpells = item.Biota?.GetKnownSpellsIds(item.BiotaDatabaseLock);
        if (knownSpells == null || knownSpells.Count == 0)
            return;

        // Filter out proc spells and the item's own SpellDID
        bool hasActivateableSpell = false;
        foreach (var spell in knownSpells)
        {
            if (item.HasProcSpell((uint)spell))
                continue;
            if (spell == item.SpellDID)
                continue;
            hasActivateableSpell = true;
            break;
        }

        if (!hasActivateableSpell)
            return;

        // Force ItemCurMana to at least 1 so TryActivateSpells will process it
        if (item.ItemCurMana == null || item.ItemCurMana < 1)
            item.ItemCurMana = 1;

        // Invoke TryActivateSpells via reflection (it's a private method)
        try
        {
            var tryActivate = AccessTools.Method(typeof(Player), "TryActivateSpells",
                new[] { typeof(WorldObject) });
            if (tryActivate != null)
                tryActivate.Invoke(__instance, new object[] { item });
            else
                ModManager.Log("[QOL] CloakSpellActivation: TryActivateSpells not found.",
                    ModManager.LogLevel.Warn);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL] CloakSpellActivation: failed to activate spells on cloak: {ex.Message}",
                ModManager.LogLevel.Warn);
        }
    }
}
