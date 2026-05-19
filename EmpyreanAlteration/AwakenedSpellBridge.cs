using System.IO;
using System.Reflection;
using System.Text.Json;
using ACE.Server.WorldObjects;

namespace EmpyreanAlteration;

// Rolls Spellsiphon gem spell pool onto awakened items when Spellsiphon is present (reflection; no assembly reference).
internal static class AwakenedSpellBridge
{
    internal static void TryRollSpellsOntoItem(WorldObject item, Settings s)
    {
        if (item == null || !s.EnableAwakenRandomSpells)
            return;

        try
        {
            Assembly? asm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => string.Equals(a.GetName().Name, "Spellsiphon", StringComparison.OrdinalIgnoreCase));
            if (asm == null)
                return;

            object? spellSettings = LoadSpellsiphonSettings(asm);
            if (spellSettings == null)
                return;

            Type? lootMutator = asm.GetType("Spellsiphon.Features.LootMutator");
            MethodInfo? pick = lootMutator?.GetMethod("PickRandomSpellIds", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
            MethodInfo? addSpell = lootMutator?.GetMethod("TryAddSpellId", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
            if (pick == null || addSpell == null)
                return;

            int lo = Math.Clamp(s.AwakenRandomSpellCountMin, 1, 20);
            int hi = Math.Clamp(s.AwakenRandomSpellCountMax, lo, 30);
            object? idsObj = pick.Invoke(null, new[] { spellSettings, item, lo, hi });
            if (idsObj is not List<int> ids || ids.Count == 0)
                return;

            foreach (int id in ids)
            {
                if (id == 0)
                    continue;
                addSpell.Invoke(null, new object[] { item, id });
            }
        }
        catch
        {
            // Spellsiphon absent or incompatible — skip bonus spells.
        }
    }

    static object? LoadSpellsiphonSettings(Assembly asm)
    {
        Type? t = asm.GetType("Spellsiphon.Settings");
        if (t == null)
            return null;

        try
        {
            string? dir = Path.GetDirectoryName(asm.Location);
            if (!string.IsNullOrEmpty(dir))
            {
                string path = Path.Combine(dir, "Settings.json");
                if (File.Exists(path))
                {
                    string json = File.ReadAllText(path);
                    return JsonSerializer.Deserialize(json, t);
                }
            }
        }
        catch
        {
            // fall through to defaults
        }

        try
        {
            return Activator.CreateInstance(t);
        }
        catch
        {
            return null;
        }
    }
}
