// BridgeTemplate.cs — USE THIS FOR ALL NEW REFLECTION BRIDGES
//
// Navigation:
//   1. Copy this file into the calling mod's project (or into Shared/ as a source include)
//   2. Rename the class to follow [CallerMod][TargetMod]Bridge pattern
//   3. Fill in the ReflectionBridge constructor calls
//   4. Add `<Compile Include="..\Shared\ReflectionBridge.cs" Link="Shared\ReflectionBridge.cs" />`
//      to the calling mod's .csproj if it doesn't already have it
//   5. Write public API methods that call _bridge.TryInvoke / TryInvokeVoid + fallback
//
// Full example: see LeyLineLedgerBankInterop.cs for a multi-method bridge using this helper.
// ============================================================================

using System.Reflection;
using ACE.Server.Mods;
using ACE.Server.WorldObjects;
using AceRaajMods.Shared;

namespace YourModNamespace;

/// <summary>
/// Reflection bridge to TargetMod.TargetType.TargetMethod.
///
/// Purpose (one sentence): what does this bridge do and why is reflection needed?
/// Because (reason): YourMod must not reference TargetMod.dll directly so both mods
/// can be deployed independently.
/// </summary>
public static class YourModTargetModBridge
{
    // ── One _bridge per target method ──────────────────────────────────────────
    // Args: callerMod, target assembly, target type FullName, method name, param types

    private static readonly ReflectionBridge _targetMethod = new(
        "YourMod",                              // caller mod (for log prefix)
        "TargetAssemblyName",                    // target assembly short name
        "TargetMod.TargetType",                  // target type (FullName)
        "MethodName",                            // target method
        [typeof(Player), typeof(int)]);          // parameter types

    // ── Public API — consumer code calls these, never calls _bridge directly ───

    /// <summary>
    /// Does thing via TargetMod when loaded. Falls back to vanilla ACE behavior.
    /// </summary>
    public static long DoSomething(Player player, int prop)
    {
        if (_targetMethod.TryInvoke(out object? result, player, prop))
            return (long)result!;

        // Fallback: handle the case when target mod isn't loaded
        return player.GetProperty((ACE.Entity.Enum.Properties.PropertyInt64)prop) ?? 0L;
    }

    /// <summary>
    /// Does a void action via TargetMod when loaded.
    /// </summary>
    public static bool DoVoidAction(Player player, int prop, long delta)
    {
        if (_targetMethod.TryInvokeVoid(player, prop, delta))
            return true;

        // Fallback
        return false;
    }
}
