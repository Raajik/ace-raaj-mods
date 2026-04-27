using System.Collections.Concurrent;
using ACE.Common;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Server.Entity;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;

namespace BetterSupportSkills.Skills;

[HarmonyPatchCategory(nameof(Features.TrophyDropsSkill))]
internal static class TrophyDropsBonus
{
    public static ConcurrentDictionary<uint, int> PlayerExtraRolls = new();

    public static void OnPlayerLogin(Player player) => RefreshBonus(player);
    public static void OnPlayerWorldOpen(Player player) => RefreshBonus(player);

    public static bool PrefixPlayerEnterWorld(Player __instance)
    {
        RefreshBonus(__instance);
        return true;
    }

    public static void RefreshBonus(Player player)
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableTrophyDrops != true)
            return;

        var trophySettings = settings.TrophyDrops;
        if (trophySettings == null)
            return;

        int extraRolls = 0;

        var assessCreature = player.GetCreatureSkill(Skill.AssessCreature);
        if (assessCreature.AdvancementClass >= SkillAdvancementClass.Trained)
        {
            extraRolls = (int)(assessCreature.Current / 150.0);
        }

        extraRolls = Math.Min(extraRolls, trophySettings.MaxExtraRolls);

        var id = player.Guid.Full;
        if (extraRolls > 0)
        {
            PlayerExtraRolls[id] = extraRolls;
        }
        else
        {
            PlayerExtraRolls.TryRemove(id, out _);
        }
    }

    public static void PostfixGenerateTreasure(Creature __instance, DamageHistoryInfo killer, Corpse corpse, List<WorldObject> __result)
    {
        if (__result == null)
            return;

        var settings = PatchClass.Settings;
        if (settings?.EnableTrophyDrops != true)
            return;

        var trophySettings = settings.TrophyDrops;
        if (trophySettings == null)
            return;

        var player = killer?.TryGetPetOwnerOrAttacker() as Player;
        if (player == null)
            return;

        var id = player.Guid.Full;
        
        if (!PlayerExtraRolls.ContainsKey(id))
            RefreshBonus(player);
        
        if (!PlayerExtraRolls.TryGetValue(id, out var extraRolls))
            return;

        if (extraRolls <= 0)
            return;

        if (__instance?.Biota?.PropertiesCreateList == null)
            return;

        var createList = __instance.Biota.PropertiesCreateList
            .Where(i => i.WeenieClassId != 0 && 
                       (((DestinationType)i.DestinationType & DestinationType.Treasure) != 0 || 
                        ((DestinationType)i.DestinationType & DestinationType.Contain) != 0) &&
                        ((DestinationType)i.DestinationType & DestinationType.Wield) == 0)
            .ToList();

        if (!createList.Any())
            return;

        var bonusNames = new List<string>();
        int itemsAdded = 0;

        // === Assess Creature: Stacked Trophies ===
        // Guaranteed extra rolls based on buffed skill (skill / 150, capped at MaxExtraRolls)
        var assessCreature = player.GetCreatureSkill(Skill.AssessCreature);
        if (assessCreature.AdvancementClass >= SkillAdvancementClass.Trained && extraRolls > 0)
        {
            for (var roll = 0; roll < extraRolls; roll++)
            {
                var selected = ACE.Server.WorldObjects.Creature.CreateListSelect(createList);
                foreach (var item in selected)
                {
                    var bonus = WorldObjectFactory.CreateNewWorldObject(item);
                    if (bonus != null)
                    {
                        int stackSize = ThreadSafeRandom.Next(2, 5);
                        if ((bonus.MaxStackSize ?? 0) <= 1)
                            bonus.MaxStackSize = 100;
                        bonus.SetStackSize(stackSize);

                        bonusNames.Add($"{bonus.Name} (×{stackSize})");
                        if (corpse != null)
                            corpse.TryAddToInventory(bonus);
                        else
                            __instance.TryAddToInventory(bonus);
                        itemsAdded++;
                    }
                }
            }
        }

        // === Alchemy: Stacked Potions ===
        // Guaranteed extra rolls based on buffed skill (skill / 150, capped at MaxExtraRolls)
        var alchemy = player.GetCreatureSkill(Skill.Alchemy);
        if (alchemy.AdvancementClass >= SkillAdvancementClass.Trained && extraRolls > 0)
        {
            for (var roll = 0; roll < extraRolls; roll++)
            {
                // Filter for potion-like items (we'll check by name or weenie type)
                var potionList = createList.Where(c => 
                {
                    var wcid = c.WeenieClassId;
                    // Common potion WCID ranges or names would go here
                    // For now, we'll include all and let the stack handle it
                    return true;
                }).ToList();

                if (potionList.Any())
                {
                    var selected = ACE.Server.WorldObjects.Creature.CreateListSelect(potionList);
                    foreach (var item in selected)
                    {
                        var bonus = WorldObjectFactory.CreateNewWorldObject(item);
                        if (bonus != null)
                        {
                            int stackSize = ThreadSafeRandom.Next(2, 3);
                            if ((bonus.MaxStackSize ?? 0) <= 1)
                                bonus.MaxStackSize = 100;
                            bonus.SetStackSize(stackSize);

                            bonusNames.Add($"{bonus.Name} (×{stackSize})");
                            if (corpse != null)
                                corpse.TryAddToInventory(bonus);
                            else
                                __instance.TryAddToInventory(bonus);
                            itemsAdded++;
                        }
                    }
                }
            }
        }

        // === Bonus Treasure (kept as-is) ===
        if (__instance?.DeathTreasure != null && trophySettings.BonusTreasureChance > 0)
        {
            var rng = ThreadSafeRandom.Next(0.0f, 1.0f);
            if (rng < trophySettings.BonusTreasureChance)
            {
                var bonusTreasure = LootGenerationFactory.CreateRandomLootObjects(__instance.DeathTreasure);
                foreach (var item in bonusTreasure)
                {
                    bonusNames.Add(item.Name);
                    if (corpse != null)
                        corpse.TryAddToInventory(item);
                    else
                        __instance.TryAddToInventory(item);
                    itemsAdded++;
                }
            }
        }

        if (itemsAdded > 0)
        {
            if (bonusNames.Any())
                player.SendMessage($"Your knowledge reveals: {string.Join(", ", bonusNames)}!");
            else
                player.SendMessage($"Your knowledge reveals extra loot! ({itemsAdded} bonus item(s) added)");
        }
    }
}
