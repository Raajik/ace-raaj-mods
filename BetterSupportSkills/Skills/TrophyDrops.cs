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
            extraRolls = assessCreature.AdvancementClass == SkillAdvancementClass.Specialized
                ? trophySettings.ExtraRollsSpecialized
                : trophySettings.ExtraRollsTrained;
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

        int itemsAdded = 0;
        var bonusNames = new List<string>();

        for (int i = 0; i < extraRolls; i++)
        {
            var selected = ACE.Server.WorldObjects.Creature.CreateListSelect(createList);
            foreach (var item in selected)
            {
                var bonus = WorldObjectFactory.CreateNewWorldObject(item);
                if (bonus != null)
                {
                    bonusNames.Add(bonus.Name);
                    if (corpse != null)
                        corpse.TryAddToInventory(bonus);
                    else
                        __instance.TryAddToInventory(bonus);
                    itemsAdded++;
                }
            }
        }

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
                player.SendMessage($"Your creature assessment knowledge reveals: {string.Join(", ", bonusNames)}!");
            else
                player.SendMessage($"Your creature assessment knowledge reveals extra loot opportunities! ({itemsAdded} bonus item(s) added)");
        }
    }
}