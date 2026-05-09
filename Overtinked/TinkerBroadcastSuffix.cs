namespace Overtinked;

// ThreadStatic effect line for RecipeManager.BroadcastTinkering merge (cleared on consume, failed broadcast, next HandleRecipe).
internal static class TinkerBroadcastSuffix
{
    [ThreadStatic]
    static string? _pending;

    public static void Set(string? suffix)
    {
        if (string.IsNullOrWhiteSpace(suffix))
            _pending = null;
        else
            _pending = suffix.Trim();
    }

    public static void ClearPending()
    {
        _pending = null;
    }

    public static bool TryConsumeAndClear(out string? suffix)
    {
        suffix = _pending;
        _pending = null;
        return !string.IsNullOrWhiteSpace(suffix);
    }

    public static bool HasPending => !string.IsNullOrWhiteSpace(_pending);
}
