using System.Reflection;
using System.Text.Json.Serialization;
using ACE.Server.Factories.Tables;
using ACE.Server.WorldObjects;
using HarmonyLib;

namespace Loremaster;

/// <summary>
/// Delays high spell tiers on creature drops based on killer level.
/// Tier 1: L1+, Tier 2: L20+, Tier 3: L40+, Tier 4: L60+, Tier 5: L80+, Tier 6: L100+, Tier 7: L125+, Tier 8: L150+.
/// </summary>
public class LootTierDelaySettings
{
    [JsonPropertyName("// Enable")]
    public string EnableDoc { get; init; } = "When true, creature loot spell tiers are clamped based on the killer's character level.";
    public bool Enable { get; set; } = true;

    [JsonPropertyName("// Thresholds")]
    public string ThresholdsDoc { get; init; } = "Ordered list of level thresholds. Each entry: MinLevel = minimum player level, MaxTier = highest treasure profile tier allowed for spells. Evaluated from highest MinLevel downward.";
    public List<LootTierThreshold> Thresholds { get; set; } = new()
    {
        new LootTierThreshold { MinLevel = 150, MaxTier = 8 },
        new LootTierThreshold { MinLevel = 125, MaxTier = 7 },
        new LootTierThreshold { MinLevel = 100, MaxTier = 6 },
        new LootTierThreshold { MinLevel = 80,  MaxTier = 5 },
        new LootTierThreshold { MinLevel = 60,  MaxTier = 4 },
        new LootTierThreshold { MinLevel = 40,  MaxTier = 3 },
        new LootTierThreshold { MinLevel = 20,  MaxTier = 2 },
        new LootTierThreshold { MinLevel = 1,   MaxTier = 1 },
    };
}

public class LootTierThreshold
{
    [JsonPropertyName("// MinLevel")]
    public string MinLevelDoc { get; init; } = "Minimum player level to unlock MaxTier.";
    public int MinLevel { get; set; }

    [JsonPropertyName("// MaxTier")]
    public string MaxTierDoc { get; init; } = "Highest treasure profile tier allowed for spell rolling at/above this MinLevel.";
    public int MaxTier { get; set; }
}

public static class LootTierDelay
{
    [ThreadStatic]
    internal static int? CurrentKillerLevel;

    public static int GetMaxTierForPlayerLevel(int playerLevel)
    {
        // Thresholds from Loremaster Settings (defaults match PLAN.md)
        var s = PatchClass.Settings?.LootTierDelay;
        if (s == null || s.Thresholds == null || s.Thresholds.Count == 0)
            return 8; // no restrictions if misconfigured

        for (int i = s.Thresholds.Count - 1; i >= 0; i--)
        {
            if (playerLevel >= s.Thresholds[i].MinLevel)
                return s.Thresholds[i].MaxTier;
        }
        return 1;
    }
}

public partial class PatchClass
{
    [HarmonyPatch]
    internal static class LootTierDelayCreaturePatch
    {
        static MethodBase TargetMethod()
            => AccessTools.Method(typeof(Creature), "GenerateTreasure", new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) });

        [HarmonyPrefix]
        static void Prefix(DamageHistoryInfo killer)
        {
            if (PatchClass.Settings?.LootTierDelay?.Enable != true)
                return;

            var player = killer?.TryGetAttacker() as Player;
            if (player == null && killer != null)
                player = killer.TryGetPetOwnerOrAttacker() as Player;

            LootTierDelay.CurrentKillerLevel = player?.Level ?? 1;
        }

        [HarmonyPostfix]
        static void Postfix()
        {
            LootTierDelay.CurrentKillerLevel = null;
        }
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(SpellLevelChance), nameof(SpellLevelChance.Roll))]
    public static void PreSpellLevelChanceRoll(ref int tier)
    {
        if (Settings?.LootTierDelay?.Enable != true)
            return;

        if (LootTierDelay.CurrentKillerLevel is not int level)
            return;

        int maxTier = LootTierDelay.GetMaxTierForPlayerLevel(level);
        if (tier > maxTier)
            tier = maxTier;
    }
}
