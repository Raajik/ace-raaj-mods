using System.Reflection.Emit;
using NativeStackable = ACE.Server.WorldObjects.Stackable;

namespace QOL;

[HarmonyPatchCategory(nameof(Features.Stackable))]
internal static class Stackable
{
    static StackableSettings Cfg => S.Settings.Stackable;
    static HashSet<uint> _wcids = new();

    internal static void Initialize(string modDir, StackableSettings cfg)
    {
        var path = Path.Combine(modDir, cfg.WcidFile);
        if (!File.Exists(path))
        {
            ModManager.Log($"[QOL] Stackable: {cfg.WcidFile} not found — no WCIDs loaded.", ModManager.LogLevel.Warn);
            _wcids = new();
            return;
        }
        try
        {
            var json = File.ReadAllText(path);
            var groups = JsonSerializer.Deserialize<Dictionary<string, List<uint>>>(json);
            _wcids = groups == null ? new() : new HashSet<uint>(groups.Values.SelectMany(v => v));
            ModManager.Log($"[QOL] Stackable: loaded {_wcids.Count} WCIDs from {cfg.WcidFile}.");
        }
        catch (Exception ex)
        {
            ModManager.Log($"[QOL] Stackable: failed to load {cfg.WcidFile}: {ex.Message}", ModManager.LogLevel.Error);
            _wcids = new();
        }
    }

    internal static bool IsStackableWcid(uint wcid) => _wcids.Contains(wcid);

    // On creation, inject stack properties into explicitly whitelisted WCIDs.
    // Sets MaxStackSize and initialises per-unit weight/value so merges keep burden accurate.
    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateWorldObject),
        new Type[] { typeof(Weenie), typeof(ObjectGuid) })]
    public static void PostCreateWorldObject(ref WorldObject __result)
    {
        if (__result == null) return;
        if (__result is NativeStackable) return;
        if (!_wcids.Contains(__result.WeenieClassId)) return;
        if ((__result.MaxStackSize ?? 0) > 1) return; // already stackable

        // Record per-unit weight and value before MaxStackSize is raised,
        // mirroring what Stackable.SetEphemeralValues does for native stacks.
        __result.StackUnitEncumbrance ??= (ushort?)(__result.EncumbranceVal ?? 0);
        __result.StackUnitValue       ??= (ushort?)(__result.Value           ?? 0);
        __result.StackSize            ??= 1;
        __result.MaxStackSize           = Cfg.MaxStackSize;
    }

    // Same injection for the WCID-only factory path used by loot rollers and other mods.
    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObjectFactory), nameof(WorldObjectFactory.CreateNewWorldObject),
        new Type[] { typeof(uint) })]
    public static void PostCreateNewWorldObject(ref WorldObject __result)
    {
        if (__result == null) return;
        if (__result is NativeStackable) return;
        if (!_wcids.Contains(__result.WeenieClassId)) return;
        if ((__result.MaxStackSize ?? 0) > 1) return;

        __result.StackUnitEncumbrance ??= (ushort?)(__result.EncumbranceVal ?? 0);
        __result.StackUnitValue       ??= (ushort?)(__result.Value           ?? 0);
        __result.StackSize            ??= 1;
        __result.MaxStackSize           = Cfg.MaxStackSize;
    }

    // When ACE calls WorldObject.SetStackSize on a non-native stackable, recalculate
    // total weight and value — normally handled by Stackable.SetStackSize (override),
    // which doesn't run for objects that aren't actual Stackable subclass instances.
    [HarmonyPostfix]
    [HarmonyPatch(typeof(WorldObject), "SetStackSize", new Type[] { typeof(int?) })]
    public static void PostSetStackSize(WorldObject __instance, int? value)
    {
        if (__instance is NativeStackable) return;
        if ((__instance.MaxStackSize ?? 0) <= 1) return;

        __instance.EncumbranceVal = (__instance.StackUnitEncumbrance ?? 0) * (value ?? 1);
        __instance.Value          = (__instance.StackUnitValue       ?? 0) * (value ?? 1);
    }

    // Relaxes the `item is Stackable` class guard in HandleActionStackableMerge so that any
    // WorldObject with MaxStackSize > 1 can participate in the normal drag-to-merge UI.
    //
    // The method contains: ldloc <item>; isinst Stackable; ...check result...
    // Each `isinst Stackable` is replaced with a call to IsEffectivelyStackable, which
    // preserves the same null/non-null return semantics used by the downstream checks.
    [HarmonyTranspiler]
    [HarmonyPatch(typeof(Player), "HandleActionStackableMerge",
        new Type[] { typeof(uint), typeof(uint), typeof(int) })]
    public static IEnumerable<CodeInstruction> TranspileHandleActionStackableMerge(
        IEnumerable<CodeInstruction> instructions)
    {
        var nativeType = typeof(NativeStackable);
        var helper = typeof(Stackable).GetMethod(
            nameof(IsEffectivelyStackable), BindingFlags.Static | BindingFlags.NonPublic);

        foreach (var instr in instructions)
        {
            if (instr.opcode == OpCodes.Isinst && instr.operand is Type t && t == nativeType)
                yield return new CodeInstruction(OpCodes.Call, helper);
            else
                yield return instr;
        }
    }

    // Returns the input object if it qualifies as stackable (native Stackable subclass or
    // MaxStackSize > 1), or null if it does not. Mirrors isinst return semantics so that
    // the surrounding ldnull/cgt.un or brtrue/brfalse instructions work unchanged.
    static object? IsEffectivelyStackable(object obj) =>
        obj is NativeStackable ? obj :
        obj is WorldObject wo && (wo.MaxStackSize ?? 0) > 1 ? obj :
        null;

}

public class StackableSettings
{
    [JsonPropertyName("// MaxStackSize")]
    public string MaxStackSizeDoc { get; init; } = "Maximum stack size assigned to whitelisted items (ACE max 65535).";
    public ushort MaxStackSize { get; set; } = 100;

    [JsonPropertyName("// WcidFile")]
    public string WcidFileDoc { get; init; } = "Path (relative to mod directory) of the WCID groups file. Format: { \"GroupName\": [wcid, ...], ... }";
    public string WcidFile { get; set; } = "StackableWcids.json";
}
