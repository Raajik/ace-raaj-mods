using ACE.Server.WorldObjects;

namespace AceRaajMods.Shared;

// Spell component, attribute, and trade peas treated as pyreal-equivalent for LeyLineLedger / AutoLoot.
// Keep in sync with server weenie Value (per unit) × stack size.
public static class PeaPyrealWcids
{
    static readonly HashSet<uint> Ids = new(new uint[]
    {
        8284, 8285, 8286, 8287, 8288, 8289, 8290, 8291, 8292, 8293, 8294, 8295, 8296, 8297, 8298, 8299,
        8300, 8301, 8302, 8303, 8304, 8305, 8306, 8307, 8308, 8309, 8310, 8311, 8312, 8313,
        8314, 8315, 8316, 8317, 8318, 8319, 8320, 8321, 8322, 8323, 8324, 8325,
        8326, 8327, 8328, 8329, 8330, 8331,
        8332, 8333, 8334, 8335, 8336, 8337, 8338, 8339, 8340, 8341, 8342, 8343, 8344, 8345,
        8346, 8347, 8348, 8349, 8350, 8351, 8352, 8353, 8354, 8355, 8356, 8357,
    });

    public static bool IsPea(uint wcid) => Ids.Contains(wcid);

    public static long GetPyrealValue(WorldObject item)
    {
        if (item is null || !IsPea(item.WeenieClassId))
            return 0;

        return (long)(item.Value ?? 0) * (item.StackSize ?? 1);
    }
}
