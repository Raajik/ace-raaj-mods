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
                ModManager.Log($"[BetterLootControl] ManaLattice bootstrap: SpellSiphon assembly not loaded.", ModManager.LogLevel.Warn);
                return;
            }

            object? spellSettings = LoadSpellSiphonSettings(asm);
            if (spellSettings == null)
            {
                ModManager.Log($"[BetterLootControl] ManaLattice bootstrap: Could not load SpellSiphon settings (tried {asm.Location}/Settings.json and Activator.CreateInstance).", ModManager.LogLevel.Warn);
                return;
            }

            Type? lootMutator = asm.GetType("SpellSiphon.Features.LootMutator");
            if (lootMutator == null)
            {
                ModManager.Log($"[BetterLootControl] ManaLattice bootstrap: SpellSiphon.Features.LootMutator type not found via reflection.", ModManager.LogLevel.Warn);
                return;
            }

            MethodInfo? pick = lootMutator.GetMethod("PickRandomSpellIds", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
            MethodInfo? addSpell = lootMutator.GetMethod("TryAddSpellId", BindingFlags.Static | BindingFlags.NonPublic | BindingFlags.Public);
            if (pick == null || addSpell == null)
            {
                ModManager.Log($"[BetterLootControl] ManaLattice bootstrap: LootMutator methods not found. Pick={pick != null}, AddSpell={addSpell != null}.", ModManager.LogLevel.Warn);
                return;
            }

            var s = PatchClass.Settings;
            int lo = Math.Clamp(s.ManaLatticeSpellCountMin, 1, 20);
            int hi = Math.Clamp(s.ManaLatticeSpellCountMax, lo, 30);
            object? idsObj = pick.Invoke(null, new[] { spellSettings, lattice, lo, hi });
            if (idsObj is not List<int> ids || ids.Count == 0)
            {
                ModManager.Log($"[BetterLootControl] ManaLattice bootstrap: Spell pool empty (lattice {lattice.Name} WCID {lattice.WeenieClassId}, count {lo}-{hi}). Check SpellSiphon Settings.json spell lists.", ModManager.LogLevel.Warn);
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
                ModManager.Log($"[BetterLootControl] ManaLattice bootstrap: Picked {ids.Count} spell id(s) but TryAddSpellId added none (lattice {lattice.Name} WCID {lattice.WeenieClassId}).", ModManager.LogLevel.Warn);
            }
            else
            {
                ModManager.Log($"[BetterLootControl] ManaLattice bootstrap: Added spells to lattice {lattice.Name} (WCID {lattice.WeenieClassId}).", ModManager.LogLevel.Info);
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
        catch (Exception ex)
        {
            ModManager.Log($"[BetterLootControl] ManaLattice bootstrap exception: {ex.Message}", ModManager.LogLevel.Warn);
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
