using System.Reflection;

namespace AceRaajMods.Shared;

// Reflection bridge to LeyLineLedger.Lottery.AddToPool for mods that must not reference LeyLineLedger.dll.
public static class LeyLineLedgerLotteryBridge
{
    const string AssemblyShortName = "LeyLineLedger";
    const string LotteryTypeName = "LeyLineLedger.Lottery";

    public static void AddPyrealToPool(long amount)
    {
        if (amount <= 0)
            return;

        try
        {
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, AssemblyShortName, StringComparison.OrdinalIgnoreCase))
                    continue;

                var t = asm.GetType(LotteryTypeName, throwOnError: false);
                if (t is null)
                    return;

                var m = t.GetMethod(
                    "AddToPool",
                    BindingFlags.Public | BindingFlags.Static,
                    binder: null,
                    types: new[] { typeof(long) },
                    modifiers: null);
                m?.Invoke(null, new object[] { amount });
                return;
            }
        }
        catch
        {
        }
    }
}
