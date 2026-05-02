using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Factories;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace Swarmed.Features;

/// <summary>
/// Gives CreatureEx special mobs a guaranteed bonus loot package:
/// extra random loot rolls (auto-imbued/awakened by EmpyreanAlteration if enabled).
/// </summary>
[HarmonyPatchCategory(nameof(CreatureEx))]
internal static class SpecialCreatureLoot
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.GenerateTreasure),
        new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) })]
    public static void PostGenerateTreasure(DamageHistoryInfo killer, Corpse corpse, Creature __instance)
    {
        if (corpse == null)
            return;

        var settings = PatchClass.CurrentSettings?.SpecialCreatureLoot;
        if (settings == null || !settings.Enabled)
            return;

        // Only apply to CreatureEx special mobs (FakeInt 10029 = CreatureExType)
        var exType = __instance.GetProperty((PropertyInt)10029);
        if (!exType.HasValue || exType.Value == 0)
            return;

        var deathTreasure = __instance.DeathTreasure;
        if (deathTreasure == null)
            return;

        int added = 0;

        // Bonus loot rolls (2-5 by default) — auto-mutated by LivingEquipment hook if present
        int lootCount = ThreadSafeRandom.Next(settings.ImbuedCountMin, settings.ImbuedCountMax);
        for (int i = 0; i < lootCount; i++)
        {
            var loot = LootGenerationFactory.CreateRandomLootObjects(deathTreasure);
            foreach (var item in loot)
            {
                if (item != null)
                {
                    corpse.TryAddToInventory(item);
                    added++;
                }
            }
        }

        if (added > 0 && killer?.TryGetPetOwnerOrAttacker() is Player player)
        {
            player.SendMessage($"The tyrannical creature yields {added} bonus items!");
        }
    }
}
