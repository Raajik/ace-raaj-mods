namespace Overtinked;

// Resolves the Player who ultimately owns an inventory container chain (main pack, nested packs, etc.).
internal static class ContainerRootPlayer
{
    // Walk parent Container links until a Player is found. Returns null for corpse-only chains, vendors, or unparented containers.
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
