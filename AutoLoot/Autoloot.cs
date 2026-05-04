using System.Collections.Concurrent;
using System.Reflection;
using AceRaajMods.Shared;

namespace AutoLoot;

public class AutoLoot
{
    // ── Per-player state ─────────────────────────────────────────────────────

    static readonly ConcurrentDictionary<uint, ConcurrentDictionary<string, LootCore>> lootProfiles = new();
    static readonly ConcurrentDictionary<uint, bool> lootNotifications = new();
    static readonly ConcurrentDictionary<uint, bool> unknownScrolls = new();
    internal static readonly ConcurrentDictionary<uint, int> autosalvageMode = new(); // 0=off, 1=short, 2=full
    static readonly ConcurrentDictionary<uint, bool> loadedPlayers = new();

    // Achievement tracking
    static readonly ConcurrentDictionary<uint, int> keyUnlocks = new();
    static readonly ConcurrentDictionary<uint, int> lockpickUnlocks = new();
    static readonly ConcurrentDictionary<uint, int> itemsSalvaged = new();
    static readonly ConcurrentDictionary<uint, bool> keyUnlockNotified = new();
    static readonly ConcurrentDictionary<uint, bool> lockpickUnlockNotified = new();
    static readonly ConcurrentDictionary<uint, bool> salvageUnlockNotified = new();

    // Mirrors PlayerPrefs.AutolootSalvageDefaultsApplied; updated on load/save for one-time full defaults.
    static readonly ConcurrentDictionary<uint, bool> AutolootSalvageDefaultsAppliedByPlayer = new();

    static uint LootKey(Player player) => player.Guid.Full;

    static string LootDisplayName(WorldObject item) => string.IsNullOrEmpty(item.Name) ? $"unnamed item (wcid {item.WeenieClassId})" : item.Name;

    static readonly JsonSerializerOptions JsonOptions = new() { WriteIndented = true };

    static readonly string[] BundledDefaultProfileFileNames =
    [
        "Currency.utl",
        "Trophies.utl",
    ];

    static readonly HashSet<uint> LockpickWcids = new()
        { 510, 511, 512, 513, 514, 515, 516, 545, 27672 };

    // Level 8 spellcrafting components: quills, inks, skill glyphs
    static readonly HashSet<uint> Level8CompWcids = new()
    {
        // Quills
        37362, 37363, 37364, 37365,
        // Inks
        37353, 37354, 37355, 37356, 37357, 37358, 37359, 37360, 37361,
        // Skill Glyphs
        6322, 6323, 6324, 6325, 6326, 6327, 6328,
        19400, 19401, 19402, 19403, 19404, 19405, 19406, 19407, 19408, 19409, 19410,
        37310, 37341, 37346, 38760, 41746,
    };

    static IReadOnlyList<string> GetEffectiveDefaultProfileNames(Settings settings)
    {
        if (settings.DefaultActiveProfiles is { Count: > 0 })
            return settings.DefaultActiveProfiles;

        if (!string.IsNullOrWhiteSpace(settings.DefaultProfile))
            return new[] { settings.DefaultProfile.Trim() };

        return BundledDefaultProfileFileNames;
    }

    static bool UseExplicitDefaultProfileAllowlist(Settings? settings)
    {
        if (settings is null)
            return false;
        if (settings.DefaultActiveProfiles is { Count: > 0 })
            return true;
        if (!string.IsNullOrWhiteSpace(settings.DefaultProfile))
            return true;
        return false;
    }

    static string[] ResolveCommandProfilePaths(Settings? settings)
    {
        if (settings is null || string.IsNullOrWhiteSpace(settings.LootProfilePath))
            return Array.Empty<string>();
        if (!Directory.Exists(settings.LootProfilePath))
            return Array.Empty<string>();

        string[] disk = Directory.GetFiles(settings.LootProfilePath, "*.utl", SearchOption.TopDirectoryOnly);
        if (disk.Length == 0)
            return Array.Empty<string>();

        if (!UseExplicitDefaultProfileAllowlist(settings))
            return disk;

        List<string> list = new();
        foreach (string raw in GetEffectiveDefaultProfileNames(settings))
        {
            string fn = raw.Trim();
            if (string.IsNullOrEmpty(fn))
                continue;
            if (!fn.EndsWith(".utl", StringComparison.OrdinalIgnoreCase))
                fn += ".utl";
            string? full = disk.FirstOrDefault(p => Path.GetFileName(p).Equals(fn, StringComparison.OrdinalIgnoreCase));
            if (full is not null)
                list.Add(full);
        }

        return list.ToArray();
    }

    // Same as /autoloot on: all unlocked profiles + unknown scrolls + AutoSalvage (BetterSupportSkills).
    static void ApplyFullAutolootOn(Player player)
    {
        if (player is null || PatchClass.Settings is null)
            return;

        EnsureLootProfilePathForDiskOps();
        if (string.IsNullOrWhiteSpace(PatchClass.Settings.LootProfilePath))
            return;

        string[] profiles = ResolveCommandProfilePaths(PatchClass.Settings);
        ConcurrentDictionary<string, LootCore> playerProfiles = lootProfiles.GetOrAdd(LootKey(player), _ => new ConcurrentDictionary<string, LootCore>());

        foreach (string path in profiles)
        {
            if (playerProfiles.ContainsKey(path))
                continue;
            if (IsProfileLockedByName(path, player))
                continue;

            LootCore core = new LootCore();
            core.Startup();
            core.LoadProfile(path, false);
            playerProfiles[path] = core;
        }

        unknownScrolls[LootKey(player)] = true;
        BetterSupportSkillsBridge.SetSalvageEnabled(player, true);
    }

    // PlayerEnterWorld can run before OnStartSuccess; Settings.json may leave LootProfilePath empty until Normalize runs.
    static void EnsureLootProfilePathForDiskOps()
    {
        if (PatchClass.Settings is null)
            return;
        if (!string.IsNullOrWhiteSpace(PatchClass.Settings.LootProfilePath))
            return;

        try
        {
            var asm = typeof(PatchClass).Assembly;
            string? location = asm.Location;
            if (!string.IsNullOrWhiteSpace(location))
            {
                string? dir = Path.GetDirectoryName(location);
                if (!string.IsNullOrEmpty(dir))
                {
                    PatchClass.Settings.LootProfilePath = Path.Combine(Path.GetFullPath(dir), "LootProfiles");
                    return;
                }
            }

            string name = asm.GetName().Name ?? "AutoLoot";
            string fallback = Path.GetFullPath(Path.Combine(ModManager.ModPath, name));
            if (Directory.Exists(fallback))
                PatchClass.Settings.LootProfilePath = Path.Combine(fallback, "LootProfiles");
        }
        catch
        {
        }
    }

    // Loads bundled/default .utl profiles when the player has none active (new install or empty ActiveProfileNames in prefs).
    static bool TrySeedDefaultLootProfilesFromDisk(Player player)
    {
        if (player is null || PatchClass.Settings is null)
            return false;

        EnsureLootProfilePathForDiskOps();
        string lootRoot = PatchClass.Settings.LootProfilePath;
        if (string.IsNullOrWhiteSpace(lootRoot))
            return false;

        try
        {
            Directory.CreateDirectory(lootRoot);
        }
        catch
        {
            return false;
        }

        string[] diskProfiles = Directory.GetFiles(lootRoot, "*.utl", SearchOption.TopDirectoryOnly);
        if (diskProfiles.Length == 0)
            return false;

        ConcurrentDictionary<string, LootCore> playerProfiles = lootProfiles.GetOrAdd(LootKey(player), _ => new ConcurrentDictionary<string, LootCore>());
        if (!playerProfiles.IsEmpty)
            return false;

        IReadOnlyList<string> names = GetEffectiveDefaultProfileNames(PatchClass.Settings);
        foreach (string raw in names)
        {
            string fn = raw.Trim();
            if (string.IsNullOrEmpty(fn))
                continue;

            if (!fn.EndsWith(".utl", StringComparison.OrdinalIgnoreCase))
                fn += ".utl";

            string? fullPath = diskProfiles.FirstOrDefault(p =>
                Path.GetFileName(p).Equals(fn, StringComparison.OrdinalIgnoreCase));

            if (fullPath is null || playerProfiles.ContainsKey(fullPath))
                continue;

            if (IsProfileLockedByName(fullPath, player))
                continue;

            LootCore core = new LootCore();
            core.Startup();
            core.LoadProfile(fullPath, false);
            playerProfiles[fullPath] = core;
        }

        return !playerProfiles.IsEmpty;
    }

    static void TryApplyDefaultProfilesForNewCharacter(Player player)
    {
        if (player is null || PatchClass.Settings is null)
            return;

        EnsureLootProfilePathForDiskOps();
        if (string.IsNullOrWhiteSpace(PatchClass.Settings.LootProfilePath))
            return;

        if (File.Exists(GetPlayerDataPath(player)))
            return;

        TrySeedDefaultLootProfilesFromDisk(player);

        if (PatchClass.Settings.DefaultAutolootSalvageBundleApplied)
        {
            ApplyFullAutolootOn(player);
            AutolootSalvageDefaultsAppliedByPlayer[LootKey(player)] = true;
        }
        else
        {
            unknownScrolls[LootKey(player)] = true;
            AutolootSalvageDefaultsAppliedByPlayer[LootKey(player)] = false;
        }

        if (!lootProfiles.GetOrAdd(LootKey(player), _ => new ConcurrentDictionary<string, LootCore>()).IsEmpty
            || unknownScrolls.GetOrAdd(LootKey(player), false))
            SavePrefs(player);
    }

    // ── Inventory helpers ────────────────────────────────────────────────────

    static bool PlayerOwnsWcid(Player player, uint wcid)
    {
        foreach (var item in player.Inventory.Values)
        {
            if (item.WeenieClassId == wcid)
                return true;

            if (item is Container container)
                foreach (var sub in container.Inventory.Values)
                    if (sub.WeenieClassId == wcid)
                        return true;
        }
        return false;
    }

    static void AutolootTryCreateInInventoryWithNetworking(Player player, WorldObject item)
    {
        SsfAutolootPickupContext.Enter();
        try
        {
            player.TryCreateInInventoryWithNetworking(item);
        }
        finally
        {
            SsfAutolootPickupContext.Leave();
        }
    }

    // Coalesced Mana WCIDs → LeyLineLedger bank PropertyInt64
    static readonly Dictionary<uint, int> CoalescedManaBankProps = new()
    {
        { 42516, 41100 }, // Lesser Coalesced Mana
        { 42517, 41101 }, // Greater Coalesced Mana
        { 42518, 41102 }, // Aetheric Coalesced Mana
    };

    static bool ContainerHasCoalescedMana(Container container)
    {
        foreach (var i in container.Inventory.Values)
        {
            if (CoalescedManaBankProps.ContainsKey(i.WeenieClassId))
                return true;
        }
        return false;
    }

    // House / player storage chests: never auto-salvage on close.
    static bool ShouldRunCloseSalvageSweep(Container container)
    {
        if (container is Corpse)
            return true;
        if (container is Chest c)
            return !c.HouseOwner.HasValue;
        return false;
    }

    // Bank LeyLineLedger coalesced mana stacks without requiring a .utl profile.
    static void BankCoalescedManaFromContainer(Player player, Container container)
    {
        if (PatchClass.Settings is not { DepositLootedCurrencyToBank: true })
            return;

        foreach (var item in container.Inventory.Values.ToList())
        {
            if (item.IsDestroyed || !CoalescedManaBankProps.ContainsKey(item.WeenieClassId))
                continue;
            if (!TryBankCurrency(player, item))
                continue;
            if (container.TryRemoveFromInventory(item.Guid, out var removed))
                removed?.Destroy();
        }
    }

    static bool TryBankCurrency(Player player, WorldObject item)
    {
        if (PatchClass.Settings is not { DepositLootedCurrencyToBank: true })
            return false;

        // Coalesced Mana — bank to LeyLineLedger
        if (CoalescedManaBankProps.TryGetValue(item.WeenieClassId, out var manaProp))
        {
            var qty = item.StackSize ?? 1;
            var manaCurrent = player.GetProperty((PropertyInt64)manaProp) ?? 0;
            player.SetProperty((PropertyInt64)manaProp, manaCurrent + qty);
            return true;
        }

        if (item.WeenieClassId != Player.coinStackWcid &&
            !item.WeenieClassName.StartsWith("tradenote", StringComparison.OrdinalIgnoreCase) &&
            !PeaPyrealWcids.IsPea(item.WeenieClassId))
            return false;

        if (!PeaPyrealWcids.IsPea(item.WeenieClassId))
        {
            var valuePer = item.Value ?? 0;
            if (valuePer <= 0)
                return false;
        }

        var totalValue = PeaPyrealWcids.IsPea(item.WeenieClassId)
            ? PeaPyrealWcids.GetPyrealValue(item)
            : (long)(item.Value ?? 0) * (item.StackSize ?? 1);
        if (totalValue <= 0)
            return false;

        var bankProp = PatchClass.Settings.BankCashProperty;
        var current = player.GetProperty((PropertyInt64)bankProp) ?? 0;
        player.SetProperty((PropertyInt64)bankProp, current + totalValue);
        player.UpdateCoinValue();

        return true;
    }

    static bool TryBankKey(Player player, WorldObject item)
    {
        if (PatchClass.Settings?.KeyBankProperties is not { Count: > 0 })
            return false;

        if (!PatchClass.Settings.KeyBankProperties.TryGetValue(item.WeenieClassId, out var prop))
            return false;

        var qty = item.StackSize ?? 1;
        var current = player.GetProperty((PropertyInt64)prop) ?? 0;
        player.SetProperty((PropertyInt64)prop, current + qty);
        return true;
    }

    static bool TryBankLockpick(Player player, WorldObject item)
    {
        if (!IsLockpickBankingUnlocked(player))
            return false;

        if (!LockpickWcids.Contains(item.WeenieClassId) && item.WeenieType != WeenieType.Lockpick)
            return false;

        var charges = item.Structure ?? item.MaxStructure ?? 1;
        var pct = PatchClass.Settings?.LockpickLootBankPercent ?? 0.10f;
        var bankAmount = (long)(charges * pct);
        if (bankAmount <= 0)
            return false;

        var prop = PatchClass.Settings?.LockpickBankProperty ?? 40130;
        var current = player.GetProperty((PropertyInt64)prop) ?? 0;
        player.SetProperty((PropertyInt64)prop, current + bankAmount);
        return true;
    }

    // ── Level 8 spellcrafting components ─────────────────────────────────────

    static bool IsLevel8Comp(WorldObject item) => item != null && Level8CompWcids.Contains(item.WeenieClassId);

    static bool TryConvertLevel8Comp(Player player, WorldObject item)
    {
        if (PatchClass.Settings?.EnableLevel8CompsConversion != true)
            return false;

        if (!IsLevel8Comp(item))
            return false;

        var totalValue = (long)(item.Value ?? 0) * (item.StackSize ?? 1);
        if (totalValue <= 0)
            return false;

        var bankProp = PatchClass.Settings?.BankCashProperty ?? 39999;
        var current = player.GetProperty((PropertyInt64)bankProp) ?? 0;
        player.SetProperty((PropertyInt64)bankProp, current + totalValue);
        player.UpdateCoinValue();
        return true;
    }

    // ── Achievement tracking ─────────────────────────────────────────────────

    internal static bool IsKeysUnlocked(Player player)
    {
        var settings = PatchClass.Settings;
        if (settings is null) return false;
        var count = keyUnlocks.GetOrAdd(LootKey(player), 0);
        return count >= settings.KeysUnlockThreshold;
    }

    internal static bool IsLockpickBankingUnlocked(Player player)
    {
        var settings = PatchClass.Settings;
        if (settings is null) return false;
        var count = lockpickUnlocks.GetOrAdd(LootKey(player), 0);
        return count >= settings.LockpickUnlockThreshold;
    }



    static bool IsProfileLockedByName(string filePathOrName, Player player)
    {
        // Key banking is now baked into core; no .utl profiles are locked.
        return false;
    }

    static string GetLockHint(string filePathOrName, Player player)
    {
        // No locked profiles remain.
        return "";
    }

    internal static void RecordKeyUnlock(Player player)
    {
        if (player is null) return;
        EnsureLoaded(player);
        var key = LootKey(player);
        var newCount = keyUnlocks.AddOrUpdate(key, 1, (_, old) => old + 1);
        var settings = PatchClass.Settings;
            if (settings is not null && newCount >= settings.KeysUnlockThreshold && !keyUnlockNotified.GetOrAdd(key, false))
            {
                keyUnlockNotified[key] = true;
                player.SendMessage("[AutoLoot] Achievement unlocked: Key Collector! Key auto-looting from corpses is now active.");
            }
        SavePrefs(player);
    }

    internal static void RecordLockpickUnlock(Player player)
    {
        if (player is null) return;
        EnsureLoaded(player);
        var key = LootKey(player);
        var newCount = lockpickUnlocks.AddOrUpdate(key, 1, (_, old) => old + 1);
        var settings = PatchClass.Settings;
        if (settings is not null && newCount >= settings.LockpickUnlockThreshold && !lockpickUnlockNotified.GetOrAdd(key, false))
        {
            lockpickUnlockNotified[key] = true;
            player.SendMessage("[AutoLoot] Achievement unlocked: Lockpick Master! Lockpick corpse-loot banking unlocked.");
        }
        SavePrefs(player);
    }

    internal static void RecordSalvage(Player player, int count)
    {
        if (player is null || count <= 0) return;
        EnsureLoaded(player);
        var key = LootKey(player);
        itemsSalvaged.AddOrUpdate(key, count, (_, old) => old + count);
        SavePrefs(player);
    }

    // ── BetterSupportSkills bridge ───────────────────────────────────────────

    static class BetterSupportSkillsBridge
    {
        static MethodInfo? _setEnabled;
        static MethodInfo? _isEnabled;
        static MethodInfo? _tryAutoSalvageItem;
        static MethodInfo? _getSalvageRate;

        // Never cache "resolve failed": BetterSupportSkills may load after AutoLoot's first call.
        static void Resolve()
        {
            if (_tryAutoSalvageItem != null)
                return;

            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, "BetterSupportSkills", StringComparison.Ordinal))
                    continue;

                var t = asm.GetType("BetterSupportSkills.Skills.SalvageAutoDeposit");
                if (t is null)
                    continue;

                _setEnabled = t.GetMethod("SetEnabled", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(Player), typeof(bool) }, null);
                _isEnabled = t.GetMethod("IsEnabled", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(Player) }, null);
                _tryAutoSalvageItem = t.GetMethod("TryAutoSalvageItem", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(Player), typeof(WorldObject) }, null);
                _getSalvageRate = t.GetMethod("GetSalvageRate", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(Player) }, null);
                return;
            }
        }

        internal static void SetSalvageEnabled(Player player, bool enabled)
        {
            Resolve();
            if (_setEnabled is null) return;
            try { _setEnabled.Invoke(null, new object?[] { player, enabled }); } catch { }
        }

        internal static bool IsSalvageEnabled(Player player)
        {
            Resolve();
            if (_isEnabled is null) return false;
            try { return _isEnabled.Invoke(null, new object?[] { player }) is true; } catch { return false; }
        }

        internal static double GetSalvageRate(Player player)
        {
            Resolve();
            if (_getSalvageRate is null) return 0.0;
            try { return _getSalvageRate.Invoke(null, new object?[] { player }) is double rate ? rate : 0.0; } catch { return 0.0; }
        }

        /// <summary>
        /// Delegates to BetterSupportSkills.SalvageAutoDeposit.TryAutoSalvageItem.
        /// Returns true if the item was salvaged and destroyed by BSS.
        /// </summary>
        internal static bool TryAutoSalvage(Player player, WorldObject item)
        {
            Resolve();
            if (_tryAutoSalvageItem is null) return false;
            try { return _tryAutoSalvageItem.Invoke(null, new object?[] { player, item }) is true; } catch { return false; }
        }
    }

    // ── Persistence helpers ──────────────────────────────────────────────────

    static string GetPlayerDataPath(Player player)
    {
        EnsureLootProfilePathForDiskOps();
        var dir = Path.Combine(PatchClass.Settings!.LootProfilePath, "PlayerData");
        Directory.CreateDirectory(dir);
        return Path.Combine(dir, $"{player.Guid.Full}.json");
    }

    internal static void EnsureLoaded(Player player)
    {
        EnsureLootProfilePathForDiskOps();

        if (PatchClass.Settings is null || string.IsNullOrWhiteSpace(PatchClass.Settings.LootProfilePath))
        {
            ModManager.Log("AutoLoot: LootProfilePath not ready yet; defer EnsureLoaded until settings init.", ModManager.LogLevel.Warn);
            return;
        }

        if (!loadedPlayers.TryAdd(player.Guid.Full, true))
            return;

        var path = GetPlayerDataPath(player);
        if (!File.Exists(path))
        {
            TryApplyDefaultProfilesForNewCharacter(player);
            return;
        }

        try
        {
            var json = File.ReadAllText(path);
            var prefs = JsonSerializer.Deserialize<PlayerPrefs>(json);
            if (prefs == null)
            {
                loadedPlayers.TryRemove(player.Guid.Full, out _);
                return;
            }

            AutolootSalvageDefaultsAppliedByPlayer[LootKey(player)] = prefs.AutolootSalvageDefaultsApplied;

            bool ranFullDefaults = false;
            if (PatchClass.Settings.DefaultAutolootSalvageBundleApplied && !prefs.AutolootSalvageDefaultsApplied)
            {
                ApplyFullAutolootOn(player);
                AutolootSalvageDefaultsAppliedByPlayer[LootKey(player)] = true;
                ranFullDefaults = true;
                SavePrefs(player);
            }

            var allProfiles = Directory.GetFiles(
                PatchClass.Settings.LootProfilePath, "*.utl", SearchOption.TopDirectoryOnly);

            var playerProfileMap = lootProfiles.GetOrAdd(LootKey(player), _ => new ConcurrentDictionary<string, LootCore>());

            if (!ranFullDefaults)
            {
                foreach (var name in prefs.ActiveProfileNames)
                {
                    var fullPath = allProfiles.FirstOrDefault(p =>
                        Path.GetFileName(p).Equals(name, StringComparison.OrdinalIgnoreCase));

                    if (fullPath == null || playerProfileMap.ContainsKey(fullPath))
                        continue;

                    var core = new LootCore();
                    core.Startup();
                    core.LoadProfile(fullPath, false);
                    playerProfileMap[fullPath] = core;
                }
            }

            if (!ranFullDefaults && playerProfileMap.IsEmpty && TrySeedDefaultLootProfilesFromDisk(player))
                SavePrefs(player);

            lootNotifications[LootKey(player)] = prefs.LootNotifications;
            if (!ranFullDefaults)
                unknownScrolls[LootKey(player)] = prefs.UnknownScrollsEnabled;

            keyUnlocks[LootKey(player)] = prefs.KeyUnlocks;
            lockpickUnlocks[LootKey(player)] = prefs.LockpickUnlocks;
            itemsSalvaged[LootKey(player)] = prefs.ItemsSalvaged;
            keyUnlockNotified[LootKey(player)] = prefs.KeyUnlockNotified;
            lockpickUnlockNotified[LootKey(player)] = prefs.LockpickUnlockNotified;
            salvageUnlockNotified[LootKey(player)] = prefs.SalvageUnlockNotified;
        }
        catch (Exception ex)
        {
            ModManager.Log($"AutoLoot: failed to load prefs for {player.Name}: {ex.Message}", ModManager.LogLevel.Warn);
            loadedPlayers.TryRemove(player.Guid.Full, out _);
        }
    }

    static void SavePrefs(Player player)
    {
        try
        {
            lootProfiles.TryGetValue(LootKey(player), out var profileMap);

            var prefs = new PlayerPrefs
            {
                ActiveProfileNames = profileMap?.Keys
                    .Select(Path.GetFileName)
                    .Where(n => n != null)
                    .Cast<string>()
                    .ToList() ?? [],

                LootNotifications     = lootNotifications.GetOrAdd(LootKey(player), true),
                UnknownScrollsEnabled = unknownScrolls.GetOrAdd(LootKey(player), false),

                KeyUnlocks = keyUnlocks.GetOrAdd(LootKey(player), 0),
                LockpickUnlocks = lockpickUnlocks.GetOrAdd(LootKey(player), 0),
                ItemsSalvaged = itemsSalvaged.GetOrAdd(LootKey(player), 0),
                KeyUnlockNotified = keyUnlockNotified.GetOrAdd(LootKey(player), false),
                LockpickUnlockNotified = lockpickUnlockNotified.GetOrAdd(LootKey(player), false),
                SalvageUnlockNotified = salvageUnlockNotified.GetOrAdd(LootKey(player), false),
                AutolootSalvageDefaultsApplied = AutolootSalvageDefaultsAppliedByPlayer.GetOrAdd(LootKey(player), false),
            };

            var path = GetPlayerDataPath(player);
            File.WriteAllText(path, JsonSerializer.Serialize(prefs, JsonOptions));
        }
        catch (Exception ex)
        {
            ModManager.Log($"AutoLoot: failed to save prefs for {player.Name}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    internal static void OnPostPlayerEnterWorld(ref Player __instance)
    {
        if (__instance is null)
            return;

        EnsureLoaded(__instance);
    }

    // ── Command handler ──────────────────────────────────────────────────────

    [CommandHandler("autoloot", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1)]
#if REALM
    public static void HandleLoadProfile(ISession session, params string[] parameters)
#else
    public static void HandleLoadProfile(Session session, params string[] parameters)
#endif
    {
        var player = session.Player;

        try
        {
            EnsureLootProfilePathForDiskOps();
            Directory.CreateDirectory(PatchClass.Settings.LootProfilePath);
            EnsureLoaded(player);
            var profiles = ResolveCommandProfilePaths(PatchClass.Settings);
            var playerProfiles = lootProfiles.GetOrAdd(LootKey(player), _ => new ConcurrentDictionary<string, LootCore>());

            if (playerProfiles.IsEmpty && !File.Exists(GetPlayerDataPath(player)))
                TryApplyDefaultProfilesForNewCharacter(player);

            if (parameters.Length == 0)
            {
                bool scrollsOn = unknownScrolls.GetOrAdd(LootKey(player), false);

                var sb = new StringBuilder("\nAutoLoot:");
                sb.Append("\n  /autoloot <#>     — toggle profile");
                sb.Append("\n  /autoloot on      — enable all unlocked");
                sb.Append("\n  /autoloot off     — disable all");
                sb.Append($"\n  /autoloot scrolls — toggle spells [{(scrollsOn ? "ON" : "OFF")}]");
                sb.Append("\n  /autoloot salvage — toggle AutoSalvage");

                if (session.AccessLevel >= AccessLevel.Developer)
                {
                    sb.Append("\n\n  [Developer]");
                    sb.Append("\n  /t1   — test the built-in sample profile against your appraised item");
                    sb.Append("\n  /t2   — benchmark 500-rule profile (value + string requirements)");
                    sb.Append("\n  /t3   — benchmark 500-rule profile (value requirements only)");
                    sb.Append("\n  /t4   — benchmark 500-rule profile (string requirements only)");
                }

                if (session.AccessLevel >= AccessLevel.Admin)
                {
                    sb.Append("\n\n  [Admin]");
                    sb.Append("\n  /clean — remove all items from your inventory (for testing cleanup)");
                }

                sb.Append("\n\nProfiles:");
                if (profiles.Length == 0)
                {
                    sb.Append("\n  (no profiles found)");
                }
                else
                {
                    for (var i = 0; i < profiles.Length; i++)
                    {
                        var fi = new FileInfo(profiles[i]);
                        var locked = IsProfileLockedByName(profiles[i], player);
                        var active = playerProfiles.ContainsKey(profiles[i]);

                        if (locked)
                        {
                            var hint = GetLockHint(profiles[i], player);
                            sb.Append($"\n  {i}) [LOCKED] {fi.Name}  ({hint})");
                        }
                        else
                        {
                            var status = active ? "[ON] " : "[OFF]";
                            sb.Append($"\n  {i}) {status} {fi.Name}  ==  {fi.Length / 1024:0}kb");
                        }
                    }
                }

                var scrollsIdx = profiles.Length;
                sb.Append($"\n  {scrollsIdx}) {(scrollsOn ? "[ON] " : "[OFF]")} Unknown Scrolls");

                var salvageIdx = scrollsIdx + 1;
                bool salvageOn = BetterSupportSkillsBridge.IsSalvageEnabled(player);
                sb.Append($"\n  {salvageIdx}) {(salvageOn ? "[ON] " : "[OFF]")} AutoSalvage  (/autoloot salvage)");

                player.SendMessage(sb.ToString());
                return;
            }

            var arg = parameters[0];

            if (arg.Equals("on", StringComparison.OrdinalIgnoreCase))
            {
                int enabled = 0;
                foreach (var path in profiles)
                {
                    if (playerProfiles.ContainsKey(path))
                        continue;
                    if (IsProfileLockedByName(path, player))
                        continue;

                    var core = new LootCore();
                    core.Startup();
                    core.LoadProfile(path, false);
                    playerProfiles[path] = core;
                    enabled++;
                }
                if (!unknownScrolls.GetOrAdd(LootKey(player), false))
                {
                    unknownScrolls[LootKey(player)] = true;
                    enabled++;
                }

                if (!BetterSupportSkillsBridge.IsSalvageEnabled(player))
                {
                    BetterSupportSkillsBridge.SetSalvageEnabled(player, true);
                    enabled++;
                }

                AutolootSalvageDefaultsAppliedByPlayer[LootKey(player)] = true;
                SavePrefs(player);
                player.SendMessage(enabled > 0
                    ? $"Enabled {enabled} option(s) (profiles, unknown scrolls, and/or AutoSalvage). Type /autoloot to see the list."
                    : "Everything is already enabled.");
                return;
            }

            if (arg.Equals("off", StringComparison.OrdinalIgnoreCase))
            {
                int disabled = 0;
                foreach (var key in playerProfiles.Keys.ToList())
                {
                    if (playerProfiles.TryRemove(key, out var core))
                    {
                        core.Shutdown();
                        disabled++;
                    }
                }
                if (unknownScrolls.GetOrAdd(LootKey(player), false)) { unknownScrolls[LootKey(player)] = false; disabled++; }
                SavePrefs(player);
                player.SendMessage(disabled > 0
                    ? $"Disabled {disabled} profile(s)."
                    : "Nothing was active.");
                return;
            }

            if (arg.Equals("details", StringComparison.OrdinalIgnoreCase))
            {
                bool current = lootNotifications.GetOrAdd(LootKey(player), true);
                lootNotifications[LootKey(player)] = !current;
                SavePrefs(player);
                player.SendMessage($"Loot notifications: {(!current ? "ON" : "OFF")}");
                return;
            }

            if (arg.Equals("scrolls", StringComparison.OrdinalIgnoreCase))
            {
                bool current = unknownScrolls.GetOrAdd(LootKey(player), false);
                unknownScrolls[LootKey(player)] = !current;
                SavePrefs(player);
                player.SendMessage($"Unknown Scrolls: {(!current ? "ON" : "OFF")} (learn when readable; else loot to pack)");
                return;
            }

            if (arg.Equals("salvage", StringComparison.OrdinalIgnoreCase))
            {
                bool currentlyOn = BetterSupportSkillsBridge.IsSalvageEnabled(player);
                bool turningOn = !currentlyOn;
                BetterSupportSkillsBridge.SetSalvageEnabled(player, turningOn);
                SavePrefs(player);
                player.SendMessage($"[AutoLoot] AutoSalvage: {(turningOn ? "ON" : "OFF")}. Type /autosalvage for more options.");
                return;
            }

            // Toggle by index or partial name
            string? selected = null;

            if (uint.TryParse(arg, out var index))
            {
                if (index < profiles.Length)
                {
                    selected = profiles[index];
                }
                else if (index == profiles.Length)
                {
                    // Unknown Scrolls
                    bool current = unknownScrolls.GetOrAdd(LootKey(player), false);
                    unknownScrolls[LootKey(player)] = !current;
                    SavePrefs(player);
                    player.SendMessage($"Unknown Scrolls: {(!current ? "ON" : "OFF")}");
                    return;
                }
                else if (index == profiles.Length + 1)
                {
                    // AutoSalvage
                    bool currentlyOn = BetterSupportSkillsBridge.IsSalvageEnabled(player);
                    bool turningOn = !currentlyOn;
                    BetterSupportSkillsBridge.SetSalvageEnabled(player, turningOn);
                    SavePrefs(player);
                    player.SendMessage($"[AutoLoot] AutoSalvage: {(turningOn ? "ON" : "OFF")}. Type /autosalvage for more options.");
                    return;
                }
            }
            else
            {
                var joined = string.Join(' ', parameters);
                selected = profiles.FirstOrDefault(x => x.Contains(joined, StringComparison.OrdinalIgnoreCase));
            }

            if (string.IsNullOrEmpty(selected) || !File.Exists(selected))
            {
                player.SendMessage("No matching profile found. Type /autoloot to see the list.");
                return;
            }

            if (IsProfileLockedByName(selected, player))
            {
                var hint = GetLockHint(selected, player);
                player.SendMessage($"[AutoLoot] {Path.GetFileNameWithoutExtension(selected)} is locked ({hint}).");
                return;
            }

            var displayName = Path.GetFileNameWithoutExtension(selected);

            if (playerProfiles.TryRemove(selected, out var existingCore))
            {
                existingCore.Shutdown();
                SavePrefs(player);
                player.SendMessage($"[OFF] {displayName}");
            }
            else
            {
                var newCore = new LootCore();
                newCore.Startup();
                newCore.LoadProfile(selected, false);
                playerProfiles[selected] = newCore;
                SavePrefs(player);
                player.SendMessage($"[ON]  {displayName}");
            }
        }
        catch (Exception ex)
        {
            ModManager.Log(ex.ToString(), ModManager.LogLevel.Error);
            player.SendMessage("Failed to load loot profile!");
        }
    }

    [CommandHandler("scrolls", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1)]
#if REALM
    public static void HandleScrolls(ISession session, params string[] parameters)
#else
    public static void HandleScrolls(Session session, params string[] parameters)
#endif
    {
        var player = session.Player;
        if (player == null) return;

        if (parameters.Length == 0 || !parameters[0].Equals("learn", StringComparison.OrdinalIgnoreCase))
        {
            player.SendMessage("Usage: /scrolls learn — learns all readable scrolls in your inventory.");
            return;
        }

        var scrolls = new List<WorldObject>();
        foreach (var item in player.Inventory.Values)
        {
            if (item.WeenieType == WeenieType.Scroll)
                scrolls.Add(item);
            if (item is Container container)
                foreach (var sub in container.Inventory.Values)
                    if (sub.WeenieType == WeenieType.Scroll)
                        scrolls.Add(sub);
        }

        int learned = 0;
        int skipped = 0;
        int destroyed = 0;

        foreach (var item in scrolls)
        {
            var spellIdProp = item.GetProperty(PropertyDataId.Spell);
            if (spellIdProp == null || spellIdProp == 0)
            {
                skipped++;
                continue;
            }

            var spellId = (uint)spellIdProp;
            if (player.SpellIsKnown(spellId))
            {
                item.Destroy();
                destroyed++;
                continue;
            }

            if (item is not Scroll scroll || scroll.Spell == null)
            {
                skipped++;
                continue;
            }

            var scrollSkill = scroll.Spell.GetMagicSkill();
            var playerScrollSkill = player.GetCreatureSkill(scrollSkill);
            int requiredSkill = (int)(scroll.Spell.Level * 50 - 50);
            bool canReadScroll = playerScrollSkill.AdvancementClass >= SkillAdvancementClass.Trained
                              && playerScrollSkill.Current >= requiredSkill;

            if (!canReadScroll)
            {
                skipped++;
                continue;
            }

            player.LearnSpellWithNetworking(spellId, uiOutput: false);

            if (player.SpellIsKnown(spellId))
            {
                item.Destroy();
                learned++;
            }
            else
            {
                skipped++;
            }
        }

        player.SendMessage($"[Scrolls] Learned {learned} spell(s). Skipped {skipped}. Cleaned up {destroyed} duplicates.");
    }

    // ── Public API for BetterSupportSkills integration ───────────────────────

    static bool _settingSalvageState;

    public static void SetSalvageState(Player player, bool enabled)
    {
        if (_settingSalvageState) return;
        _settingSalvageState = true;
        try
        {
            BetterSupportSkillsBridge.SetSalvageEnabled(player, enabled);
            SavePrefs(player);
        }
        finally
        {
            _settingSalvageState = false;
        }
    }

    // ── Patches ──────────────────────────────────────────────────────────────

    // ── Container auto-loot ──────────────────────────────────────────────────

    /// <summary>
    /// IMMEDIATE phase — silent unconditional banking (cash, keys, lockpicks, coalesced mana,
    /// level-8 comps, known scroll destroy). Called before ProcessContainerLoot for both
    /// corpses (at creation) and chests (on close) so server-defined rules always apply.
    /// </summary>
    internal static void ProcessContainerLootImmediate(Player player, Container container)
    {
        if (player == null || container == null) return;

        BankCoalescedManaFromContainer(player, container);

        bool hasLevel8Comps = PatchClass.Settings?.EnableLevel8CompsConversion == true;

        var items = container.Inventory.Values.ToList();
        foreach (var item in items)
        {
            if (item.IsDestroyed) continue;

            // Known scrolls: silently destroy
            if (item.WeenieType == WeenieType.Scroll)
            {
                var spellId = item.GetProperty(PropertyDataId.Spell) ?? 0;
                if (spellId != 0 && player.SpellIsKnown(spellId))
                {
                    if (container.TryRemoveFromInventory(item.Guid, out var removed))
                        removed?.Destroy();
                }
                continue;
            }

            // Cash / peas: silently bank
            if (TryBankCurrency(player, item))
            {
                if (container.TryRemoveFromInventory(item.Guid, out var removed))
                    removed?.Destroy();
                continue;
            }

            // Keys: silently bank (if unlocked)
            if (TryBankKey(player, item))
            {
                if (container.TryRemoveFromInventory(item.Guid, out var removed))
                    removed?.Destroy();
                continue;
            }

            // Lockpicks: silently bank (if unlocked)
            if (TryBankLockpick(player, item))
            {
                if (container.TryRemoveFromInventory(item.Guid, out var removed))
                    removed?.Destroy();
                continue;
            }

            // Level 8 spellcrafting components: convert to pyreal value
            if (TryConvertLevel8Comp(player, item))
            {
                if (container.TryRemoveFromInventory(item.Guid, out var removed))
                    removed?.Destroy();
                continue;
            }
        }
    }

    private static string FormatItemList(List<string> items)
    {
        return items.Count switch
        {
            1 => items[0],
            2 => $"{items[0]} and {items[1]}",
            _ => string.Join(", ", items.Take(items.Count - 1)) + $", and {items[^1]}"
        };
    }

    internal static void ProcessContainerLoot(Player player, Container container)
    {
        bool debug = PatchClass.Settings?.DebugLogging == true;

        lootProfiles.TryGetValue(LootKey(player), out var playerProfiles);
        bool hasProfiles    = playerProfiles != null && !playerProfiles.IsEmpty;
        bool hasScrolls     = unknownScrolls.GetOrAdd(LootKey(player), false);
        bool hasSalvage     = BetterSupportSkillsBridge.IsSalvageEnabled(player)
                           && BetterSupportSkillsBridge.GetSalvageRate(player) > 0.0;

        bool hasLevel8Comps = PatchClass.Settings?.EnableLevel8CompsConversion == true;
        bool hasCoalesced = ContainerHasCoalescedMana(container);
        bool mayKeyBank = PatchClass.Settings?.KeyBankProperties?.Count > 0;
        if (!hasProfiles && !hasScrolls && !hasSalvage && !hasLevel8Comps && !hasCoalesced && !mayKeyBank)
        {
            if (debug)
                ModManager.Log($"AutoLoot: ProcessContainerLoot early exit — no active loot for {player.Name}", ModManager.LogLevel.Info);
            return;
        }

        try
        {
            BankCoalescedManaFromContainer(player, container);

            var items = container.Inventory.Values.ToList();
            var activeProfiles = hasProfiles ? playerProfiles!.Values.ToList() : new List<LootCore>();

            var lootedItems   = new Dictionary<string, int>();
            var lootedSet     = new HashSet<WorldObject>();

            var noDupPatterns = PatchClass.Settings?.NoDuplicateNames ?? [];

            // ── Pre-filter: known scrolls ────────────────────────────────────
            // Silently destroy scrolls the player already knows so they never
            // reach profile evaluation or loot messages.
            foreach (var item in items)
            {
                if (item.WeenieType != WeenieType.Scroll)
                    continue;
                var spellId = item.GetProperty(PropertyDataId.Spell) ?? 0;
                if (spellId != 0 && player.SpellIsKnown(spellId))
                {
                    container.TryRemoveFromInventory(item.Guid, out var scroll);
                    scroll?.Destroy();
                }
            }

            // ── Pass 1: .utl profiles ────────────────────────────────────────

            foreach (var item in items)
            {
                if (item.IsDestroyed)
                    continue;

                if (noDupPatterns.Count > 0 &&
                    noDupPatterns.Any(p => item.Name?.Contains(p, StringComparison.OrdinalIgnoreCase) == true) &&
                    PlayerOwnsWcid(player, item.WeenieClassId))
                {
                    continue;
                }

                foreach (var profile in activeProfiles)
                {
                    var lootAction = profile.GetLootDecision(item, player);
                    if (lootAction.IsNoLoot)
                        continue;

                    if (!container.TryRemoveFromInventory(item.Guid, out var removed))
                        break;

                    var qty = removed.StackSize ?? 1;

                    if (TryBankCurrency(player, removed))
                    {
                        lootedItems.TryGetValue("Pyreals (banked)", out var existingBanked);
                        long bankAdd = PeaPyrealWcids.IsPea(removed.WeenieClassId)
                            ? PeaPyrealWcids.GetPyrealValue(removed)
                            : (long)(removed.Value ?? 0) * qty;
                        int bankDelta = bankAdd > int.MaxValue ? int.MaxValue : (int)bankAdd;
                        lootedItems["Pyreals (banked)"] = existingBanked + bankDelta;
                        lootedSet.Add(removed);
                    }
                    else if (TryBankLockpick(player, removed))
                    {
                        var lpName = LootDisplayName(removed);
                        lootedItems.TryGetValue(lpName, out var existing);
                        lootedItems[lpName] = existing + qty;
                        lootedSet.Add(removed);
                        removed.Destroy();
                    }
                    else if (BetterSupportSkillsBridge.TryAutoSalvage(player, removed))
                    {
                        lootedSet.Add(removed);
                        removed.Destroy();
                    }
                    else
                    {
                        var lootName = LootDisplayName(removed);
                        lootedItems.TryGetValue(lootName, out var existing);
                        lootedItems[lootName] = existing + qty;

                        lootedSet.Add(removed);
                        AutolootTryCreateInInventoryWithNetworking(player, removed);
                    }
                    break;
                }
            }

            // ── Pass 2: VendorTrash (removed — no longer supported) ─────────

            // ── Pass 3: Unknown Scrolls ──────────────────────────────────────
            // If the player can read the scroll (trained skill + high enough), learn the spell
            // and DESTROY the entire scroll stack. NEVER loot scrolls to the backpack.
            if (hasScrolls)
            {
                foreach (var item in items)
                {
                    if (lootedSet.Contains(item))
                        continue;

                    if (item.WeenieType != WeenieType.Scroll)
                        continue;

                    var spellIdProp = item.GetProperty(PropertyDataId.Spell);
                    if (spellIdProp == null || spellIdProp == 0)
                        continue;

                    var spellId = (uint)spellIdProp;
                    if (player.SpellIsKnown(spellId))
                        continue;

                    if (item is not Scroll scroll || scroll.Spell == null)
                        continue;

                    var scrollSkill = scroll.Spell.GetMagicSkill();
                    var playerScrollSkill = player.GetCreatureSkill(scrollSkill);
                    int requiredSkill = (int)(scroll.Spell.Level * 50 - 50);
                    bool canReadScroll = playerScrollSkill.AdvancementClass >= SkillAdvancementClass.Trained
                                      && playerScrollSkill.Current >= requiredSkill;

                    // Cannot read — leave it in the container untouched
                    if (!canReadScroll)
                        continue;

                    if (!container.TryRemoveFromInventory(item.Guid, out var removed))
                        continue;

                    // Try to learn the spell
                    if (DatManager.PortalDat.SpellTable.Spells.ContainsKey(spellId))
                        player.LearnSpellWithNetworking(spellId, uiOutput: true);

                    if (player.SpellIsKnown(spellId))
                    {
                        // Learned successfully — destroy entire stack. Do not bump lootedItems: vanilla already announced learn (uiOutput: true).
                        lootedSet.Add(removed);
                        removed.Destroy();
                    }
                    else
                    {
                        // Failed to learn despite meeting requirements (e.g. spell not in dat).
                        // Put it back in the container — do NOT destroy, do NOT backpack.
                        container.TryAddToInventory(removed);
                    }
                }
            }

            // ── Pass 4: Level 8 spellcrafting components ───────────────────
            int level8CompsConvertedCorpse = 0;
            long level8CompValueCorpse = 0;
            foreach (var item in items)
            {
                if (lootedSet.Contains(item) || item.IsDestroyed)
                    continue;
                if (TryConvertLevel8Comp(player, item))
                {
                    if (container.TryRemoveFromInventory(item.Guid, out var removed))
                    {
                        removed?.Destroy();
                        level8CompsConvertedCorpse++;
                        level8CompValueCorpse += (long)(item.Value ?? 0) * (item.StackSize ?? 1);
                    }
                }
            }

            // ── Pass 5: Key banking ──────────────────────────────────────
            // Special skeleton keys auto-bank unconditionally (no profile required).
            foreach (var item in items)
            {
                if (lootedSet.Contains(item) || item.IsDestroyed)
                    continue;
                if (!TryBankKey(player, item))
                    continue;
                if (container.TryRemoveFromInventory(item.Guid, out var removed))
                {
                    var keyName = LootDisplayName(removed);
                    lootedItems.TryGetValue(keyName, out var existing);
                    lootedItems[keyName] = existing + (removed.StackSize ?? 1);
                    lootedSet.Add(removed);
                    removed.Destroy();
                }
            }

            if (lootedItems.Count == 0)
                return;

            // ── Chat notification ────────────────────────────────────────────

            bool notify = lootNotifications.GetOrAdd(LootKey(player), true);
            if (!notify)
                return;

            var regularItems = lootedItems
                .Select(kvp =>
                {
                    return kvp.Value == 1 ? $"a {kvp.Key}" : $"{kvp.Value:N0} {kvp.Key}";
                })
                .ToList();

            if (regularItems.Count > 0 || level8CompsConvertedCorpse > 0)
            {
                var parts = new List<string>();
                if (regularItems.Count > 0)
                {
                    string itemList = regularItems.Count switch
                    {
                        1 => regularItems[0],
                        2 => $"{regularItems[0]} and {regularItems[1]}",
                        _ => string.Join(", ", regularItems.Take(regularItems.Count - 1)) + $", and {regularItems[^1]}"
                    };
                    parts.Add($"looted {itemList}");
                }
                if (level8CompsConvertedCorpse > 0)
                    parts.Add($"converted {level8CompsConvertedCorpse} spellcrafting component(s) to {level8CompValueCorpse:N0} pyreals");

                player.SendMessage($"[AutoLoot] {string.Join(", ", parts)}!");
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"AutoLoot: ProcessContainerLoot exception: {ex}", ModManager.LogLevel.Error);
        }
    }

    // ── Salvage sweep (immediate, material-only) ────────────────────────────

    // Salvages every item BSS accepts (MaterialType-bearing or raw salvage bag).
    // Non-material items (trophies, keys, quest items, etc.) are left untouched.
    internal static void RunSalvageDestroyPass(Container container, Player player, out int salvaged)
    {
        salvaged = 0;
        foreach (var item in container.Inventory.Values.ToList())
        {
            if (item.IsDestroyed)
                continue;

            if (BetterSupportSkillsBridge.TryAutoSalvage(player, item))
            {
                if (container.TryRemoveFromInventory(item.Guid, out var removed))
                {
                    removed?.Destroy();
                    salvaged++;
                }
            }
        }
    }

    // ── Patches ──────────────────────────────────────────────────────────────

    internal static void OnPostGenerateTreasure(DamageHistoryInfo killer, Corpse corpse, Creature __instance, ref List<WorldObject> __result)
    {
        bool debug = PatchClass.Settings?.DebugLogging == true;
        if (debug)
            ModManager.Log("AutoLoot: PostGenerateTreasure entered", ModManager.LogLevel.Info);

        if (killer == null)
        {
            if (debug)
                ModManager.Log("AutoLoot: PostGenerateTreasure early exit — killer is null", ModManager.LogLevel.Info);
            return;
        }

        if (killer.TryGetPetOwnerOrAttacker() is not Player player)
        {
            if (debug)
                ModManager.Log("AutoLoot: PostGenerateTreasure early exit — killer did not resolve to Player", ModManager.LogLevel.Info);
            return;
        }

        if (corpse == null)
        {
            if (debug)
                ModManager.Log("AutoLoot: PostGenerateTreasure early exit — corpse is null", ModManager.LogLevel.Info);
            return;
        }

        EnsureLoaded(player);

        // Merge duplicate same-WCID items into stacks before autoloot processing
        if (PatchClass.Settings?.EnableLootStackConsolidation != false)
            LootStackConsolidator.TryConsolidateContainer(corpse);

        ProcessContainerLootImmediate(player, corpse);
        ProcessContainerLoot(player, corpse);
    }
}
