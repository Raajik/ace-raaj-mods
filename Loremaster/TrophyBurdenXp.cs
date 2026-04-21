using System.Collections.Concurrent;
using ACE.Entity;
using ACE.Entity.Enum;
using ACE.Entity.Enum.Properties;
using ACE.Server.Entity;
using ACE.Server.Network;
using ACE.Server.WorldObjects;

namespace Loremaster;

internal static class TrophyBurdenXp
{
    private static readonly ConcurrentDictionary<uint, bool> TrophyCollectors = new();
    private const bool EnableDebug = false;

    private static void DebugLog(string msg)
    {
        if (EnableDebug)
            ModManager.Log($"[LM TrophyXp] {msg}", ModManager.LogLevel.Info);
    }

    public static void Initialize()
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableTrophyBurdenXp != true)
            return;

        if (settings.TrophyCollectorWcids != null)
        {
            foreach (var wcid in settings.TrophyCollectorWcids)
            {
                TrophyCollectors[wcid] = true;
            }
        }

        ModManager.Log($"[LM] TrophyBurdenXp initialized with {TrophyCollectors.Count} collectors", ModManager.LogLevel.Info);
    }

    public static void HandleGiveRequest(Player player, WorldObject? target, WorldObject? item)
    {
        var settings = PatchClass.Settings;
        if (settings?.EnableTrophyBurdenXp != true)
            return;

        if (target == null || item == null || player == null)
            return;

        var targetWcid = target.WeenieClassId;
        if (!TrophyCollectors.ContainsKey(targetWcid))
            return;

        var burden = item.EncumbranceVal ?? 0;
        if (burden <= 0)
        {
            DebugLog($"Item {item.Name} has no burden ({burden}), skipping");
            return;
        }

        var xpToNext = player.GetXpToNextLevel();
        if (xpToNext <= 0)
        {
            DebugLog($"{player.Name} is at max level, no XP to award");
            return;
        }

        double percentOfLevel = (burden / 100.0) * 0.15;
        var bonusXp = (long)(xpToNext * percentOfLevel);

        DebugLog($"{player.Name} turned in {item.Name} (burden={burden}), awarding {bonusXp} bonus XP ({percentOfLevel * 100:F2}% of level)");

        if (bonusXp > 0)
        {
            player.GrantXP(bonusXp, XpType.Quest, ShareType.None);
            player.SendMessage($"[Loremaster] Trophy burden bonus: +{bonusXp:N0} XP ({percentOfLevel * 100:F2}% of level)");
        }
    }
}