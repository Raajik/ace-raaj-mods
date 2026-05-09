namespace WorldEvents;

internal static class HuntXpRewards
{
    internal static bool TryGrantPlacementXp(Settings settings, int zeroBasedRank, Player player, int participantCount, out long amount, out string formulaSummary)
    {
        amount = 0;
        formulaSummary = "";

        if (!settings.HuntGrantPlacementCharacterXp)
            return false;

        var fraction = PlacementFraction(settings, zeroBasedRank);
        if (fraction <= 0)
            return false;

        var xpToNext = LevelXpMath.GetXpToNextLevel(player);
        if (xpToNext <= 0)
            return false;

        var grant = (long)(xpToNext * fraction);
        if (zeroBasedRank >= 3)
            grant = Math.Max(grant, settings.HuntPlacementXpMinRest);
        if (grant <= 0)
            return false;

        if (participantCount == 1 && settings.SoloCompetitorBonus.Enable)
            grant = (long)(grant * settings.SoloCompetitorBonus.XpMultiplier);

        HuntXpInterop.GrantQuestXpWithoutMultiplier(player, grant);
        // Grant path undoes shard xp_modifier; message uses est. to bar (incl. challenge milestone) for parity with Challenge PreGrantXP.
        var awarded = HuntQuestXpDisplay.EstimateCharacterXpAfterAchievementChain(player, grant);
        amount = awarded;
        var pct = fraction * 100.0;
        var label = PlacementOrdinalLabel(zeroBasedRank);
        formulaSummary = $"{pct:0.#}%NL";

        player.SendMessage($"[Hunt] Hunt placement XP ({PlacementLabel(zeroBasedRank)}): +{awarded:N0} character XP ({pct:0.##}% to next level, {label}).");
        return true;
    }

    internal static string FormatAbbreviatedNextLevelFraction(Settings settings, int zeroBasedRank)
    {
        var frac = PlacementFraction(settings, zeroBasedRank);
        if (frac <= 0)
            return "";
        return $" ({frac * 100:0.#}%NL)";
    }

    static string FractionSuffix(int zeroBasedRank)
    {
        return zeroBasedRank switch
        {
            0 => "First",
            1 => "Second",
            2 => "Third",
            _ => "Rest",
        };
    }

    static double PlacementFraction(Settings settings, int zeroBasedRank)
    {
        return zeroBasedRank switch
        {
            0 => settings.HuntPlacementXpFractionFirst,
            1 => settings.HuntPlacementXpFractionSecond,
            2 => settings.HuntPlacementXpFractionThird,
            _ => settings.HuntPlacementXpFractionRest,
        };
    }

    static string PlacementLabel(int zeroBasedRank)
    {
        var n = zeroBasedRank + 1;
        var lastTwo = n % 100;
        if (lastTwo is >= 11 and <= 13)
            return $"{n}th";

        return (n % 10) switch
        {
            1 => $"{n}st",
            2 => $"{n}nd",
            3 => $"{n}rd",
            _ => $"{n}th",
        };
    }

    static string PlacementOrdinalLabel(int zeroBasedRank)
    {
        return (zeroBasedRank + 1) switch
        {
            1 => "1st place",
            2 => "2nd place",
            3 => "3rd place",
            _ => $"{zeroBasedRank + 1}th place",
        };
    }
}
