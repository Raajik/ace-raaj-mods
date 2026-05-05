using Windblown.Weenies;

// Same namespace as PatchClass for partial class auto-attach. See WeenieCachePatches.cs comment.
namespace Windblown;

/// <summary>
/// Routes Give/Refuse emote lookups for mirrored WCIDs through the source WCID's emote chain on the
/// SAME NPC. When the player gives e.g. 850271 (Bloodletter Drudge Charm Quality) to a Collector,
/// vanilla <c>WorldObject.HasGiveOrRefuseEmoteForItem</c> only checks the NPC's emote table for an
/// entry keyed to 850271 — and finds nothing. We postfix it: if the original lookup failed and the
/// item's WCID has a mirror source registered (e.g. 850271 → 24835), we retry with the source WCID
/// on the same NPC. If that succeeds, we clone the resulting <see cref="ACE.Entity.Models.PropertiesEmote"/>
/// with <c>WeenieClassId</c> set to the player's actual item WCID so downstream patches
/// (BetterSupportSkills <c>PreExecuteEmoteSet</c>) see a matching key.
///
/// This avoids having to duplicate all 10 Collector NPCs' emote tables in JSON and works the moment
/// any NPC accepts the source WCID — including custom NPCs operators add later via SQL.
/// </summary>
public partial class PatchClass
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.HasGiveOrRefuseEmoteForItem))]
    public static void PostHasGiveOrRefuseEmoteForItem(WorldObject __instance, WorldObject item, ref PropertiesEmote? emote, ref bool __result)
    {
        if (__result) return;
        if (__instance == null || item == null) return;
        if (!WeenieRegistry.IsReady) return;
        if (!WeenieRegistry.TryGetEmoteMirrorSource(item.WeenieClassId, out var sourceWcid)) return;

        var emoteMgr = __instance.EmoteManager;
        if (emoteMgr == null) return;

        // Prefer Refuse over Give to match vanilla precedence, then fall back to Give.
        var refused = emoteMgr.GetEmoteSet(EmoteCategory.Refuse, null, null, sourceWcid);
        if (refused != null)
        {
            emote = CloneWithWcid(refused, item.WeenieClassId);
            __result = true;
            return;
        }

        var given = emoteMgr.GetEmoteSet(EmoteCategory.Give, null, null, sourceWcid);
        if (given != null)
        {
            emote = CloneWithWcid(given, item.WeenieClassId);
            __result = true;
        }
    }

    static PropertiesEmote CloneWithWcid(PropertiesEmote src, uint newWcid)
    {
        // PropertiesEmote.Clone() deep-copies actions; we then override the WCID so downstream code
        // (e.g. PreExecuteEmoteSet bulk match) keys off the player's actual item, not the mirror source.
        var c = src.Clone();
        c.WeenieClassId = newWcid;
        return c;
    }
}
