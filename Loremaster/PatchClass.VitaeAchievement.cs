namespace Loremaster;

using ACE.Server.WorldObjects;

public partial class PatchClass
{
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), "UpdateXpVitae", new Type[] { typeof(long) })]
    public static void PostUpdateXpVitaeForAchievement(Player __instance)
    {
        TryVitaeCapAchievement(__instance);
    }

    static void TryVitaeCapAchievement(Player player)
    {
        if (player?.Guid is null || Settings is not { } s || !s.EnableVitaeCapAchievement)
            return;

        if (player.GetProperty(LMBool.VitaeCapAchievementGranted) == true)
            return;

        if (!player.HasVitae)
            return;

        var vitae = ReadVitaeFraction(player);
        if (vitae < s.VitaeCapThreshold)
            return;

// achievement bonus (0.99) to the global AchievementPoolBonus.

player.SetProperty(LMBool.VitaeCapAchievementGranted, true);
player.AddExtraQuestPoints(s.VitaeCapBonusQuestPoints);
player.UpdateAchievementPoolBonus(0.99); // <-- Added achievement contribution
player.UpdateQuestPoints();
player.SendMessage(
    $"[Loremaster] CERTIFIED VITAE FIEND! You brushed the server's {s.VitaeCapThreshold:P0} vitae ceiling. Take {s.VitaeCapBonusQuestPoints:0} bonus Quest Points and try not to trip on your own ego.",
    ChatMessageType.Magic);
    }

    static double ReadVitaeFraction(Player player)
    {
        try
        {
            var val = Traverse.Create(player).Property("Vitae").GetValue();
            if (val is float f)
                return f;
            if (val is double d)
                return d;
        }
        catch
        {
        }

        return 0;
    }
}
