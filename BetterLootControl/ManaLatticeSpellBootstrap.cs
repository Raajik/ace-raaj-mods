using System.IO;
using System.Linq;
using System.Reflection;
using System.Text.Json;
using ACE.Server.WorldObjects;

namespace BetterLootControl;

internal static class ManaLatticeSpellBootstrap
{
    internal static void TryRollSpellsOntoLattice(WorldObject lattice)
    {
        if (lattice == null)
            return;

        try
        {
            Assembly? asm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => string.Equals(a.GetName().Name, "SpellSiphon", StringComparison.OrdinalIgnoreCase));
            if (asm == null)
                return;

            object? spellSettings = LoadSpellSiphonSettings(asm);
            if (spellSettings == null)
                return;

            Type? lootMutator = asm.GetType("SpellSiphon.Features.LootMutator");
            MethodInfo? pick = lootMutator?.GetMethod("PickRandomSpellIds", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
            MethodInfo? addSpell = lootMutator?.GetMethod("TryAddSpellId", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
            if (pick == null || addSpell == null)
                return;

            var s = PatchClass.Settings;
            int lo = Math.Clamp(s.ManaLatticeSpellCountMin, 1, 20);
            int hi = Math.Clamp(s.ManaLatticeSpellCountMax, lo, 30);
            object? idsObj = pick.Invoke(null, new[] { spellSettings, lattice, lo, hi });
            if (idsObj is not List<int> ids || ids.Count == 0)
                return;

            foreach (int id in ids)
            {
                if (id == 0)
                    continue;
                addSpell.Invoke(null, new object[] { lattice, id });
            }
        }
        catch
        {
            // Optional SpellSiphon integration.
        }
    }

    static object? LoadSpellSiphonSettings(Assembly asm)
    {
        Type? t = asm.GetType("SpellSiphon.Settings");
        if (t == null)
            return null;

        try
        {
            string? dir = Path.GetDirectoryName(asm.Location);
            if (!string.IsNullOrEmpty(dir))
            {
                string path = Path.Combine(dir, "Settings.json");
                if (File.Exists(path))
                    return JsonSerializer.Deserialize(File.ReadAllText(path), t);
            }
        }
        catch
        {
            // fall through
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
