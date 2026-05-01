namespace EmpyreanAlteration;

internal static class ChaosTriggeredGrowth
{
    public static bool TryApplyPatch(Harmony harmony)
    {
        try
        {
            var type = AccessTools.TypeByName("Overtinked.ChaosFailureEffects");
            if (type == null) return false;
            var method = AccessTools.Method(type, "ApplyContextualChaos", new[] { typeof(Player), typeof(WorldObject) });
            if (method == null) return false;

            var postfix = AccessTools.Method(typeof(ChaosTriggeredGrowth), nameof(PostApplyContextualChaos));
            if (postfix == null) return false;

            harmony.Patch(method, postfix: new HarmonyMethod(postfix));
            ModManager.Log("[EmpyreanAlteration] ChaosTriggeredGrowth patched to Overtinked.ApplyContextualChaos.", ModManager.LogLevel.Info);
            return true;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[EmpyreanAlteration] ChaosTriggeredGrowth patch skipped (Overtinked not present or incompatible): {ex.Message}", ModManager.LogLevel.Warn);
            return false;
        }
    }

    public static void PostApplyContextualChaos(Player player, WorldObject target)
    {
        if (!PatchClass.Settings.ChaosTriggeredGrowth)
            return;

        if (target.GetProperty(FakeBool.GrowthItem) != true)
            return;

        if (!target.HasItemLevel)
            return;

        int prevLevel = target.ItemLevel ?? 0;
        if (prevLevel >= (target.ItemMaxLevel ?? 0))
            return;

        int newLevel = prevLevel + 1;

        ItemXpCurveContext.Enter(target);
        try
        {
            ulong newTotalXp = ExperienceSystem.ItemLevelToTotalXP(
                newLevel,
                (ulong)target.ItemBaseXp!.Value,
                target.ItemMaxLevel!.Value,
                target.ItemXpStyle!.Value);
            target.ItemTotalXp = (long)newTotalXp;
        }
        finally
        {
            ItemXpCurveContext.Leave();
        }

        TryExpandCap(target, player);

        bool grew = QuestItemGrowthLevelEngine.ApplyLevelUp(target, player, newLevel, PatchClass.Settings);

        if (player.Session != null)
        {
            if (grew)
            {
                player.SendMessage(
                    $"Chaos ignites growth in {target.NameWithMaterial ?? target.Name}! It reaches level {newLevel}/{target.ItemMaxLevel}.",
                    ChatMessageType.Magic);
            }
            else
            {
                player.SendMessage(
                    $"Chaos surges through {target.NameWithMaterial ?? target.Name}, but it resists growth at level {newLevel}.",
                    ChatMessageType.Magic);
            }
        }

        if (newLevel % 5 == 0)
        {
            bool isWeapon = target.WeenieType is WeenieType.MeleeWeapon or WeenieType.MissileLauncher or WeenieType.Caster;
            bool isArmor = target.WeenieType == WeenieType.Clothing || QuestGrowthItemHelpers.IsShield(target);
            if (isWeapon || isArmor)
            {
                if (QuestItemGrowthLevelEngine.TryGrantImbue(
                    target, player, newLevel, PatchClass.Settings, isArmorOrWeapon: true, emitMessages: true, summary: null))
                {
                    player.SendMessage(
                        $"{target.NameWithMaterial ?? target.Name} resonates with chaos -- a free imbue awakens at level {newLevel}!",
                        ChatMessageType.Magic);
                }
            }
        }
    }

    private static void TryExpandCap(WorldObject item, Player player)
    {
        double roll = Random.Shared.NextDouble();
        int bonus = 0;
        string label = "";
        if (roll < 0.00001)
        {
            bonus = 100;
            label = "LEGENDARY";
        }
        else if (roll < 0.001)
        {
            bonus = 75;
            label = "EPIC";
        }
        else if (roll < 0.01)
        {
            bonus = 50;
            label = "RARE";
        }

        if (bonus > 0 && item.ItemMaxLevel.HasValue)
        {
            int oldCap = item.ItemMaxLevel.Value;
            item.ItemMaxLevel = oldCap + bonus;
            if (player.Session != null)
            {
                player.SendMessage(
                    $"[{label}] {item.NameWithMaterial ?? item.Name}'s potential shatters its limits! Max level {oldCap} -> {oldCap + bonus}.",
                    ChatMessageType.Magic);
            }
        }
    }
}
