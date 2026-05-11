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
    static readonly ConcurrentDictionary<uint, bool> trophyEnabled = new();
    internal static readonly ConcurrentDictionary<uint, bool> lllBankingEnabled = new();
    internal static readonly ConcurrentDictionary<uint, int> autosalvageMode = new(); // 0=off, 1=short, 2=full, 3=quiet
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

    static readonly string[] BundledDefaultProfileFileNames = [];

    static readonly HashSet<uint> LockpickWcids = new()
        { 510, 511, 512, 513, 514, 515, 516, 545, 27672 };

    // Key acronym + difficulty cap for bank messages when looted
    static readonly Dictionary<uint, (string acronym, string cap)> KeyDisplayNames = new()
    {
        { 6876, ("SIK", "1kD") },
        { 24477, ("SSK", "1kC") },
        { 38456, ("MFK", "5kD") },
        { 48746, ("LegKey", "5kC") },
    };

    // Pyreal trophy items that should auto-bank when looted (Motes, Slivers, Nuggets, Bars)
    static readonly HashSet<uint> PyrealTrophyWcids = new()
    {
        6353,  // Pyreal Mote
        6355,  // Pyreal Sliver
        6354,  // Pyreal Nugget
        6329,  // Pyreal Bar
        36676, // Pyreal Bar (variant)
    };

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
        32944,
        37300, 37301, 37302, 37303, 37304, 37305, 37307, 37309,
        37310, 37311, 37312, 37313, 37314, 37315, 37316, 37317, 37318, 37319,
        37321, 37323, 37324, 37325, 37326, 37327, 37328, 37329, 37330, 37331, 37332, 37333,
        37336, 37337, 37338, 37339, 37340,
        37341, 37342, 37343, 37344, 37345, 37346, 37347, 37348, 37349, 37350, 37351, 37352,
        37366, 37367, 37368, 37369, 37370, 37371, 37372, 37373,
        38760,
        41746, 41747,
        43379, 43380, 43387,
        45370, 45371, 45372, 45373, 45374,
        49455,
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

    /// <summary>
    /// Tries to merge a WorldObject's stack quantity into existing stacks of the same WCID
    /// in the player's inventory. Returns true if the item was fully merged (nothing left to create).
    /// The item's StackSize is reduced by the amount successfully merged; if it reaches 0 or
    /// below the item should be destroyed by the caller.
    /// Sends network updates for each existing stack that was modified.
    /// </summary>
    static bool TryMergeIntoExistingStacks(Player player, WorldObject item)
    {
        if (player == null || item == null)
            return false;

        uint wcid = item.WeenieClassId;
        int qty = item.StackSize ?? 1;
        if (qty <= 0)
            return true; // nothing to merge, consider it done

        int maxStack = item.MaxStackSize ?? 1;
        if (maxStack <= 1)
            return false; // non-stackable, can't merge

        // Find existing stacks of same WCID in player's inventory (main pack + side packs)
        var existingStacks = new List<WorldObject>();
        foreach (var invItem in player.Inventory.Values)
        {
            if (invItem.WeenieClassId == wcid && !invItem.IsDestroyed)
            {
                int curStack = invItem.StackSize ?? 1;
                int room = maxStack - curStack;
                if (room > 0)
                    existingStacks.Add(invItem);
            }
            // Check inside containers (side packs)
            if (invItem is Container container)
            {
                foreach (var sub in container.Inventory.Values)
                {
                    if (sub.WeenieClassId == wcid && !sub.IsDestroyed)
                    {
                        int curStack = sub.StackSize ?? 1;
                        int room = maxStack - curStack;
                        if (room > 0)
                            existingStacks.Add(sub);
                    }
                }
            }
        }

        if (existingStacks.Count == 0)
            return false;

        foreach (var existing in existingStacks)
        {
            if (qty <= 0) break;

            int curStack = existing.StackSize ?? 1;
            int room = maxStack - curStack;
            if (room <= 0) continue;

            int toAdd = Math.Min(qty, room);
            existing.StackSize = curStack + toAdd;
            item.StackSize = (item.StackSize ?? 1) - toAdd;
            qty -= toAdd;

            // Send network update so client sees the new stack size
            player.Session?.Network.EnqueueSend(new GameMessageSetStackSize(existing));
        }

        // If fully merged, mark the original item as empty
        if ((item.StackSize ?? 1) <= 0)
        {
            item.StackSize = 0;
            return true;
        }

        return false;
    }

    // Coalesced Mana WCIDs → LeyLineLedger bank PropertyInt64
    static readonly Dictionary<uint, int> CoalescedManaBankProps = new()
    {
        { 800000, 41100 }, // Lesser Coalesced Mana
        { 800001, 41101 }, // Greater Coalesced Mana
        { 800002, 41102 }, // Aetheric Coalesced Mana
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

    // Chaos: 10% banked to player, 90% to LeyLineLedger lottery pool (AddToPool). No hard reference to ChallengeModes / LeyLineLedger assemblies.
    static void BankAutolootPyrealsWithChaosLotterySplit(Player player, long totalValue)
    {
        if (totalValue <= 0)
            return;

        int bankProp = PatchClass.Settings.BankCashProperty;

        if (ChallengeModesPatchClassBridge.IsChaosEnabled(player))
        {
            long toPool = totalValue * 90L / 100L;
            long toPlayer = totalValue - toPool;
            if (toPlayer > 0)
                LeyLineLedgerBankInterop.IncBanked(player, bankProp, toPlayer);
            if (toPool > 0)
                LeyLineLedgerLotteryBridge.AddPyrealToPool(toPool);
        }
        else
        {
            LeyLineLedgerBankInterop.IncBanked(player, bankProp, totalValue);
        }
    }

    static bool TryBankCurrency(Player player, WorldObject item)
    {
        if (PatchClass.Settings is not { DepositLootedCurrencyToBank: true })
            return false;

        // Coalesced Mana — bank to LeyLineLedger (IncBanked so AccountWideBank JSON stays in sync)
        if (CoalescedManaBankProps.TryGetValue(item.WeenieClassId, out var manaProp))
        {
            var qty = item.StackSize ?? 1;
            LeyLineLedgerBankInterop.IncBanked(player, manaProp, qty);
            return true;
        }

        // Pyreal trophies (Motes, Slivers, Nuggets, Bars) — convert to pyreal value and bank
        if (PyrealTrophyWcids.Contains(item.WeenieClassId))
        {
            long trophyValue = (long)(item.Value ?? 0) * (item.StackSize ?? 1);
            if (trophyValue > 0)
            {
                BankAutolootPyrealsWithChaosLotterySplit(player, trophyValue);
                player.UpdateCoinValue();
                return true;
            }
            return false;
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

        BankAutolootPyrealsWithChaosLotterySplit(player, totalValue);
        player.UpdateCoinValue();

        return true;
    }

    static string GetKeyLootLabel(uint wcid)
    {
        if (KeyDisplayNames.TryGetValue(wcid, out var info))
            return $"{info.acronym} ({info.cap})";
        return null; // caller falls back to LootDisplayName
    }

    static string FormatPyrealAmount(long pyreals)
    {
        return pyreals switch
        {
            >= 1_000_000_000 => $"{pyreals / 1_000_000_000.0:F2}B pyreals",
            >= 1_000_000     => $"{pyreals / 1_000_000.0:F2}M pyreals",
            >= 1_000         => $"{pyreals / 1_000.0:F0}k pyreals",
            _                => $"{pyreals:N0} pyreals"
        };
    }

    static bool TryBankKey(Player player, WorldObject item)
    {
        if (PatchClass.Settings?.KeyBankProperties is not { Count: > 0 })
            return false;

        if (!PatchClass.Settings.KeyBankProperties.TryGetValue(item.WeenieClassId, out var prop))
            return false;

        var qty = item.StackSize ?? 1;
        LeyLineLedgerBankInterop.IncBanked(player, prop, qty);
        return true;
    }

    /// <summary>
    /// General-purpose LLL item banking: checks if this WCID matches any entry in
    /// LeyLineLedger's Settings.Items list (via reflection) and banks it. Covers
    /// any bankable item not already caught by TryBankKey or TryBankCurrency.
    /// </summary>
    static bool TryBankAnyLllItem(Player player, WorldObject item)
    {
        if (item == null || player == null)
            return false;

        if (!LeyLineLedgerBankInterop.IsBankableWcid(item.WeenieClassId, out int prop))
            return false;

        var qty = item.StackSize ?? 1;
        LeyLineLedgerBankInterop.IncBanked(player, prop, qty);
        return true;
    }

    /// <summary>
    /// Snapshots current LLL salvage property values for salvage WCIDs.
    /// Resolves bank PropertyInt64 via LeyLineLedgerSalvageBankInterop (DepositRules-indexed),
    /// not WCID-offset arithmetic, so snapshot correctly tracks deltas for non-sequential rules.
    /// Returns a list of (materialName, bankProp, beforeValue).
    /// </summary>
    static List<(string name, int prop, long before)> SnapshotLLLSalvageTotals(Player player)
    {
        var results = new List<(string, int, long)>();

        for (uint wcid = 20980; wcid <= 21089; wcid++)
        {
            if (!LeyLineLedgerSalvageBankInterop.IsValidSalvageWcid(wcid))
                continue;
            int bankProp = LeyLineLedgerSalvageBankInterop.GetSalvageMaterialBankPropertyId(wcid);
            if (bankProp <= 0) continue;
            uint materialIndex = wcid - 20980;
            string name = BetterSupportSkillsBridge.GetCompactSalvageName(materialIndex, wcid);
            long before = LeyLineLedgerBankInterop.GetBanked(player, bankProp);
            results.Add((name, bankProp, before));
        }

        return results;
    }

    static string CompactSalvageName(string displayName)
    {
        string s = displayName.Trim();
        const string prefix = "Salvaged ";
        if (s.StartsWith(prefix, StringComparison.OrdinalIgnoreCase))
            return s.Substring(prefix.Length).Trim();
        return s;
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
        LeyLineLedgerBankInterop.IncBanked(player, prop, bankAmount);
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
        LeyLineLedgerBankInterop.IncBanked(player, bankProp, totalValue);
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
        // Auto-unlocked for anyone with Lockpick trained or specialized
        var skill = player.GetCreatureSkill(Skill.Lockpick);
        if (skill != null && skill.AdvancementClass >= SkillAdvancementClass.Trained)
            return true;

        // Fallback: unlock threshold for achievement players without the skill
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

    // ── BetterSupportSkills bridge (hardened) ────────────────────────────
    // Pattern: resolve-once, log-once, typed-exception wrappers.
    // Keeps trying until the assembly appears (late-load support).

    static class BetterSupportSkillsBridge
    {
        static MethodInfo? _setEnabled;
        static MethodInfo? _isEnabled;
        static MethodInfo? _tryAutoSalvageItem;
        static MethodInfo? _getSalvageRate;
        static MethodInfo? _getMaterialName;
        static MethodInfo? _setMessagingMuted;

        static bool _fullyResolved;
        static bool _assemblyLogged;
        static bool _typeLogged;

        static void Resolve()
        {
            if (_fullyResolved) return;

            Assembly? asm = null;
            foreach (var a in AppDomain.CurrentDomain.GetAssemblies())
            {
                if (string.Equals(a.GetName().Name, "BetterSupportSkills", StringComparison.Ordinal))
                { asm = a; break; }
            }

            if (asm is null)
            {
                if (!_assemblyLogged)
                {
                    _assemblyLogged = true;
                    ModManager.Log("[AutoLoot→BSS] BetterSupportSkills not loaded; bridge will activate if it appears later.", ModManager.LogLevel.Info);
                }
                return; // keep trying (late-load)
            }

            var t = asm.GetType("BetterSupportSkills.Skills.SalvageAutoDeposit");
            if (t is null)
            {
                if (!_typeLogged)
                {
                    _typeLogged = true;
                    ModManager.Log("[AutoLoot→BSS] BetterSupportSkills loaded but SalvageAutoDeposit type missing; bridge inactive.", ModManager.LogLevel.Warn);
                }
                _fullyResolved = true;
                return;
            }

            _setEnabled        = GetMethod(t, "SetEnabled",        typeof(Player), typeof(bool));
            _isEnabled         = GetMethod(t, "IsEnabled",         typeof(Player));
            _tryAutoSalvageItem= GetMethod(t, "TryAutoSalvageItem",typeof(Player), typeof(WorldObject));
            _getSalvageRate    = GetMethod(t, "GetSalvageRate",    typeof(Player));
            _getMaterialName   = GetMethod(t, "GetMaterialName",   typeof(int));
            _setMessagingMuted = GetMethod(t, "SetMessagingMuted", typeof(Player), typeof(bool));

            int found = CountFound();
            if (found == 6)
            {
                _fullyResolved = true;
                ModManager.Log($"[AutoLoot→BSS] Resolved all 6 methods on {t.FullName}. Bridge active.", ModManager.LogLevel.Info);
            }
            else
            {
                _fullyResolved = true;
                var missing = string.Join(", ", MissingMethods());
                ModManager.Log($"[AutoLoot→BSS] WARNING: Resolved only {found}/6 methods on {t.FullName}. Missing: {missing}.", ModManager.LogLevel.Warn);
            }
        }

        static MethodInfo? GetMethod(Type t, string name, params Type[] p)
            => t.GetMethod(name, BindingFlags.Public | BindingFlags.Static, null, p, null);

        static int CountFound()
        {
            int n = 0;
            if (_setEnabled        != null) n++;
            if (_isEnabled         != null) n++;
            if (_tryAutoSalvageItem!= null) n++;
            if (_getSalvageRate    != null) n++;
            if (_getMaterialName   != null) n++;
            if (_setMessagingMuted != null) n++;
            return n;
        }

        static IEnumerable<string> MissingMethods()
        {
            if (_setEnabled        is null) yield return "SetEnabled";
            if (_isEnabled         is null) yield return "IsEnabled";
            if (_tryAutoSalvageItem is null) yield return "TryAutoSalvageItem";
            if (_getSalvageRate    is null) yield return "GetSalvageRate";
            if (_getMaterialName   is null) yield return "GetMaterialName";
            if (_setMessagingMuted is null) yield return "SetMessagingMuted";
        }

        static void InvokeVoid(MethodInfo? mi, params object?[] args)
        {
            if (mi is null) return;
            try { mi.Invoke(null, args); }
            catch (TargetInvocationException tie) when (tie.InnerException is not null)
            {
                ModManager.Log($"[AutoLoot→BSS] {mi.Name} threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[AutoLoot→BSS] {mi.Name} error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
            }
        }

        static T Invoke<T>(MethodInfo? mi, object?[] args, T fallback)
        {
            if (mi is null) return fallback;
            try
            {
                var r = mi.Invoke(null, args);
                if (r is T v) return v;
            }
            catch (TargetInvocationException tie) when (tie.InnerException is not null)
            {
                ModManager.Log($"[AutoLoot→BSS] {mi.Name} threw {tie.InnerException.GetType().Name}: {tie.InnerException.Message}", ModManager.LogLevel.Warn);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[AutoLoot→BSS] {mi.Name} error: {ex.GetType().Name}: {ex.Message}", ModManager.LogLevel.Warn);
            }
            return fallback;
        }

        internal static void SetSalvageEnabled(Player player, bool enabled)
            => InvokeVoid(_setEnabled, player, enabled);

        internal static bool IsSalvageEnabled(Player player)
            => Invoke(_isEnabled, new object?[] { player }, false);

        internal static double GetSalvageRate(Player player)
            => Invoke(_getSalvageRate, new object?[] { player }, 0.0);

        internal static bool TryAutoSalvage(Player player, WorldObject item)
            => Invoke(_tryAutoSalvageItem, new object?[] { player, item }, false);

        internal static string GetCompactSalvageName(uint materialIndex, uint wcid)
        {
            Resolve();
            if (_getMaterialName is null) return $"Salvage ({wcid})";
            var name = Invoke(_getMaterialName, new object?[] { (int)materialIndex }, (string?)null);
            if (!string.IsNullOrEmpty(name) && !name.StartsWith("Unknown", StringComparison.OrdinalIgnoreCase))
                return name;
            return $"Salvage ({wcid})";
        }

        internal static void SetSalvageMessagingMuted(Player player, bool muted)
            => InvokeVoid(_setMessagingMuted, player, muted);
    }

    // ── Persistence helpers ──────────────────────────────────────────────────

    static string GetPlayerDataPath(Player player)
    {
        var dir = AutoLootDataPaths.PlayerDataRoot;
        Directory.CreateDirectory(dir);
        return Path.Combine(dir, $"{player.Guid.Full}.json");
    }

    static string? GetLegacyPlayerDataPath(Player player)
    {
        EnsureLootProfilePathForDiskOps();
        if (PatchClass.Settings is null || string.IsNullOrWhiteSpace(PatchClass.Settings.LootProfilePath))
            return null;

        var legacyDir = Path.Combine(PatchClass.Settings.LootProfilePath, "PlayerData");
        return Path.Combine(legacyDir, $"{player.Guid.Full}.json");
    }

    static string ResolvePlayerDataReadPath(Player player)
    {
        var currentPath = GetPlayerDataPath(player);
        if (File.Exists(currentPath))
            return currentPath;

        var legacyPath = GetLegacyPlayerDataPath(player);
        if (!string.IsNullOrWhiteSpace(legacyPath) && File.Exists(legacyPath))
            return legacyPath;

        return currentPath;
    }

    static void TryDeleteLegacyPlayerData(Player player)
    {
        var legacyPath = GetLegacyPlayerDataPath(player);
        if (string.IsNullOrWhiteSpace(legacyPath) || !File.Exists(legacyPath))
            return;

        try
        {
            File.Delete(legacyPath);
        }
        catch
        {
        }
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

        var path = ResolvePlayerDataReadPath(player);
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

            if (!string.Equals(path, GetPlayerDataPath(player), StringComparison.OrdinalIgnoreCase))
            {
                SavePrefs(player);
                TryDeleteLegacyPlayerData(player);
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
                bool hadStaleNames = false;
                foreach (var name in prefs.ActiveProfileNames)
                {
                    var fullPath = allProfiles.FirstOrDefault(p =>
                        Path.GetFileName(p).Equals(name, StringComparison.OrdinalIgnoreCase));

                    if (fullPath == null)
                    {
                        hadStaleNames = true;
                        continue;
                    }
                    if (playerProfileMap.ContainsKey(fullPath))
                        continue;

                    var core = new LootCore();
                    core.Startup();
                    core.LoadProfile(fullPath, false);
                    playerProfileMap[fullPath] = core;
                }

                // Prune stale profile names from prefs (e.g. archived .utl files)
                if (hadStaleNames)
                    SavePrefs(player);
            }

            if (!ranFullDefaults && playerProfileMap.IsEmpty && TrySeedDefaultLootProfilesFromDisk(player))
                SavePrefs(player);

            lootNotifications[LootKey(player)] = prefs.LootNotifications;
            if (!ranFullDefaults)
            {
                unknownScrolls[LootKey(player)] = prefs.UnknownScrollsEnabled;
                trophyEnabled[LootKey(player)] = prefs.TrophyEnabled;
                lllBankingEnabled[LootKey(player)] = prefs.LllBankingEnabled;
            }

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
                TrophyEnabled = trophyEnabled.GetOrAdd(LootKey(player), true),
                LllBankingEnabled = lllBankingEnabled.GetOrAdd(LootKey(player), true),

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
            TryDeleteLegacyPlayerData(player);
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
                bool trophyOn = trophyEnabled.GetOrAdd(LootKey(player), true);
                sb.Append("\n  /autoloot trophies — toggle custom trophies [" + (trophyOn ? "ON" : "OFF") + "]");
                bool lllOn = lllBankingEnabled.GetOrAdd(LootKey(player), true);
                sb.Append("\n  /autoloot bank — toggle LLL auto-banking [" + (lllOn ? "ON" : "OFF") + "]");
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
                var trophyIdx = scrollsIdx + 1;
                var bankIdx = trophyIdx + 1;
                var salvageIdx = bankIdx + 1;
                var salvageOn = BetterSupportSkillsBridge.IsSalvageEnabled(player);
                sb.Append($"\n  {scrollsIdx}) {(scrollsOn ? "[ON] " : "[OFF]")} Unknown Scrolls");
                sb.Append($"\n  {trophyIdx}) {(trophyOn ? "[ON] " : "[OFF]")} Custom Trophies");
                sb.Append($"\n  {bankIdx}) {(lllOn ? "[ON] " : "[OFF]")} LLL Auto-Banking");
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

            if (arg.Equals("trophies", StringComparison.OrdinalIgnoreCase))
            {
                bool current = trophyEnabled.GetOrAdd(LootKey(player), true);
                trophyEnabled[LootKey(player)] = !current;
                SavePrefs(player);
                player.SendMessage($"Custom trophies: {(!current ? "ON" : "OFF")}");
                return;
            }

            if (arg.Equals("bank", StringComparison.OrdinalIgnoreCase))
            {
                bool current = lllBankingEnabled.GetOrAdd(LootKey(player), true);
                lllBankingEnabled[LootKey(player)] = !current;
                SavePrefs(player);
                player.SendMessage($"LLL auto-banking: {(!current ? "ON" : "OFF")}");
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
                    // Trophies
                    bool current = trophyEnabled.GetOrAdd(LootKey(player), true);
                    trophyEnabled[LootKey(player)] = !current;
                    SavePrefs(player);
                    player.SendMessage($"Custom trophies: {(!current ? "ON" : "OFF")}");
                    return;
                }
                else if (index == profiles.Length + 2)
                {
                    // LLL Auto-Banking
                    bool current = lllBankingEnabled.GetOrAdd(LootKey(player), true);
                    lllBankingEnabled[LootKey(player)] = !current;
                    SavePrefs(player);
                    player.SendMessage($"LLL auto-banking: {(!current ? "ON" : "OFF")}");
                    return;
                }
                else if (index == profiles.Length + 3)
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
            player.SendMessage("Usage: /scrolls learn -- learns all readable scrolls in your inventory.");
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

    public static void BridgeSetSalvageMessagingMuted(Player player, bool muted)
    {
        BetterSupportSkillsBridge.SetSalvageMessagingMuted(player, muted);
    }

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

    // IMMEDIATE phase — silent unconditional banking (cash, keys, lockpicks, coalesced mana,
    // level-8 comps, known scroll destroy). Called before ProcessContainerLoot for corpses at
    // treasure creation and for chests on open; chest close also runs this via ProcessChestCloseLoot
    // before ACE resets the chest inventory.
    internal static void ProcessContainerLootImmediate(Player player, Container container)
    {
        if (player == null || container == null) return;

        BankCoalescedManaFromContainer(player, container);

        bool lllOn = lllBankingEnabled.GetOrAdd(LootKey(player), true);
        bool hasLevel8Comps = lllOn && PatchClass.Settings?.EnableLevel8CompsConversion == true;

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

            if (!lllOn)
                continue;

            // Keys: silently bank (if unlocked)
            if (TryBankKey(player, item))
            {
                if (container.TryRemoveFromInventory(item.Guid, out var removed))
                    removed?.Destroy();
                continue;
            }

            // Any LLL-bankable item: silently bank
            if (TryBankAnyLllItem(player, item))
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
            if (hasLevel8Comps && TryConvertLevel8Comp(player, item))
            {
                if (container.TryRemoveFromInventory(item.Guid, out var removed))
                    removed?.Destroy();
                continue;
            }
        }
    }

    // World chest close: bank leftovers + profile loot + quest salvage bags before salvage sweep.
    // Caller gates with EnableChestAutoLoot (see PatchClass.Harmony PreContainerClose).
    internal static void ProcessChestCloseLoot(Player player, Chest chest)
    {
        ProcessContainerLootImmediate(player, chest);
        LeyLineLedgerQuestSalvageInterop.TryProcessContainer(player, chest);
        ProcessContainerLoot(player, chest);
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

        bool lllOn = lllBankingEnabled.GetOrAdd(LootKey(player), true);
        bool hasLevel8Comps = lllOn && PatchClass.Settings?.EnableLevel8CompsConversion == true;
        bool hasCoalesced = ContainerHasCoalescedMana(container);
        bool mayKeyBank = lllOn && PatchClass.Settings?.KeyBankProperties?.Count > 0;
        bool trophiesOn = trophyEnabled.GetOrAdd(LootKey(player), true);
        var wbTrophyPass1 = PatchClass.Settings?.WindblownCollectorTrophyPass1WeenieClassIds;
        var otherPhysicalPass1 = PatchClass.Settings?.OtherPhysicalPass1WeenieClassIds;
        bool mayWindblownTrophyPass1 = trophiesOn && wbTrophyPass1 is { Count: > 0 };
        bool mayOtherPhysicalPass1 = otherPhysicalPass1 is { Count: > 0 };
        bool hasPhysicalPass1 = mayWindblownTrophyPass1 || mayOtherPhysicalPass1;
        bool mayLllItemBank = lllOn && container.Inventory.Values.Any(i => LeyLineLedgerBankInterop.IsBankableWcid(i.WeenieClassId, out _));
        if (!hasProfiles && !hasScrolls && !hasSalvage && !hasLevel8Comps && !hasCoalesced && !mayKeyBank && !hasPhysicalPass1 && !mayLllItemBank)
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

            var lootedItems      = new Dictionary<string, int>();
            var lootedSet        = new HashSet<WorldObject>();
            var keyBanked        = new Dictionary<string, int>();
            var salvageDelta     = new Dictionary<string, long>();
            var lllBankedItems   = new Dictionary<string, int>();

            var noDupPatterns = PatchClass.Settings?.NoDuplicateNames ?? [];

            // ── Snapshot LLL salvage totals BEFORE any BSS salvaging — BSS writes
            // to LLL inside TryAutoSalvageItem (Pass 1), so we need the before-state.
            var salvageBefore = SnapshotLLLSalvageTotals(player);

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

                // Trophy / physical Pass 1: Windblown collector trophies (gated by /autoloot trophies) and other
                // physical quest items (letters, pincers) always — check BEFORE no-duplicate.
                bool windblownTrophyMatch = mayWindblownTrophyPass1
                    && wbTrophyPass1!.Contains(item.WeenieClassId);
                bool otherPhysicalMatch = mayOtherPhysicalPass1
                    && otherPhysicalPass1!.Contains(item.WeenieClassId);
                if (windblownTrophyMatch || otherPhysicalMatch)
                {
                    if (!container.TryRemoveFromInventory(item.Guid, out var trophyRemoved))
                        break;

                    int tqty = trophyRemoved.StackSize ?? 1;
                    string tname = LootDisplayName(trophyRemoved);
                    lootedItems.TryGetValue(tname, out int tex);
                    lootedItems[tname] = tex + tqty;
                    lootedSet.Add(trophyRemoved);

                    // Try to merge into existing stacks first
                    if (!TryMergeIntoExistingStacks(player, trophyRemoved))
                    {
                        // No existing stack had room — create a new item
                        AutolootTryCreateInInventoryWithNetworking(player, trophyRemoved);
                    }
                    else
                    {
                        // Fully merged — destroy the empty placeholder
                        trophyRemoved.Destroy();
                    }
                    continue;
                }

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
                        // Try merging into existing stacks first (for stackable items)
                        if (!TryMergeIntoExistingStacks(player, removed))
                        {
                            // No existing partial stack had room � create as a new item
                            AutolootTryCreateInInventoryWithNetworking(player, removed);
                        }
                        else
                        {
                            // Fully merged � destroy the empty placeholder
                            removed.Destroy();
                        }
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
            if (lllOn)
            {
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
            }

            // ── Pass 5: Key banking ──────────────────────────────────────
            if (lllOn)
            {
                foreach (var item in items)
                {
                    if (lootedSet.Contains(item) || item.IsDestroyed)
                        continue;
                    if (!TryBankKey(player, item))
                        continue;
                    if (container.TryRemoveFromInventory(item.Guid, out var removed))
                    {
                        var keyLabel = GetKeyLootLabel(removed.WeenieClassId) ?? LootDisplayName(removed);
                        var qty = removed.StackSize ?? 1;
                        keyBanked.TryGetValue(keyLabel, out int cur);
                        keyBanked[keyLabel] = cur + qty;
                        lootedSet.Add(removed);
                        removed.Destroy();
                    }
                }
            }

            // ── Pass 6: Lockpick banking ─────────────────────────────────
            if (lllOn)
            {
                foreach (var item in items)
                {
                    if (lootedSet.Contains(item) || item.IsDestroyed)
                        continue;
                    if (!TryBankLockpick(player, item))
                        continue;
                    if (container.TryRemoveFromInventory(item.Guid, out var removed))
                    {
                        var lpName = LootDisplayName(removed);
                        lootedItems.TryGetValue(lpName, out var existing);
                        lootedItems[lpName] = existing + (removed.StackSize ?? 1);
                        lootedSet.Add(removed);
                        removed.Destroy();
                    }
                }
            }

            // ── Pass 7: General LLL item banking ─────────────────────────
            if (lllOn)
            {
                foreach (var item in items)
                {
                    if (lootedSet.Contains(item) || item.IsDestroyed)
                        continue;
                    if (!TryBankAnyLllItem(player, item))
                        continue;
                    if (container.TryRemoveFromInventory(item.Guid, out var removed))
                    {
                        var lllName = LootDisplayName(removed);
                        var qty = removed.StackSize ?? 1;
                        lllBankedItems.TryGetValue(lllName, out int cur);
                        lllBankedItems[lllName] = cur + qty;
                        lootedSet.Add(removed);
                        removed.Destroy();
                    }
                }
            }

            // ── Compute actual LLL salvage delta ────────────────────────────
            foreach (var after in SnapshotLLLSalvageTotals(player))
            {
                string matName = after.name;
                var match = salvageBefore.FirstOrDefault(s => s.name == matName);
                long beforeVal = match.before;
                long total = after.before;
                long delta = total - beforeVal;

                if (delta <= 0)
                    continue;

                salvageDelta[matName] = total;
            }

            bool hasAny = lootedItems.Count > 0 || lllBankedItems.Count > 0 || salvageDelta.Count > 0 || keyBanked.Count > 0 || level8CompsConvertedCorpse > 0;
            if (!hasAny)
                return;

            bool notify = lootNotifications.GetOrAdd(LootKey(player), true);
            if (!notify)
                return;

            int salvageMode = autosalvageMode.GetOrAdd(LootKey(player), 1);
            bool showAllSalvage = salvageMode == 2; // FULL
            bool quietMode = salvageMode == 3;   // QUIET: suppress salvage msgs

            var parts = new List<string>();

            // ── Bank notification (keys + salvage) ────────────────────────
            var bankMessages = new List<string>();

            foreach (var kv in keyBanked)
            {
                string part = kv.Value == 1 ? kv.Key : $"{kv.Value:N0} {kv.Key}";
                bankMessages.Add(part);
            }

            foreach (var kv in salvageDelta)
            {
                if (quietMode) continue;

                string matName = kv.Key;
                long total = kv.Value;
                double totalBags = total / 100.0;

                // Only show when there's enough material to be meaningful
                if (totalBags < 0.01)
                    continue;

                // Calculate the delta from what was there before
                long beforeVal = salvageBefore.FirstOrDefault(s => s.name == matName).before;
                long delta = total - beforeVal;

                // For SHORT mode: only show when the delta is > 0.50 bag (half a bag deposit)
                if (!showAllSalvage && delta < 50)
                    continue;

                string deltaStr = delta > 0 ? $"(+{delta / 100.0:F2})" : "";
                bankMessages.Add($"{matName} {totalBags:F2} {deltaStr}");
            }

            // ── Merge raw pyreals and MMD into one pyreal amount ───────────
            long totalPyreals = 0;
            if (lootedItems.TryGetValue("Pyreals (banked)", out int pyValue) && pyValue > 0)
            {
                totalPyreals += pyValue;
                lootedItems.Remove("Pyreals (banked)");
            }
            if (lllBankedItems.TryGetValue("MMD", out int mmdCount) && mmdCount > 0)
            {
                totalPyreals += mmdCount * 250_000L;
                lllBankedItems.Remove("MMD");
            }
            if (totalPyreals > 0)
            {
                // Show delta in MMD terms (1 MMD = 250k pyreals)
                long bankDelta = totalPyreals;
                string pyMsg = FormatPyrealAmount(totalPyreals);
                if (bankDelta > 0)
                {
                    double mmdDelta = bankDelta / 250_000.0;
                    pyMsg += $" (+{mmdDelta:F2} MMDs)";
                }
                bankMessages.Add(pyMsg);
            }

            // Any remaining LLL-banked items (non-pyreal equivalents) show as-is
            foreach (var kv in lllBankedItems)
            {
                string part = kv.Value == 1 ? kv.Key : $"{kv.Value:N0} {kv.Key}";
                bankMessages.Add(part);
            }

            if (bankMessages.Count > 0)
            {
                string bankLine = string.Join(", ", bankMessages);
                parts.Add($"[Bank] {bankLine}");
            }

            // ── Regular looted items (profiles, lockpicks, general LLL, etc.) ─
            var regularItems = lootedItems
                .Select(kvp => kvp.Value == 1 ? $"a {kvp.Key}" : $"{kvp.Value:N0} {kvp.Key}")
                .ToList();

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
