using ACE.Common.Extensions;
using ACE.Database.Models.World;
using ACE.Entity.Enum;
using ACE.Server.Command;
using ACE.Server.Factories;
using ACE.Server.Factories.Tables;
using ACE.Server.Managers;
using ACE.Server.Network;
using ACE.Server.WorldObjects;

namespace ValheelContent;

[HarmonyPatch]
public class PatchClass : BasicPatch<Settings>
{
    private static string _modDir = "";

    public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName) { }

    // No-op patch required to initialize the framework's Harmony instance.
    // Without at least one valid patch, base.Start() fails and OnWorldOpen never fires.
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void OnPlayerEnterWorld(Player __instance) { }

    // ── Top-level loot tier clamp ──────────────────────────────────────────
    // Remap tier on the TreasureDeath profile before any loot generation runs.
    // This covers all downstream table lookups (Tables.*, Tables.Wcids.*) in
    // one place so individual table classes never see an out-of-range tier.
    // RemapTier is idempotent, so the per-method patches below are safe backup.

    [HarmonyPrefix]
    [HarmonyPatch(typeof(LootGenerationFactory), nameof(LootGenerationFactory.CreateRandomLootObjects),
        new[] { typeof(TreasureDeath) })]
    public static void LootGenFactory_Prefix(TreasureDeath profile, ref int __state)
    {
        __state = profile.Tier;
        profile.Tier = RemapTier(profile.Tier);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(LootGenerationFactory), nameof(LootGenerationFactory.CreateRandomLootObjects),
        new[] { typeof(TreasureDeath) })]
    public static void LootGenFactory_Postfix(TreasureDeath profile, int __state)
    {
        profile.Tier = __state;
    }

    // ── Tier quality remapping ─────────────────────────────────────────────
    // Valheel content uses tiers up to T11. ACE's QualityChance only supports
    // T1-T8. This patch compresses the tier range so:
    //   T1-T2  → T1 curve  (sparse, low quality)
    //   T3-T4  → T3 curve
    //   T5-T6  → T5 curve
    //   T7     → T7 curve
    //   T8-T11 → T8 curve  (top distribution — rare high-end stats)
    // Also prevents IndexOutOfRangeException in QualityChancePerTier[Tier-1]
    // for any tier above 8.

    private static int RemapTier(int tier) => tier switch
    {
        <= 2 => 1,
        <= 4 => 3,
        <= 6 => 5,
        7 => 7,
        _ => 8
    };

    // Some ACE tables only have 6 entries (T1–T6); clamp after remapping.
    private static int ClampTier(int tier, int max) => Math.Min(RemapTier(tier), max);

    // ── Monster targeting tactic crash fix ────────────────────────────────────
    // ACE bug: SelectTargetingTactic calls ThreadSafeRandom.Next(1, count-1)
    // where count is the number of flag bits.  When count == 1, Next(1, 0)
    // returns 1 (inclusive semantics), then accesses possibleTactics[1] which
    // is out of range.  Guard here so single-tactic creatures don't crash.

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.SelectTargetingTactic))]
    public static bool SelectTargetingTactic_Prefix(Creature __instance)
    {
        var targetingTactic = __instance.TargetingTactic;
        if (targetingTactic == TargetingTactic.None)
            targetingTactic = TargetingTactic.Random | TargetingTactic.TopDamager;

        var possibleTactics = EnumHelper.GetFlags(targetingTactic);
        if (possibleTactics.Count >= 2)
            return true;

        __instance.CurrentTargetingTactic = possibleTactics.Count == 1
            ? (TargetingTactic)possibleTactics[0]
            : TargetingTactic.Random;
        return false;
    }

    // ── FindNextTarget log spam suppression ──────────────────────────────────
    // ACE writes to Console.WriteLine when CurrentTargetingTactic is None.
    // This fires constantly for invasion mobs and spams the server log.
    // Pre-set the tactic to Random before the original method runs.

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), "FindNextTarget")]
    public static void FindNextTarget_Prefix(Creature __instance)
    {
        if (__instance.CurrentTargetingTactic == TargetingTactic.None)
            __instance.CurrentTargetingTactic = TargetingTactic.Random;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(QualityChance), nameof(QualityChance.GetQualityChancesForTier))]
    public static bool GetQualityChancesForTier_Prefix(ref int tier)
    {
        tier = RemapTier(tier);
        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(QualityChance), nameof(QualityChance.Roll))]
    public static void QualityChance_Roll_Prefix(TreasureDeath treasureDeath, ref int __state)
    {
        __state = treasureDeath.Tier;
        treasureDeath.Tier = RemapTier(treasureDeath.Tier);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(QualityChance), nameof(QualityChance.Roll))]
    public static void QualityChance_Roll_Postfix(TreasureDeath treasureDeath, int __state)
    {
        treasureDeath.Tier = __state;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(QualityChance), nameof(QualityChance.RollInterval))]
    public static void QualityChance_RollInterval_Prefix(TreasureDeath treasureDeath, ref int __state)
    {
        __state = treasureDeath.Tier;
        treasureDeath.Tier = RemapTier(treasureDeath.Tier);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(QualityChance), nameof(QualityChance.RollInterval))]
    public static void QualityChance_RollInterval_Postfix(TreasureDeath treasureDeath, int __state)
    {
        treasureDeath.Tier = __state;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(PetDeviceChance), nameof(PetDeviceChance.Roll))]
    public static void PetDeviceChance_Roll_Prefix(TreasureDeath profile, ref int __state)
    {
        __state = profile.Tier;
        profile.Tier = RemapTier(profile.Tier);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(PetDeviceChance), nameof(PetDeviceChance.Roll))]
    public static void PetDeviceChance_Roll_Postfix(TreasureDeath profile, int __state)
    {
        profile.Tier = __state;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(ArmorModVsTypeChance), nameof(ArmorModVsTypeChance.Roll))]
    public static void ArmorModVsTypeChance_Roll_Prefix(ref int tier) => tier = ClampTier(tier, 8);

    [HarmonyPrefix]
    [HarmonyPatch(typeof(ArmorModVsTypeChance), nameof(ArmorModVsTypeChance.RollQualityLevel))]
    public static void ArmorModVsTypeChance_RollQualityLevel_Prefix(TreasureDeath profile, ref int __state)
    {
        __state = profile.Tier;
        profile.Tier = ClampTier(profile.Tier, 8);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(ArmorModVsTypeChance), nameof(ArmorModVsTypeChance.RollQualityLevel))]
    public static void ArmorModVsTypeChance_RollQualityLevel_Postfix(TreasureDeath profile, int __state)
        => profile.Tier = __state;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(ArmorTypeChance), nameof(ArmorTypeChance.Roll))]
    public static void ArmorTypeChance_Roll_Prefix(ref int tier) => tier = ClampTier(tier, 8);

    [HarmonyPrefix]
    [HarmonyPatch(typeof(CantripChance), nameof(CantripChance.RollNumCantrips))]
    public static void CantripChance_RollNumCantrips_Prefix(TreasureDeath profile, ref int __state)
    {
        __state = profile.Tier;
        profile.Tier = ClampTier(profile.Tier, 8);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(CantripChance), nameof(CantripChance.RollNumCantrips))]
    public static void CantripChance_RollNumCantrips_Postfix(TreasureDeath profile, int __state)
        => profile.Tier = __state;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(CantripChance), nameof(CantripChance.RollCantripLevel))]
    public static void CantripChance_RollCantripLevel_Prefix(TreasureDeath profile, ref int __state)
    {
        __state = profile.Tier;
        profile.Tier = ClampTier(profile.Tier, 8);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(CantripChance), nameof(CantripChance.RollCantripLevel))]
    public static void CantripChance_RollCantripLevel_Postfix(TreasureDeath profile, int __state)
        => profile.Tier = __state;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(CloakChance), nameof(CloakChance.Roll_ItemMaxLevel))]
    public static void CloakChance_Roll_ItemMaxLevel_Prefix(TreasureDeath profile, ref int __state)
    {
        __state = profile.Tier;
        profile.Tier = ClampTier(profile.Tier, 8);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(CloakChance), nameof(CloakChance.Roll_ItemMaxLevel))]
    public static void CloakChance_Roll_ItemMaxLevel_Postfix(TreasureDeath profile, int __state)
        => profile.Tier = __state;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(GemClassChance), nameof(GemClassChance.Roll))]
    public static void GemClassChance_Roll_Prefix(ref int tier) => tier = ClampTier(tier, 6);

    [HarmonyPrefix]
    [HarmonyPatch(typeof(NumCantrips), nameof(NumCantrips.RollNumCantrips))]
    public static void NumCantrips_RollNumCantrips_Prefix(TreasureDeath profile, ref int __state)
    {
        __state = profile.Tier;
        profile.Tier = ClampTier(profile.Tier, 8);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(NumCantrips), nameof(NumCantrips.RollNumCantrips))]
    public static void NumCantrips_RollNumCantrips_Postfix(TreasureDeath profile, int __state)
        => profile.Tier = __state;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(NumCantrips), nameof(NumCantrips.RollCantripLevel))]
    public static void NumCantrips_RollCantripLevel_Prefix(TreasureDeath profile, ref int __state)
    {
        __state = profile.Tier;
        profile.Tier = ClampTier(profile.Tier, 8);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(NumCantrips), nameof(NumCantrips.RollCantripLevel))]
    public static void NumCantrips_RollCantripLevel_Postfix(TreasureDeath profile, int __state)
        => profile.Tier = __state;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(ScrollLevelChance), nameof(ScrollLevelChance.Roll))]
    public static void ScrollLevelChance_Roll_Prefix(TreasureDeath profile, ref int __state)
    {
        __state = profile.Tier;
        profile.Tier = ClampTier(profile.Tier, 8);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(ScrollLevelChance), nameof(ScrollLevelChance.Roll))]
    public static void ScrollLevelChance_Roll_Postfix(TreasureDeath profile, int __state)
        => profile.Tier = __state;

    [HarmonyPrefix]
    [HarmonyPatch(typeof(SpellLevelChance), nameof(SpellLevelChance.Roll))]
    public static void SpellLevelChance_Roll_Prefix(ref int tier) => tier = ClampTier(tier, 8);

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorkmanshipChance), nameof(WorkmanshipChance.Roll))]
    public static void WorkmanshipChance_Roll_Prefix(ref int tier) => tier = ClampTier(tier, 6);

    public override void Start()
    {
        base.Start();
        Settings = SettingsContainer.Settings ?? new Settings();
        _modDir = ModC.ModPath;
        
        // Workaround: SettingsContainer sometimes fails to deserialize List<string> properties.
        // Manually deserialize from Settings.json if the lists are empty.
        var settingsPath = System.IO.Path.Combine(_modDir, "Settings.json");
        if (System.IO.File.Exists(settingsPath) && (Settings.DisabledContentFolders == null || Settings.DisabledContentFolders.Count == 0))
        {
            try
            {
                var json = System.IO.File.ReadAllText(settingsPath);
                var manualSettings = System.Text.Json.JsonSerializer.Deserialize<Settings>(json);
                if (manualSettings != null)
                {
                    Settings = manualSettings;
                    SettingsContainer.Settings = manualSettings;
                    ModManager.Log($"[Valheel] Manually deserialized Settings.json — DisabledContentFolders: {Settings.DisabledContentFolders.Count}, EnabledContentFiles: {Settings.EnabledContentFiles.Count}", ModManager.LogLevel.Info);
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Valheel] Manual deserialize failed: {ex.Message}", ModManager.LogLevel.Error);
            }
        }
        
        Settings.NeverImportFiles ??= new List<string> { "06-landblock/0007.sql" };

        ContentImporter.Initialize(Settings, _modDir);
    }

    public override async Task OnWorldOpen()
    {
        try
        {
            if (Settings?.EnableValheelContent == true && Settings?.ImportOnStartup == true)
            {
                await Task.Run(() => ContentImporter.RunImport());
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Valheel] OnWorldOpen error: {ex.Message}", ModManager.LogLevel.Error);
        }
    }

    [CommandHandler("valheel", AccessLevel.Admin, CommandHandlerFlag.None, 0,
        "Valheel content management. Usage: /valheel import | status")]
    public static void HandleValheel(Session session, params string[] parameters)
    {
        var cmd = parameters.Length > 0 ? parameters[0].Trim().ToLowerInvariant() : "status";

        switch (cmd)
        {
            case "import":
                if (!ContentImporter.IsSqlImportAllowed())
                {
                    session.Player?.SendMessage("[Valheel] Import skipped: set EnableValheelContent to true in ValheelContent/Settings.json (SQL is off by default).", ChatMessageType.System);
                    return;
                }

                session.Player?.SendMessage("[Valheel] Starting content import...", ChatMessageType.Broadcast);
                _ = Task.Run(() => ContentImporter.RunImport());
                break;

            case "status":
                SendStatus(session);
                break;

            default:
                session.Player?.SendMessage("Usage: /valheel import | status", ChatMessageType.System);
                break;
        }
    }

    static void SendStatus(Session session)
    {
        var modDir = _modDir;
        var statePath = ContentImporter.ResolveStatePath();
        var state = ContentHashTracker.LoadState(statePath);
        var player = session.Player;

        if (player == null) return;

        if (state == null)
        {
            player.SendMessage("[Valheel] No import state found. Content has not been imported yet.", ChatMessageType.Broadcast);
            return;
        }

        var lastImport = state.LastImportUtc;
        var timeAgo = DateTime.UtcNow - lastImport;
        var timeAgoStr = timeAgo.TotalDays >= 1
            ? $"{timeAgo.TotalDays:F1} days ago"
            : timeAgo.TotalHours >= 1
                ? $"{timeAgo.TotalHours:F1} hours ago"
                : $"{timeAgo.TotalMinutes:F1} minutes ago";

        player.SendMessage($"[Valheel] Last import: {lastImport:yyyy-MM-dd HH:mm:ss} UTC ({timeAgoStr})", ChatMessageType.Broadcast);
        player.SendMessage($"[Valheel] Files tracked: {state.FileHashes.Count:N0}", ChatMessageType.Broadcast);

        var contentPath = Path.Combine(modDir, "Content");
        if (Directory.Exists(contentPath))
        {
            var categories = Directory.GetDirectories(contentPath);
            foreach (var cat in categories.OrderBy(c => c))
            {
                var catName = Path.GetFileName(cat);
                var count = Directory.GetFiles(cat, "*.sql", SearchOption.AllDirectories).Length;
                player.SendMessage($"[Valheel]   {catName}: {count:N0} SQL files", ChatMessageType.Broadcast);
            }
        }
    }
}
