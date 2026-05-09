using AceRaajMods.Shared;
using Windblown.TrophyLines;

namespace Windblown;

/// <summary>
/// On creature death (<c>Creature.GenerateTreasure</c> postfix):
///   1. For each registered trophy line whose <c>CreatureTypeGate</c> matches the dying creature's
///      <see cref="CreatureType"/>, roll each tier's drop chance independently and add singletons to the corpse.
///   2. After rolling, scan corpse inventory and replace any sibling WCIDs (e.g. colored Rat Tail variants)
///      with the line's base WCID so the player only ever sees one consistent name.
///
/// Coexists with BetterSupportSkills' Assess-Creature bonus rolls (also a postfix on the same method) -- both
/// modify the corpse independently.
/// </summary>
public partial class PatchClass
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), "GenerateTreasure", new[] { typeof(DamageHistoryInfo), typeof(Corpse) })]
    public static void PostGenerateTreasure_TrophyLines(Creature __instance, DamageHistoryInfo killer, Corpse corpse)
    {
        if (__instance == null) return;
        if (Cfg?.EnableTrophyLines != true) return;
        if (!TrophyLineRegistry.IsReady) return;

        // 1. Tier rolls -- creature-type gated, only when killer resolves to a player
        var creatureType = __instance.CreatureType ?? CreatureType.Invalid;
        if (creatureType != CreatureType.Invalid)
        {
            var matchingLines = TrophyLineRegistry.ForCreatureType(creatureType).ToList();
            if (matchingLines.Count > 0)
            {
                var player = killer?.TryGetPetOwnerOrAttacker() as Player;
                if (player != null)
                {
                    foreach (var line in matchingLines)
                    {
                        foreach (var tier in line.Tiers)
                        {
                            if (tier.Wcid == 0 || tier.DropChance <= 0.0) continue;
                            if (ThreadSafeRandom.Next(0.0f, 1.0f) >= tier.DropChance) continue;

                            try
                            {
                                var item = WorldObjectFactory.CreateNewWorldObject(tier.Wcid);
                                if (item == null) continue;
                                item.SetStackSize(1);
                                ApplyTrophyBurdenValue(item, __instance);

                                if (corpse != null)
                                    corpse.TryAddToInventory(item);
                                else
                                    __instance.TryAddToInventory(item);

                                if (Cfg.LogTrophyLinesVerbose)
                                    ModManager.Log($"[Windblown.TrophyLines] {line.Name} {tier.TierName} ({tier.Wcid}) rolled on {__instance.Name} for {player.Name}.", ModManager.LogLevel.Info);
                            }
                            catch (Exception ex)
                            {
                                ModManager.Log($"[Windblown.TrophyLines] roll failure for {line.Name}/{tier.TierName} (wcid {tier.Wcid}): {ex.Message}", ModManager.LogLevel.Error);
                            }
                        }
                    }
                }
            }
        }

        // 2. Sibling replacement -- after vanilla loot has populated the corpse
        if (Cfg.EnableSiblingReplacement && corpse?.Inventory != null && corpse.Inventory.Count > 0)
        {
            // snapshot first to avoid mutating during enumeration
            List<(ObjectGuid Guid, int Stack, uint NewWcid)>? toReplace = null;
            foreach (var (guid, item) in corpse.Inventory)
            {
                if (item == null) continue;
                if (TrophyLineRegistry.TryGetReplacementBaseWcid(item.WeenieClassId, out var newWcid))
                {
                    toReplace ??= new();
                    toReplace.Add((guid, item.StackSize ?? 1, newWcid));
                }
            }

            if (toReplace != null)
            {
                foreach (var (guid, stack, newWcid) in toReplace)
                {
                    try
                    {
                        if (!corpse.TryRemoveFromInventory(guid, out var oldItem))
                            continue;
                        oldItem?.Destroy();

                        var replacement = WorldObjectFactory.CreateNewWorldObject(newWcid);
                        if (replacement == null) continue;
                        replacement.SetStackSize(Math.Max(1, stack));
                        ApplyTrophyBurdenValue(replacement, __instance);
                        corpse.TryAddToInventory(replacement);

                        if (Cfg.LogTrophyLinesVerbose)
                            ModManager.Log($"[Windblown.TrophyLines] sibling replaced wcid {oldItem?.WeenieClassId} -> {newWcid} on corpse 0x{corpse.Guid.Full:X}.", ModManager.LogLevel.Info);
                    }
                    catch (Exception ex)
                    {
                        ModManager.Log($"[Windblown.TrophyLines] sibling replacement error for guid 0x{guid.Full:X} (-> {newWcid}): {ex.Message}", ModManager.LogLevel.Error);
                    }
                }
            }
        }
    }

    /// <summary>
    /// Scales burden + value with creature difficulty (level / max-health / xp). Pulled from BSS's TrophyDropsBonus
    /// pattern so trophy weight in inventory and pyreal worth scales with the creature that dropped it.
    /// </summary>
    static void ApplyTrophyBurdenValue(WorldObject trophy, Creature source)
    {
        if (trophy == null || source == null) return;
        int level = source.Level ?? 1;
        int health = (int)(source.Health?.MaxValue ?? 50);
        long xp = source.XpOverride ?? 0;

        int baseBurden = Math.Max(5, level * 3 + health / 20 + (int)(xp / 5000));
        baseBurden = Math.Min(baseBurden, 300);
        int baseValue = Math.Max(1, baseBurden * 3);

        trophy.SetProperty(PropertyInt.StackUnitEncumbrance, baseBurden);
        trophy.SetProperty(PropertyInt.StackUnitValue, baseValue);
    }
}
