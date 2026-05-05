namespace Windblown.Weenies;

/// <summary>
/// Loads custom weenie definitions from JSON, deep-clones any specified base weenie, applies
/// property overrides/deletes, and exposes a thread-safe lookup served by
/// <see cref="WeenieCachePatches"/> via Harmony prefix on <c>WorldDatabaseWithEntityCache.GetCachedWeenie</c>.
///
/// Bootstrap order: <c>PatchClass.Start()</c> calls <see cref="Initialize"/> AFTER <c>base.Start()</c>
/// has applied Harmony patches. While <see cref="IsReady"/> is false the prefix is a no-op so
/// <c>GetCachedWeenie(BaseWcid)</c> returns the vanilla weenie used as the clone source.
/// </summary>
internal static class WeenieRegistry
{
    static readonly ConcurrentDictionary<uint, Weenie> _byWcid = new();
    static readonly ConcurrentDictionary<string, uint> _byClassName = new(StringComparer.OrdinalIgnoreCase);
    // wcid → source WCID whose Give emote should be borrowed when no NPC has a Give emote for `wcid`
    static readonly ConcurrentDictionary<uint, uint> _emoteMirror = new();

    public static volatile bool IsReady;

    public static int Count => _byWcid.Count;

    public static string RegisteredWcidsString =>
        string.Join(", ", _byWcid.Keys.OrderBy(k => k));

    public static bool TryGet(uint wcid, out Weenie weenie) =>
        _byWcid.TryGetValue(wcid, out weenie!);

    public static bool TryGetEmoteMirrorSource(uint wcid, out uint sourceWcid) =>
        _emoteMirror.TryGetValue(wcid, out sourceWcid);

    public static bool TryGetByClassName(string className, out Weenie weenie)
    {
        if (_byClassName.TryGetValue(className, out var wcid) && _byWcid.TryGetValue(wcid, out var w))
        {
            weenie = w;
            return true;
        }
        weenie = null!;
        return false;
    }

    public static void Clear()
    {
        IsReady = false;
        _byWcid.Clear();
        _byClassName.Clear();
        _emoteMirror.Clear();
    }

    public static void Initialize(string modDirectory, Settings cfg)
    {
        Clear();

        var contentDir = Path.Combine(modDirectory, "Content", "Weenies");
        if (!Directory.Exists(contentDir))
        {
            ModManager.Log($"[Windblown] Content/Weenies/ not found at {contentDir} — no custom weenies registered.", ModManager.LogLevel.Info);
            IsReady = true;
            return;
        }

        var files = Directory.GetFiles(contentDir, "*.json", SearchOption.AllDirectories)
            .OrderBy(f => f, StringComparer.OrdinalIgnoreCase)
            .ToList();

        var opts = new JsonSerializerOptions
        {
            ReadCommentHandling = JsonCommentHandling.Skip,
            AllowTrailingCommas = true,
            PropertyNameCaseInsensitive = true,
        };

        foreach (var file in files)
        {
            try
            {
                var json = File.ReadAllText(file);
                var defFile = JsonSerializer.Deserialize<WeenieDefinitionFile>(json, opts);
                if (defFile?.Weenies == null) continue;

                foreach (var def in defFile.Weenies)
                {
                    try
                    {
                        var built = Build(def, cfg, file);
                        if (built == null) continue;

                        _byWcid[def.ClassId] = built;
                        if (!string.IsNullOrEmpty(built.ClassName))
                            _byClassName[built.ClassName] = def.ClassId;
                        if (def.MirrorEmoteFromWcid.HasValue && def.MirrorEmoteFromWcid.Value != 0 && def.MirrorEmoteFromWcid.Value != def.ClassId)
                            _emoteMirror[def.ClassId] = def.MirrorEmoteFromWcid.Value;

                        if (cfg.LogWeenieRegistryVerbose)
                            ModManager.Log($"[Windblown] Registered WCID {def.ClassId} ({built.ClassName}) from {Path.GetFileName(file)}" +
                                           (def.MirrorEmoteFromWcid.HasValue ? $" [emote mirror ← {def.MirrorEmoteFromWcid.Value}]" : ""),
                                           ModManager.LogLevel.Info);
                    }
                    catch (Exception ex)
                    {
                        ModManager.Log($"[Windblown] Failed to build weenie {def?.ClassId} from {Path.GetFileName(file)}: {ex.Message}", ModManager.LogLevel.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Windblown] Failed to load {Path.GetFileName(file)}: {ex.Message}", ModManager.LogLevel.Error);
            }
        }

        IsReady = true;
    }

    static Weenie? Build(WeenieDefinition def, Settings cfg, string sourceFile)
    {
        if (def.ClassId == 0)
        {
            ModManager.Log($"[Windblown] Skipping entry with ClassId=0 in {Path.GetFileName(sourceFile)}", ModManager.LogLevel.Warn);
            return null;
        }

        Weenie target;
        if (def.BaseWcid.HasValue)
        {
            // Registry-first resolution: prefer a Windblown-injected weenie if it has already been built
            // this Initialize() pass, so dependent tiers inherit our overrides (Name, MaxStackSize, IconUnderlay
            // etc.) instead of the raw vanilla cached weenie. Self-reference (e.g. 24835 → 24835) is safe
            // because the registry is checked BEFORE the current entry is added.
            //
            // Authoring rule: list base entries before their dependents in the JSON file. JSON arrays
            // preserve order, so within one file this is deterministic. Across files the order is by
            // alphabetic filename via Directory.GetFiles(...).OrderBy(StringComparer.OrdinalIgnoreCase).
            Weenie? source = null;
            if (_byWcid.TryGetValue(def.BaseWcid.Value, out var alreadyInjected) && alreadyInjected != null)
            {
                source = alreadyInjected;
                if (cfg.LogWeenieRegistryVerbose)
                    ModManager.Log($"[Windblown] WCID {def.ClassId}: BaseWcid {def.BaseWcid.Value} resolved from Windblown registry (already injected).", ModManager.LogLevel.Info);
            }
            else
            {
                source = DatabaseManager.World.GetCachedWeenie(def.BaseWcid.Value);
                if (cfg.LogWeenieRegistryVerbose)
                    ModManager.Log($"[Windblown] WCID {def.ClassId}: BaseWcid {def.BaseWcid.Value} resolved from vanilla cache.", ModManager.LogLevel.Info);
            }

            if (source == null)
            {
                ModManager.Log($"[Windblown] WCID {def.ClassId}: BaseWcid {def.BaseWcid.Value} not found in Windblown registry OR vanilla cache; building empty weenie. " +
                               "If your base WCID is itself a custom weenie, list it before its dependents in the JSON file.", ModManager.LogLevel.Warn);
                target = new Weenie();
            }
            else
            {
                target = ShallowCloneWeenie(source);
            }
        }
        else
        {
            target = new Weenie();
        }

        target.WeenieClassId = def.ClassId;

        if (!string.IsNullOrWhiteSpace(def.ClassName))
            target.ClassName = def.ClassName!;

        if (!string.IsNullOrWhiteSpace(def.WeenieType))
        {
            if (Enum.TryParse<WeenieType>(def.WeenieType, ignoreCase: true, out var wt))
                target.WeenieType = wt;
            else
                ModManager.Log($"[Windblown] WCID {def.ClassId}: unknown WeenieType '{def.WeenieType}'", ModManager.LogLevel.Warn);
        }

        ApplyOverrides(target, def, cfg);
        ApplyDeletes(target, def);

        return target;
    }

    static Weenie ShallowCloneWeenie(Weenie src)
    {
        // Each dictionary/list copied into a NEW instance so mutating our clone does not touch the vanilla cached weenie.
        // Values themselves are not deep-copied: we never mutate them in place — only replace by key.
        var c = new Weenie
        {
            WeenieClassId = src.WeenieClassId,
            ClassName = src.ClassName,
            WeenieType = src.WeenieType,
            PropertiesBool = src.PropertiesBool != null ? new Dictionary<PropertyBool, bool>(src.PropertiesBool) : null,
            PropertiesDID = src.PropertiesDID != null ? new Dictionary<PropertyDataId, uint>(src.PropertiesDID) : null,
            PropertiesFloat = src.PropertiesFloat != null ? new Dictionary<PropertyFloat, double>(src.PropertiesFloat) : null,
            PropertiesIID = src.PropertiesIID != null ? new Dictionary<PropertyInstanceId, uint>(src.PropertiesIID) : null,
            PropertiesInt = src.PropertiesInt != null ? new Dictionary<PropertyInt, int>(src.PropertiesInt) : null,
            PropertiesInt64 = src.PropertiesInt64 != null ? new Dictionary<PropertyInt64, long>(src.PropertiesInt64) : null,
            PropertiesString = src.PropertiesString != null ? new Dictionary<PropertyString, string>(src.PropertiesString) : null,
            PropertiesPosition = src.PropertiesPosition != null ? new Dictionary<PositionType, PropertiesPosition>(src.PropertiesPosition) : null,
            PropertiesSpellBook = src.PropertiesSpellBook != null ? new Dictionary<int, float>(src.PropertiesSpellBook) : null,
            PropertiesAnimPart = src.PropertiesAnimPart != null ? new List<PropertiesAnimPart>(src.PropertiesAnimPart) : null,
            PropertiesPalette = src.PropertiesPalette != null ? new List<PropertiesPalette>(src.PropertiesPalette) : null,
            PropertiesTextureMap = src.PropertiesTextureMap != null ? new List<PropertiesTextureMap>(src.PropertiesTextureMap) : null,
            // PropertiesCreateList intentionally NOT copied — custom weenies should not inherit
            // the base creature's drop list. If a JSON entry needs it we can wire later.
            PropertiesCreateList = null,
            PropertiesEmote = src.PropertiesEmote != null ? new List<PropertiesEmote>(src.PropertiesEmote) : null,
            PropertiesEventFilter = src.PropertiesEventFilter != null ? new HashSet<int>(src.PropertiesEventFilter) : null,
            PropertiesGenerator = src.PropertiesGenerator != null ? new List<PropertiesGenerator>(src.PropertiesGenerator) : null,
            PropertiesAttribute = src.PropertiesAttribute != null ? new Dictionary<PropertyAttribute, PropertiesAttribute>(src.PropertiesAttribute) : null,
            PropertiesAttribute2nd = src.PropertiesAttribute2nd != null ? new Dictionary<PropertyAttribute2nd, PropertiesAttribute2nd>(src.PropertiesAttribute2nd) : null,
            PropertiesBodyPart = src.PropertiesBodyPart != null ? new Dictionary<CombatBodyPart, PropertiesBodyPart>(src.PropertiesBodyPart) : null,
            PropertiesSkill = src.PropertiesSkill != null ? new Dictionary<Skill, PropertiesSkill>(src.PropertiesSkill) : null,
            PropertiesBook = src.PropertiesBook,
            PropertiesBookPageData = src.PropertiesBookPageData != null ? new List<PropertiesBookPageData>(src.PropertiesBookPageData) : null,
        };
        return c;
    }

    static void ApplyOverrides(Weenie t, WeenieDefinition def, Settings cfg)
    {
        if (def.PropertiesInt is { Count: > 0 } pi)
        {
            t.PropertiesInt ??= new Dictionary<PropertyInt, int>();
            foreach (var (k, v) in pi)
                if (Enum.TryParse<PropertyInt>(k, ignoreCase: true, out var pk))
                    t.PropertiesInt[pk] = v;
                else
                    Warn(def.ClassId, "PropertyInt", k);
        }

        if (def.PropertiesInt64 is { Count: > 0 } pi64)
        {
            t.PropertiesInt64 ??= new Dictionary<PropertyInt64, long>();
            foreach (var (k, v) in pi64)
                if (Enum.TryParse<PropertyInt64>(k, ignoreCase: true, out var pk))
                    t.PropertiesInt64[pk] = v;
                else
                    Warn(def.ClassId, "PropertyInt64", k);
        }

        if (def.PropertiesBool is { Count: > 0 } pb)
        {
            t.PropertiesBool ??= new Dictionary<PropertyBool, bool>();
            foreach (var (k, v) in pb)
                if (Enum.TryParse<PropertyBool>(k, ignoreCase: true, out var pk))
                    t.PropertiesBool[pk] = v;
                else
                    Warn(def.ClassId, "PropertyBool", k);
        }

        if (def.PropertiesFloat is { Count: > 0 } pf)
        {
            t.PropertiesFloat ??= new Dictionary<PropertyFloat, double>();
            foreach (var (k, v) in pf)
                if (Enum.TryParse<PropertyFloat>(k, ignoreCase: true, out var pk))
                    t.PropertiesFloat[pk] = v;
                else
                    Warn(def.ClassId, "PropertyFloat", k);
        }

        if (def.PropertiesString is { Count: > 0 } ps)
        {
            t.PropertiesString ??= new Dictionary<PropertyString, string>();
            foreach (var (k, v) in ps)
                if (Enum.TryParse<PropertyString>(k, ignoreCase: true, out var pk))
                    t.PropertiesString[pk] = v;
                else
                    Warn(def.ClassId, "PropertyString", k);
        }

        if (def.PropertiesDID is { Count: > 0 } pd)
        {
            t.PropertiesDID ??= new Dictionary<PropertyDataId, uint>();
            foreach (var (k, v) in pd)
                if (Enum.TryParse<PropertyDataId>(k, ignoreCase: true, out var pk))
                    t.PropertiesDID[pk] = v;
                else
                    Warn(def.ClassId, "PropertyDataId", k);
        }

        static void Warn(uint wcid, string family, string name) =>
            ModManager.Log($"[Windblown] WCID {wcid}: unknown {family} '{name}'", ModManager.LogLevel.Warn);
    }

    static void ApplyDeletes(Weenie t, WeenieDefinition def)
    {
        var d = def.Delete;
        if (d == null) return;

        if (d.PropertiesInt is { Count: > 0 } && t.PropertiesInt != null)
            foreach (var k in d.PropertiesInt)
                if (Enum.TryParse<PropertyInt>(k, ignoreCase: true, out var pk)) t.PropertiesInt.Remove(pk);

        if (d.PropertiesInt64 is { Count: > 0 } && t.PropertiesInt64 != null)
            foreach (var k in d.PropertiesInt64)
                if (Enum.TryParse<PropertyInt64>(k, ignoreCase: true, out var pk)) t.PropertiesInt64.Remove(pk);

        if (d.PropertiesBool is { Count: > 0 } && t.PropertiesBool != null)
            foreach (var k in d.PropertiesBool)
                if (Enum.TryParse<PropertyBool>(k, ignoreCase: true, out var pk)) t.PropertiesBool.Remove(pk);

        if (d.PropertiesFloat is { Count: > 0 } && t.PropertiesFloat != null)
            foreach (var k in d.PropertiesFloat)
                if (Enum.TryParse<PropertyFloat>(k, ignoreCase: true, out var pk)) t.PropertiesFloat.Remove(pk);

        if (d.PropertiesString is { Count: > 0 } && t.PropertiesString != null)
            foreach (var k in d.PropertiesString)
                if (Enum.TryParse<PropertyString>(k, ignoreCase: true, out var pk)) t.PropertiesString.Remove(pk);

        if (d.PropertiesDID is { Count: > 0 } && t.PropertiesDID != null)
            foreach (var k in d.PropertiesDID)
                if (Enum.TryParse<PropertyDataId>(k, ignoreCase: true, out var pk)) t.PropertiesDID.Remove(pk);
    }
}
