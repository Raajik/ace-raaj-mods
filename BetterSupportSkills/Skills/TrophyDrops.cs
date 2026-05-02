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

    static bool IsEquippable(WorldObject item) =>
        item.ItemType is ItemType.Armor or ItemType.Clothing or ItemType.Jewelry
            or ItemType.MeleeWeapon or ItemType.MissileWeapon or ItemType.Caster;

    static void AddOrStack(Dictionary<uint, WorldObject> stacks, WorldObject item)
    {
        if (IsEquippable(item) || (item.MaxStackSize ?? 0) <= 1)
        {
            // Can't stack — keep as separate entry by using a dummy key that won't collide
            stacks[(uint)(stacks.Count + 1) | 0x80000000] = item;
            return;
        }

        if (stacks.TryGetValue(item.WeenieClassId, out var existing))
        {
            int newSize = (existing.StackSize ?? 1) + (item.StackSize ?? 1);
            int clamped = Math.Min(newSize, existing.MaxStackSize ?? 100);
            existing.SetStackSize(clamped);
            item.Destroy();
        }
        else
        {
            stacks[item.WeenieClassId] = item;
        }
    }

    static void ApplyTrophyBurdenValue(WorldObject trophy, Creature source)
    {
        int level = source.Level ?? 1;
        int health = (int)(source.Health?.MaxValue ?? 50);
        long xp = source.XpOverride ?? 0;

        // Base burden scales with creature difficulty — min 5, soft cap 300
        int baseBurden = Math.Max(5, level * 3 + health / 20 + (int)(xp / 5000));
        baseBurden = Math.Min(baseBurden, 300);

        int baseValue = Math.Max(1, baseBurden * 3); // 3 pyreals per burden unit

        trophy.SetProperty(PropertyInt.StackUnitEncumbrance, baseBurden);
        trophy.SetProperty(PropertyInt.StackUnitValue, baseValue);
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

        var bonusStacks = new Dictionary<uint, WorldObject>();
        var bonusNames = new Dictionary<string, int>();
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

                        ApplyTrophyBurdenValue(bonus, __instance);
                        bonus.SetStackSize(stackSize);

                        AddOrStack(bonusStacks, bonus);
                        bonusNames[bonus.Name] = bonusNames.GetValueOrDefault(bonus.Name) + stackSize;
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
                var potionList = createList.ToList();

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

                            AddOrStack(bonusStacks, bonus);
                            bonusNames[bonus.Name] = bonusNames.GetValueOrDefault(bonus.Name) + stackSize;
                            itemsAdded++;
                        }
                    }
                }
            }
        }

        // === Quest Trophy Drops ===
        var questSettings = settings.QuestTrophyDrops;
        if (questSettings?.Enabled == true && extraRolls > 0)
        {
            var questWcids = questSettings.QuestItemWcids;
            if (questWcids?.Count > 0)
            {
                uint creatureWcid = __instance.WeenieClassId;
                bool isChampion = __instance.GetProperty((PropertyInt)10029) is int exType && exType != 0;

                for (var roll = 0; roll < extraRolls; roll++)
                {
                    // Base drop chance gate (~1% default)
                    if (ThreadSafeRandom.Next(0.0f, 1.0f) >= questSettings.DropChance)
                        continue;

                    var wcid = questWcids[ThreadSafeRandom.Next(0, questWcids.Count - 1)];

                    // Validate: only drop trophy from its correct creature type
                    if (!IsValidTrophySource(wcid, creatureWcid))
                        continue;

                    var item = WorldObjectFactory.CreateNewWorldObject(wcid);
                    if (item != null)
                    {
                        int stackSize = isChampion
                            ? ThreadSafeRandom.Next(questSettings.ChampionStackSizeMin, questSettings.ChampionStackSizeMax)
                            : 1;
                        item.SetStackSize(stackSize);
                        if (corpse != null)
                            corpse.TryAddToInventory(item);
                        else
                            __instance.TryAddToInventory(item);
                        itemsAdded++;
                        // Quest items are NOT added to bonusNames
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
                    bonusNames[item.Name] = bonusNames.GetValueOrDefault(item.Name) + (item.StackSize ?? 1);
                    if (corpse != null)
                        corpse.TryAddToInventory(item);
                    else
                        __instance.TryAddToInventory(item);
                    itemsAdded++;
                }
            }
        }

        // Move all stacked bonus items to the corpse/creature
        if (__instance != null)
        {
            foreach (var kvp in bonusStacks)
            {
                if (corpse != null)
                    corpse.TryAddToInventory(kvp.Value);
                else
                    __instance.TryAddToInventory(kvp.Value);
            }
        }

        if (itemsAdded > 0)
        {
            if (bonusNames.Any())
            {
                var parts = bonusNames.Select(kv => $"{kv.Key} (×{kv.Value})").ToList();
                player.SendMessage($"Your knowledge reveals: {string.Join(", ", parts)}!");
            }
            else
            {
                player.SendMessage($"Your knowledge reveals extra loot! ({itemsAdded} bonus item(s) added)");
            }
        }
    }

    /// <summary>
    /// Maps trophy WCIDs to the specific creature WCIDs that should drop them.
    /// Prevents scavenger ursuins from dropping olthoi pincers, etc.
    /// </summary>
    static bool IsValidTrophySource(uint trophyWcid, uint creatureWcid)
    {
        return trophyWcid switch
        {
            // Tusker Tusks
            22419 => creatureWcid == 22611, // Armored Tusker Tusk → Armored Tusker
            22420 => creatureWcid == 22583, // Assailer Tusk → Assailer
            22421 => creatureWcid == 22585, // Tusker Crimsonback Tusk → Tusker Crimsonback
            22422 => creatureWcid == 22587, // Devastator Tusk → Devastator
            22423 => creatureWcid == 22589, // Female Tusker Tusk → Female Tusker
            22424 => creatureWcid == 22591, // Goldenback Tusker Tusk → Goldenback Tusker
            22425 => creatureWcid == 22593, // Tusker Guard Tusk → Tusker Guard
            22426 => creatureWcid == 22595, // Tusker Liberator Tusk → Tusker Liberator
            22427 => creatureWcid == 22597, // Male Tusker Tusk → Male Tusker
            22428 => creatureWcid == 22613, // Plated Tusker Tusk → Plated Tusker
            22429 => creatureWcid == 22599, // Rampager Tusk → Rampager
            22430 => creatureWcid == 22601, // Tusker Redeemer Tusk → Tusker Redeemer
            22431 => creatureWcid == 22603, // Silver Tusker Tusk → Silver Tusker
            22432 => creatureWcid is 22605 or 22604, // Tusker Slave Tusk → Tusker Slave
            19478 => creatureWcid is 1628 or 22604, // Sharp Tusker Slave Tusk → Tusker Slave
            29054 => creatureWcid == 29052, // Fledgemaster's Tusk → Ruschk Fledgemaster
            51351 => creatureWcid == 51350, // Snow Tusker Leader Tusk → Snow Tusker Leader

            // Olthoi Pincers
            10843 => creatureWcid == 11725, // Eviscerator Pincer → Olthoi Eviscerator
            10844 => creatureWcid == 11726, // Gardener Pincer → Olthoi Gardener
            10845 => creatureWcid == 11727, // Harvester Pincer → Olthoi Harvester
            10846 => creatureWcid == 11728, // Legionary Pincer → Olthoi Legionary
            10847 => creatureWcid == 11729, // Soldier Pincer → Olthoi Soldier
            24357 => creatureWcid == 24452, // Brood Matron Pincer → Olthoi Brood Matron
            27589 => creatureWcid is 23481 or 24298 or 24453 or 27503 or 27571
                        or 72423 or 72693 or 72719 or 72720 or 72721 or 72722, // Mutilator Pincer → Olthoi Mutilator variants
            27590 => creatureWcid == 27572, // Warrior Pincer → Olthoi Warrior
            27591 => creatureWcid == 27573, // Worker Pincer → Olthoi Worker
            51211 => creatureWcid == 72697, // Hive Eviscerator Pincer → Olthoi Hive Eviscerator
            51214 => creatureWcid == 51213, // Hive Warrior Pincer → Olthoi Hive Warrior
            72696 => creatureWcid is 72695 or 72727 or 72728 or 72729 or 72730, // Brood Pincer → Olthoi Hive Brood

            // Eater Jaws
            28718 => creatureWcid == 28847, // Ravenous Eater Jaw → Ravenous Eater
            28719 => creatureWcid == 28848, // Insatiable Eater Jaw → Insatiable Eater
            42104 => creatureWcid == 28848, // Upper Insatiable Eater Jaw → Insatiable Eater
            28725 => creatureWcid == 28849, // Engorged Eater Jaw → Engorged Eater
            28726 => creatureWcid == 28850, // Voracious Eater Jaw → Voracious Eater
            28727 => creatureWcid == 28851, // Abhorrent Eater Jaw → Abhorrent Eater
            28827 => creatureWcid == 28829, // Marauder's Jaw → Marauder

            _ => false
        };
    }
}
