namespace EmpyreanAlteration;

// Lets ExperienceSystem patches attribute XP math to the WorldObject currently being evaluated (AddItemXP / ItemLevel getter).
internal static class ItemXpCurveContext
{
    [ThreadStatic]
    private static Stack<WorldObject>? _stack;

    internal static void Enter(WorldObject item)
    {
        _stack ??= new Stack<WorldObject>();
        _stack.Push(item);
    }

    internal static void Leave()
    {
        _stack?.Pop();
    }

    internal static WorldObject? Current => _stack != null && _stack.Count > 0 ? _stack.Peek() : null;
}
