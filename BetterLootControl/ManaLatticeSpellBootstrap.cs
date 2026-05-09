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
            {
                ModManager.Log($"[BetterLootControl] Mana lattice spell bootstrap skipped: SpellSiphon assembly not loaded (lattice {lattice.Name} WCID {lattice.WeenieClassId}).", ModManager.LogLevel.Warn);
                return;
            }

            object? spellSettings = LoadSpellSiphonSettings(asm);
            if (spellSettings == null)
            {
                ModManager.Log($"[BetterLootControl] Mana lattice spell bootstrap skipped: could not load SpellSiphon settings (lattice {lattice.Name} WCID {lattice.WeenieClassId}).", ModManager.LogLevel.Warn);
                return;
            }

            Type? lootMutator = asm.GetType("SpellSiphon.Features.LootMutator");
            MethodInfo? pick = lootMutator?.GetMethod("PickRandomSpellIds", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
            MethodInfo? addSpell = lootMutator?.GetMethod("TryAddSpellId", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
            if (pick == null || addSpell == null)
            {
                ModManager.Log("[BetterLootControl] Mana lattice spell bootstrap skipped: SpellSiphon LootMutator PickRandomSpellIds/TryAddSpellId not found.", ModManager.LogLevel.Warn);
                return;
            }

            var s = PatchClass.Settings;
            int lo = Math.Clamp(s.ManaLatticeSpellCountMin, 1, 20);
            int hi = Math.Clamp(s.ManaLatticeSpellCountMax, lo, 30);
            object? idsObj = pick.Invoke(null, new[] { spellSettings, lattice, lo, hi });
            if (idsObj is not List<int> ids || ids.Count == 0)
            {
                ModManager.Log($"[BetterLootControl] Mana lattice spell pool empty after PickRandomSpellIds (lattice {lattice.Name} WCID {lattice.WeenieClassId}, count {lo}-{hi}). Check SpellSiphon Settings.json spell lists.", ModManager.LogLevel.Warn);
                return;
            }

            bool any = false;
            foreach (int id in ids)
            {
                if (id == 0)
                    continue;
                object? ok = addSpell.Invoke(null, new object[] { lattice, id });
                if (ok is bool b && b)
                    any = true;
            }

            if (!any)
            {
                ModManager.Log($"[BetterLootControl] Mana lattice bootstrap picked {ids.Count} spell id(s) but TryAddSpellId added none (lattice {lattice.Name} WCID {lattice.WeenieClassId}).", ModManager.LogLevel.Warn);
            }

            if (any)
            {
                try
                {
                    lattice.CalculateObjDesc();
                    lattice.EnqueueBroadcastUpdateObject();
                }
                catch
                {
                }
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
