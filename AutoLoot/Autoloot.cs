using System.Collections.Concurrent;
using System.Reflection;
using AceRaajMods.Shared;

namespace AutoLoot;

public class AutoLoot
{
    // ── Per-player state ─────────────────────────────────────────────────────

    static readonly ConcurrentDictionary<uint, ConcurrentDictionary<string, LootCore>> lootProfiles = new();
    static readonly ConcurrentDictionary<uint, bool> lootNotifications = new();
    static readonly ConcurrentDictionary<uint, bool> vendorTrashEnabled = new();
    static readonly ConcurrentDictionary<uint, int> vendorTrashRatio = new();
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

    static void TryApplyDefaultProfilesForNewCharacter(Player player)
    {
        if (player is null || PatchClass.Settings is null)
            return;

        if (File.Exists(GetPlayerDataPath(player)))
            return;

        string lootRoot = PatchClass.Settings.LootProfilePath;
        if (string.IsNullOrWhiteSpace(lootRoot))
            return;

        try
        {
            Directory.CreateDirectory(lootRoot);
        }
        catch
        {
            return;
        }

        string[] diskProfiles = Directory.GetFiles(lootRoot, "*.utl", SearchOption.TopDirectoryOnly);
        if (diskProfiles.Length == 0)
            return;

        ConcurrentDictionary<string, LootCore> playerProfiles = lootProfiles.GetOrAdd(LootKey(player), _ => new ConcurrentDictionary<string, LootCore>());
        if (!playerProfiles.IsEmpty)
            return;

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

            // Skip achievement-locked profiles for new characters
            if (IsProfileLockedByName(fullPath, player))
                continue;

            LootCore core = new LootCore();
            core.Startup();
            core.LoadProfile(fullPath, false);
            playerProfiles[fullPath] = core;
        }

        // Enable scrolls by default for new characters
        unknownScrolls[LootKey(player)] = true;

        if (!playerProfiles.IsEmpty || unknownScrolls.GetOrAdd(LootKey(player), false))
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

    static bool TryBankCurrency(Player player, WorldObject item)
    {
        if (PatchClass.Settings is not { DepositLootedCurrencyToBank: true })
            return false;

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

        if (!IsKeysUnlocked(player))
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

    static bool IsSalvageItem(WorldObject item)
    {
        // Salvage bag WCIDs 20981-21089
        return item.WeenieClassId >= 20981 && item.WeenieClassId <= 21089;
    }

    static bool IsEquippableItem(WorldObject item)
    {
        var type = item.ItemType;
        return (type & (ItemType.Armor | ItemType.Clothing | ItemType.Jewelry | ItemType.MeleeWeapon | ItemType.MissileWeapon | ItemType.Caster)) != 0;
    }

    static bool TryAutoSalvageMaterial(Player player, WorldObject item, out int materialIndex, out int units)
    {
        materialIndex = -1;
        units = 0;

        var materialType = item.GetProperty(PropertyInt.MaterialType);
        if (!materialType.HasValue) return false;

        if (!Player.MaterialSalvage.TryGetValue((int)materialType.Value, out var salvageWcid) || salvageWcid <= 0)
            return false;

        materialIndex = salvageWcid - 20981;
        if (materialIndex < 0 || materialIndex > 70) return false;

        // Calculate units: workmanship → structure → fallback 1
        int work = item.ItemWorkmanship ?? 0;
        if (work > 0)
            units = work;
        else
        {
            int structure = item.Structure ?? 0;
            units = structure > 0 ? structure : 1;
        }

        return true;
    }

    static void MaybeSendAutoSalvageMessage(Player player, int materialIndex, int units)
    {
        var mode = autosalvageMode.GetOrAdd(LootKey(player), 1);
        if (mode != 2) return; // full only

        string[] names = { "Ceramic", "Porcelain", "Cloth", "Linen", "Satin", "Silk", "Velvet", "Wool", "Gems", "Agate", "Amber", "Amethyst", "Aquamarine", "Azurite", "Black Garnet", "Black Opal", "Bloodstone", "Carnelian", "Citrine", "Diamond", "Emerald", "Fire Opal", "Green Garnet", "Green Jade", "Hematite", "Imperial Topaz", "Jet", "Lapis Lazuli", "Lavender Jade", "Leather", "Malachite", "Marble", "Moonstone", "Obsidian", "Onyx", "Opal", "Peridot", "Porcelain", "Pyreal", "Red Garnet", "Red Jade", "Rose Quartz", "Ruby", "Sandstone", "Sapphire", "Serpentine", "Silk", "Silver", "Smoky Quartz", "Sunstone", "Teak", "Tiger Eye", "Tourmaline", "Turquoise", "White Jade", "White Quartz", "White Sapphire", "Yellow Garnet", "Yellow Topaz", "Zircon", "Armoredillo Hide", "Bronze", "Gold", "Granite", "Iron", "Mahogany", "Oak", "Pine", "Reedshark Hide" };
        string matName = (materialIndex >= 0 && materialIndex < names.Length) ? names[materialIndex] : "Unknown";
        double bags = units / 100.0;
        player.SendMessage($"Auto-salvaged: {bags:F2} {matName}");
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

    static bool IsSalvageUnlocked(Player player)
    {
        var settings = PatchClass.Settings;
        if (settings is null) return false;
        var count = itemsSalvaged.GetOrAdd(LootKey(player), 0);
        return count >= settings.SalvageUnlockThreshold;
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
        var newCount = itemsSalvaged.AddOrUpdate(key, count, (_, old) => old + count);
        var settings = PatchClass.Settings;
        if (settings is not null && newCount >= settings.SalvageUnlockThreshold && !salvageUnlockNotified.GetOrAdd(key, false))
        {
            salvageUnlockNotified[key] = true;
            player.SendMessage("[AutoLoot] Achievement unlocked: Salvage Master! AutoSalvage unlocked. Type /autoloot salvage to enable it.");
        }
        SavePrefs(player);
    }

    // ── BetterSupportSkills bridge ───────────────────────────────────────────

    static class BetterSupportSkillsBridge
    {
        static MethodInfo? _setEnabled;
        static MethodInfo? _isEnabled;
        static MethodInfo? _onPickupSalvage;
        static bool _resolved;

        static void Resolve()
        {
            _resolved = true;
            foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (!string.Equals(asm.GetName().Name, "BetterSupportSkills", StringComparison.Ordinal))
                    continue;

                var t = asm.GetType("BetterSupportSkills.Skills.SalvageAutoDeposit");
                if (t is null)
                    continue;

                _setEnabled = t.GetMethod("SetEnabled", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(Player), typeof(bool) }, null);
                _isEnabled = t.GetMethod("IsEnabled", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(Player) }, null);
                _onPickupSalvage = t.GetMethod("OnPickupSalvage", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(Player), typeof(WorldObject) }, null);
                return;
            }
        }

        internal static void SetSalvageEnabled(Player player, bool enabled)
        {
            if (!_resolved) Resolve();
            if (_setEnabled is null) return;
            try { _setEnabled.Invoke(null, new object?[] { player, enabled }); } catch { }
        }

        internal static bool IsSalvageEnabled(Player player)
        {
            if (!_resolved) Resolve();
            if (_isEnabled is null) return false;
            try { return _isEnabled.Invoke(null, new object?[] { player }) is true; } catch { return false; }
        }

        internal static void OnPickupSalvage(Player player, WorldObject item)
        {
            if (!_resolved) Resolve();
            if (_onPickupSalvage is null) return;
            try { _onPickupSalvage.Invoke(null, new object?[] { player, item }); } catch { }
        }
    }

    // ── Persistence helpers ──────────────────────────────────────────────────

    static string GetPlayerDataPath(Player player)
    {
        var dir = Path.Combine(PatchClass.Settings.LootProfilePath, "PlayerData");
        Directory.CreateDirectory(dir);
        return Path.Combine(dir, $"{player.Guid.Full}.json");
    }

    static void EnsureLoaded(Player player)
    {
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
                return;

            var allProfiles = Directory.GetFiles(
                PatchClass.Settings.LootProfilePath, "*.utl", SearchOption.TopDirectoryOnly);

            var playerProfileMap = lootProfiles.GetOrAdd(LootKey(player), _ => new ConcurrentDictionary<string, LootCore>());

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

            lootNotifications[LootKey(player)] = prefs.LootNotifications;
            vendorTrashEnabled[LootKey(player)] = prefs.VendorTrashEnabled;
            vendorTrashRatio[LootKey(player)] = prefs.VendorTrashRatio;
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
                VendorTrashEnabled    = vendorTrashEnabled.GetOrAdd(LootKey(player), false),
                VendorTrashRatio      = vendorTrashRatio.GetOrAdd(LootKey(player), 50),
                UnknownScrollsEnabled = unknownScrolls.GetOrAdd(LootKey(player), false),

                KeyUnlocks = keyUnlocks.GetOrAdd(LootKey(player), 0),
                LockpickUnlocks = lockpickUnlocks.GetOrAdd(LootKey(player), 0),
                ItemsSalvaged = itemsSalvaged.GetOrAdd(LootKey(player), 0),
                KeyUnlockNotified = keyUnlockNotified.GetOrAdd(LootKey(player), false),
                LockpickUnlockNotified = lockpickUnlockNotified.GetOrAdd(LootKey(player), false),
                SalvageUnlockNotified = salvageUnlockNotified.GetOrAdd(LootKey(player), false),
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
                if (!unknownScrolls.GetOrAdd(LootKey(player), false)) { unknownScrolls[LootKey(player)] = true; enabled++; }
                SavePrefs(player);
                player.SendMessage(enabled > 0
                    ? $"Enabled {enabled} profile(s). Type /autoloot to see the list."
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

            if (arg.Equals("vt", StringComparison.OrdinalIgnoreCase))
            {
                if (parameters.Length > 1 && int.TryParse(parameters[1], out int newRatio) && newRatio > 0)
                {
                    vendorTrashRatio[LootKey(player)] = newRatio;
                    vendorTrashEnabled[LootKey(player)] = true;
                    SavePrefs(player);
                    player.SendMessage($"VendorTrash ON at {newRatio}:1 (loot items worth ≥ {newRatio}× their burden)");
                }
                else
                {
                    bool current = vendorTrashEnabled.GetOrAdd(LootKey(player), false);
                    vendorTrashEnabled[LootKey(player)] = !current;
                    int ratio = vendorTrashRatio.GetOrAdd(LootKey(player), 50);
                    SavePrefs(player);
                    player.SendMessage(!current
                        ? $"VendorTrash ON at {ratio}:1 (loot items worth ≥ {ratio}× their burden)"
                        : "VendorTrash OFF");
                }
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
                var settings = PatchClass.Settings;
                var salvageCount = itemsSalvaged.GetOrAdd(LootKey(player), 0);
                if (salvageCount < settings.SalvageUnlockThreshold)
                {
                    player.SendMessage($"[AutoLoot] AutoSalvage is locked. Salvage {settings.SalvageUnlockThreshold} items manually to unlock it. (Progress: {salvageCount}/{settings.SalvageUnlockThreshold})");
                    return;
                }

                bool currentlyOn = BetterSupportSkillsBridge.IsSalvageEnabled(player);
                bool turningOn = !currentlyOn;
                BetterSupportSkillsBridge.SetSalvageEnabled(player, turningOn);
                SavePrefs(player);
                player.SendMessage($"[AutoLoot] AutoSalvage: {(turningOn ? "ON" : "OFF")}");
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

    internal static void OnPostGenerateTreasure(DamageHistoryInfo killer, Corpse corpse, Creature __instance, ref List<WorldObject> __result)
    {
        bool debug = PatchClass.Settings?.DebugLogging == true;
        if (debug)
            ModManager.Log("AutoLoot: PostGenerateTreasure entered", ModManager.LogLevel.Info);

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

        lootProfiles.TryGetValue(LootKey(player), out var playerProfiles);
        bool hasProfiles    = playerProfiles != null && !playerProfiles.IsEmpty;
        bool hasVT          = vendorTrashEnabled.GetOrAdd(LootKey(player), false);
        bool hasScrolls     = unknownScrolls.GetOrAdd(LootKey(player), false);

        if (!hasProfiles && !hasVT && !hasScrolls)
        {
            if (debug)
                ModManager.Log($"AutoLoot: PostGenerateTreasure early exit — no active loot for {player.Name}", ModManager.LogLevel.Info);
            return;
        }

        try
        {
            var items = corpse.Inventory.Values.ToList();
            var activeProfiles = hasProfiles ? playerProfiles!.Values.ToList() : new List<LootCore>();

            var lootedItems   = new Dictionary<string, int>();
            var lootedSet     = new HashSet<WorldObject>();
            var scrollFallbackNames = new HashSet<string>(StringComparer.OrdinalIgnoreCase);
            var lootedVTNames = new HashSet<string>();

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
                    corpse.TryRemoveFromInventory(item.Guid, out var scroll);
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

                    if (!corpse.TryRemoveFromInventory(item.Guid, out var removed))
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
                    else if (BetterSupportSkillsBridge.IsSalvageEnabled(player) &&
                             TryAutoSalvageMaterial(player, removed, out var materialIndex, out var salvageUnits))
                    {
                        // Material-type auto-salvage: destroy item, credit bank directly
                        int bankProp = 40201 + materialIndex;
                        long current = player.GetProperty((PropertyInt64)bankProp) ?? 0;
                        player.SetProperty((PropertyInt64)bankProp, current + salvageUnits);

                        MaybeSendAutoSalvageMessage(player, materialIndex, salvageUnits);

                        lootedSet.Add(removed);
                        removed.Destroy();
                    }
                    else if (IsSalvageItem(removed) && BetterSupportSkillsBridge.IsSalvageEnabled(player))
                    {
                        BetterSupportSkillsBridge.OnPickupSalvage(player, removed);
                        lootedSet.Add(removed);
                        removed.Destroy();
                    }
                    else if (BetterSupportSkillsBridge.IsSalvageEnabled(player) && IsEquippableItem(removed))
                    {
                        // Auto-salvage is on but item has no MaterialType → can't be salvaged.
                        // Destroy it so it doesn't clutter inventory.
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

            // ── Pass 2: VendorTrash ──────────────────────────────────────────

            if (hasVT)
            {
                int threshold = vendorTrashRatio.GetOrAdd(LootKey(player), 50);

                foreach (var item in items)
                {
                    if (lootedSet.Contains(item))
                        continue;

                    var value  = item.Value ?? 0;
                    var burden = item.EncumbranceVal ?? 1;
                    if (burden <= 0) burden = 1;

                    if (value >= threshold * burden)
                    {
                        if (!corpse.TryRemoveFromInventory(item.Guid, out var removed))
                            continue;

                        var qty = removed.StackSize ?? 1;

                        if (TryBankCurrency(player, removed))
                        {
                            lootedItems.TryGetValue("Pyreals (banked)", out var existingBanked);
                            long bankAddVt = PeaPyrealWcids.IsPea(removed.WeenieClassId)
                                ? PeaPyrealWcids.GetPyrealValue(removed)
                                : (long)(removed.Value ?? 0) * qty;
                            int bankDeltaVt = bankAddVt > int.MaxValue ? int.MaxValue : (int)bankAddVt;
                            lootedItems["Pyreals (banked)"] = existingBanked + bankDeltaVt;
                            lootedSet.Add(removed);
                            lootedVTNames.Add("Pyreals (banked)");
                        }
                        else
                        {
                            var lootName = LootDisplayName(removed);
                            lootedItems.TryGetValue(lootName, out var existing);
                            lootedItems[lootName] = existing + qty;

                            lootedSet.Add(removed);
                            lootedVTNames.Add(lootName);
                            AutolootTryCreateInInventoryWithNetworking(player, removed);
                        }
                    }
                }
            }

            // ── Pass 3: Unknown Scrolls ──────────────────────────────────────

            if (hasScrolls)
            {
                void FallbackLootScrollToInventory(WorldObject scrollObj, string scrollName, int quantity)
                {
                    lootedItems.TryGetValue(scrollName, out var existingInv);
                    lootedItems[scrollName] = existingInv + quantity;
                    lootedSet.Add(scrollObj);
                    scrollFallbackNames.Add(scrollName);
                    AutolootTryCreateInInventoryWithNetworking(player, scrollObj);
                }

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

                    if (!corpse.TryRemoveFromInventory(item.Guid, out var removed))
                        continue;

                    var qty = removed.StackSize ?? 1;

                    if (removed is not Scroll scroll || scroll.Spell == null)
                    {
                        FallbackLootScrollToInventory(removed, LootDisplayName(removed), qty);
                        continue;
                    }

                    if (!player.CanReadScroll(scroll))
                    {
                        var skill = scroll.Spell.GetMagicSkill();
                        var playerSkill = player.GetCreatureSkill(skill);
                        string msg = playerSkill.AdvancementClass < SkillAdvancementClass.Trained
                            ? $"You are not trained in {playerSkill.Skill.ToSentence()}!"
                            : $"You are not skilled enough in {playerSkill.Skill.ToSentence()} to learn this spell.";
                        player.Session?.Network.EnqueueSend(new GameMessageSystemChat(msg, ChatMessageType.Broadcast));
                        FallbackLootScrollToInventory(removed, LootDisplayName(removed), qty);
                        continue;
                    }

                    if (!DatManager.PortalDat.SpellTable.Spells.ContainsKey(spellId))
                    {
                        FallbackLootScrollToInventory(removed, LootDisplayName(removed), qty);
                        continue;
                    }

                    player.LearnSpellWithNetworking(spellId, uiOutput: true);

                    if (!player.SpellIsKnown(spellId))
                    {
                        FallbackLootScrollToInventory(removed, LootDisplayName(removed), qty);
                        continue;
                    }

                    if (qty <= 1)
                    {
                        removed.Destroy();
                        continue;
                    }

                    removed.SetStackSize(qty - 1);
                    var remainderName = LootDisplayName(removed);
                    lootedItems.TryGetValue(remainderName, out var existingRemainder);
                    lootedItems[remainderName] = existingRemainder + (qty - 1);
                    lootedSet.Add(removed);
                    AutolootTryCreateInInventoryWithNetworking(player, removed);
                }
            }

            // ── Pass 4: Unlocked key banking ─────────────────────────────────
            // Keys auto-loot from corpses without requiring a .utl profile.
            if (IsKeysUnlocked(player))
            {
                foreach (var item in items)
                {
                    if (lootedSet.Contains(item) || item.IsDestroyed)
                        continue;
                    if (!TryBankKey(player, item))
                        continue;
                    if (corpse.TryRemoveFromInventory(item.Guid, out var removed))
                    {
                        var keyName = LootDisplayName(removed);
                        lootedItems.TryGetValue(keyName, out var existing);
                        lootedItems[keyName] = existing + (removed.StackSize ?? 1);
                        lootedSet.Add(removed);
                        removed.Destroy();
                    }
                }
            }

            if (lootedItems.Count == 0)
                return;

            // ── Chat notification ────────────────────────────────────────────

            bool notify = lootNotifications.GetOrAdd(LootKey(player), true);
            if (!notify)
                return;

            var regularItems = lootedItems
                .Where(kvp => !scrollFallbackNames.Contains(kvp.Key))
                .Select(kvp =>
                {
                    var suffix = lootedVTNames.Contains(kvp.Key) ? " [$]" : "";
                    return kvp.Value == 1 ? $"a {kvp.Key}{suffix}" : $"{kvp.Value:N0} {kvp.Key}{suffix}";
                })
                .ToList();

            if (regularItems.Count > 0)
            {
                string itemList = regularItems.Count switch
                {
                    1 => regularItems[0],
                    2 => $"{regularItems[0]} and {regularItems[1]}",
                    _ => string.Join(", ", regularItems.Take(regularItems.Count - 1)) + $", and {regularItems[^1]}"
                };
                player.SendMessage($"[AutoLoot] You've looted {itemList}!");
            }

            foreach (var scrollName in scrollFallbackNames)
                player.SendMessage($"[AutoLoot] [!] You can learn: {scrollName}");
        }
        catch (Exception ex)
        {
            ModManager.Log($"AutoLoot: PostGenerateTreasure exception: {ex}", ModManager.LogLevel.Error);
        }
    }
}
