namespace EmpyreanAlteration;

// Resolves the Player who ultimately owns an inventory container chain (main pack, nested packs, etc.).
internal static class ContainerRootPlayer
{
    internal static Player? TryGetFromContainer(Container? start)
    {
        WorldObject? cur = start;
        for (int depth = 0; depth < 64 && cur != null; depth++)
        {
            if (cur is Player p)
                return p;

            cur = cur.Container;
        }

        return null;
    }
}
