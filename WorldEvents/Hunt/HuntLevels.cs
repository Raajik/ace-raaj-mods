namespace WorldEvents;

internal static class HuntLevels
{
    // Bracket indices: 0=Lv1-50, 1=Lv51-150, 2=Lv151-225, 3=Lv226+
    internal static int GetBracket(Player player)
    {
        var level = player.Level ?? 1;
        if (level <= 50) return 0;
        if (level <= 150) return 1;
        if (level <= 225) return 2;
        return 3;
    }

    internal static string BracketLabel(int bracketIdx) => bracketIdx switch
    {
        0 => "Adventurer (Lv 1-50)",
        1 => "Journeyman (Lv 51-150)",
        2 => "Veteran (Lv 151-225)",
        3 => "Legend (Lv 226+)",
        _ => $"Bracket {bracketIdx}",
    };

    internal static string BracketLevelRange(int bracketIdx) => bracketIdx switch
    {
        0 => "Lv 1-50",
        1 => "Lv 51-150",
        2 => "Lv 151-225",
        3 => "Lv 226+",
        _ => $"Bracket {bracketIdx}",
    };
}
