namespace Lockboxes;

[HarmonyPatch]
public partial class PatchClass : BasicPatch<Settings>
{
    const uint TIER1_WCID = 101189993;
    const uint TIER2_WCID = 101189994;
    const uint TIER3_WCID = 101189995;

    static readonly HashSet<uint> LockboxWCIDs = new() { TIER1_WCID, TIER2_WCID, TIER3_WCID };

    static readonly object LockPatchLock = new();
    static bool LockPatchApplied;
    static bool ChestOpenPatchApplied;
    static bool WorldObjectActivatePatchApplied;
    static bool GenerateTreasurePatchApplied;

    static LootConfig? LootConfig;

    static MethodInfo? KeyHandleActionUseOnTargetMethod;
    static bool KeyUsePatchApplied;

    public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName)
    {
    }

    public override void Start()
    {
        ModManager.Log("[Lockboxes] Start() called", ModManager.LogLevel.Info);
        ModManager.Log("[Lockboxes] === LOCKBOXES MOD LOADING ===", ModManager.LogLevel.Info);
        ModManager.Log("[Lockboxes] Harmony instance: " + (ModC.Harmony?.Id ?? "NULL"), ModManager.LogLevel.Info);
        base.Start();
    }

    public override async Task OnStartSuccess()
    {
        ModManager.Log("[Lockboxes] OnStartSuccess ENTERED", ModManager.LogLevel.Info);
        ModManager.Log("[Lockboxes] ModC.Harmony: " + (ModC.Harmony?.Id ?? "NULL"), ModManager.LogLevel.Info);
        
        try
        {
            await base.OnStartSuccess();
            ModManager.Log("[Lockboxes] base.OnStartSuccess complete", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Lockboxes] base.OnStartSuccess FAILED: {ex}", ModManager.LogLevel.Error);
        }

        try
        {
            LoadLootConfig();
            ModManager.Log("[Lockboxes] LoadLootConfig complete", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Lockboxes] LoadLootConfig FAILED: {ex}", ModManager.LogLevel.Error);
        }

        try
        {
            ModManager.Log("[Lockboxes] Calling TryPatchLockUnlock...", ModManager.LogLevel.Info);
            TryPatchLockUnlock();
            ModManager.Log("[Lockboxes] TryPatchLockUnlock done", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Lockboxes] TryPatchLockUnlock FAILED: {ex}", ModManager.LogLevel.Error);
        }

        try
        {
            ModManager.Log("[Lockboxes] Calling TryPatchChestOpen...", ModManager.LogLevel.Info);
            TryPatchChestOpen();
            ModManager.Log("[Lockboxes] TryPatchChestOpen done", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Lockboxes] TryPatchChestOpen FAILED: {ex}", ModManager.LogLevel.Error);
        }

        try
        {
            ModManager.Log("[Lockboxes] Calling TryPatchWorldObjectOnActivate...", ModManager.LogLevel.Info);
            TryPatchWorldObjectOnActivate();
            ModManager.Log("[Lockboxes] TryPatchWorldObjectOnActivate done", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Lockboxes] TryPatchWorldObjectOnActivate FAILED: {ex}", ModManager.LogLevel.Error);
        }

        try
        {
            ModManager.Log("[Lockboxes] Calling TryPatchGenerateTreasure...", ModManager.LogLevel.Info);
            TryPatchGenerateTreasure();
            ModManager.Log("[Lockboxes] TryPatchGenerateTreasure done", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Lockboxes] TryPatchGenerateTreasure FAILED: {ex}", ModManager.LogLevel.Error);
        }

        try
        {
            ModC.RegisterCommands(new Enum[] { LockboxesCommandCategory.Admin });
            ModManager.Log("[Lockboxes] RegisterCommands done", ModManager.LogLevel.Info);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Lockboxes] RegisterCommands FAILED: {ex}", ModManager.LogLevel.Error);
        }

        ModManager.Log("[Lockboxes] OnStartSuccess COMPLETE", ModManager.LogLevel.Info);
    }

    private void LoadLootConfig()
    {
        try
        {
            var configPath = Path.Combine(ModC.ModPath, "LootConfig.json");
            if (File.Exists(configPath))
            {
                var json = File.ReadAllText(configPath);
                LootConfig = JsonSerializer.Deserialize<LootConfig>(json);
                var commonCount = LootConfig?.common?.items?.Count ?? 0;
                ModManager.Log($"Lockboxes: Loaded LootConfig.json with {commonCount} common items", ModManager.LogLevel.Info);
            }
            else
            {
                ModManager.Log($"Lockboxes: LootConfig.json not found at {configPath}, using defaults", ModManager.LogLevel.Warn);
                LootConfig = GetDefaultLootConfig();
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"Lockboxes: Error loading LootConfig.json: {ex}", ModManager.LogLevel.Error);
            LootConfig = GetDefaultLootConfig();
        }
    }

    private static LootConfig GetDefaultLootConfig()
    {
        return new LootConfig
        {
            common = new LootCategory
            {
                items = new List<LootItem>
                {
                    new() { wcid = 2626, name = "Trade Note (50,000)", stackSize = 1 },
                    new() { wcid = 2627, name = "Trade Note (100,000)", stackSize = 1 },
                    new() { wcid = 7377, name = "Trade Note (75,000)", stackSize = 1 },
                    new() { wcid = 20628, name = "Trade Note (150,000)", stackSize = 1 },
                    new() { wcid = 20629, name = "Trade Note (200,000)", stackSize = 1 },
                    new() { wcid = 20630, name = "Trade Note (250,000)", stackSize = 1 },
                    new() { wcid = 6058, name = "Dark Shard", stackSize = 1 },
                    new() { wcid = 6059, name = "Dark Sliver", stackSize = 1 },
                    new() { wcid = 6060, name = "Dark Speck", stackSize = 1 },
                    new() { wcid = 6055, name = "Cracked Shard", stackSize = 1 },
                    new() { wcid = 6056, name = "Small Shard", stackSize = 1 },
                    new() { wcid = 6057, name = "Tiny Shard", stackSize = 1 },
                    new() { wcid = 6353, name = "Pyreal Mote", stackSize = 1 },
                    new() { wcid = 6355, name = "Pyreal Sliver", stackSize = 1 },
                    new() { wcid = 6876, name = "Sturdy Iron Key", stackSize = 1 },
                    new() { wcid = 45876, name = "Scarlet Red Letter", stackSize = 1 },
                    new() { wcid = 45875, name = "Lucky Gold Letter", stackSize = 1 },
                    new() { wcid = 44711, name = "Lesser Stamina Kit", stackSize = 1 },
                    new() { wcid = 44713, name = "Lesser Mana Kit", stackSize = 1 }
                },
                stackSizeChance = 0.2
            }
        };
    }

    void TryPatchLockUnlock()
    {
        ModManager.Log("[Lockboxes] TryPatchLockUnlock called", ModManager.LogLevel.Info);
        
        lock (LockPatchLock)
        {
            if (LockPatchApplied)
            {
                ModManager.Log("[Lockboxes] LockPatchAlreadyApplied, skipping", ModManager.LogLevel.Info);
                return;
            }

            try
            {
                MethodInfo? target = AccessTools.Method(typeof(LockHelper), nameof(LockHelper.Unlock), new Type[] { typeof(WorldObject), typeof(Key), typeof(string) });
                if (target == null)
                {
                    ModManager.Log("[Lockboxes] LockHelper.Unlock(WorldObject, Key, string) not found; lockbox unlock disabled.", ModManager.LogLevel.Error);
                    return;
                }

                ModManager.Log($"[Lockboxes] Found LockHelper.Unlock method: {target.DeclaringType?.FullName}.{target.Name}", ModManager.LogLevel.Info);

                MethodInfo? postfix = AccessTools.Method(typeof(PatchClass), nameof(PostLockUnlock));
                if (postfix == null)
                {
                    ModManager.Log("[Lockboxes] PostLockUnlock method not found.", ModManager.LogLevel.Error);
                    return;
                }

                ModC.Harmony.Patch(target, postfix: new HarmonyMethod(postfix));
                LockPatchApplied = true;
                ModManager.Log("[Lockboxes] LockHelper.Unlock postfix applied.", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {

                ModManager.Log($"[Lockboxes] LockHelper.Unlock patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    void TryPatchChestOpen()
    {
        ModManager.Log("[Lockboxes] TryPatchChestOpen called", ModManager.LogLevel.Info);

        lock (LockPatchLock)
        {
            if (ChestOpenPatchApplied)
            {
                ModManager.Log("[Lockboxes] ChestOpenPatchAlreadyApplied, skipping", ModManager.LogLevel.Info);
                return;
            }

            try
            {
                var chestType = typeof(Chest);
                ModManager.Log($"[Lockboxes] Looking for Open method on {chestType.FullName}", ModManager.LogLevel.Info);

                var allMethods = chestType.GetMethods(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance);
                ModManager.Log($"[Lockboxes] Found {allMethods.Length} methods on Chest type", ModManager.LogLevel.Info);
                
                foreach (var m in allMethods.Where(m => m.Name.Contains("Open")))
                {
                    var parameters = m.GetParameters();
                    ModManager.Log($"[Lockboxes] Found method: {m.Name} with {parameters.Length} params", ModManager.LogLevel.Info);
                }

                MethodInfo? target = AccessTools.Method(typeof(Chest), nameof(Chest.Open), new Type[] { typeof(Player) });
                if (target == null)
                {
                    ModManager.Log("[Lockboxes] Chest.Open(Player) not found; trying without params", ModManager.LogLevel.Info);
                    target = AccessTools.Method(typeof(Chest), "Open");
                }
                if (target == null)
                {
                    ModManager.Log("[Lockboxes] Chest.Open not found at all; lockbox open disabled.", ModManager.LogLevel.Error);
                    return;
                }

                ModManager.Log($"[Lockboxes] Found Chest.Open method: {target.DeclaringType?.FullName}.{target.Name}", ModManager.LogLevel.Info);

                MethodInfo? prefix = AccessTools.Method(typeof(PatchClass), nameof(PreChestOpen));
                if (prefix == null)
                {
                    ModManager.Log("[Lockboxes] PreChestOpen method not found.", ModManager.LogLevel.Error);
                    return;
                }

                ModManager.Log("[Lockboxes] Applying Harmony patch to Chest.Open...", ModManager.LogLevel.Info);
                ModC.Harmony.Patch(target, prefix: new HarmonyMethod(prefix));
                ChestOpenPatchApplied = true;
                ModManager.Log("[Lockboxes] Chest.Open prefix applied successfully!", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Lockboxes] Chest.Open patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    public static bool PreChestOpen(Player player, Chest __instance)
    {
        ModManager.Log($"[Lockboxes] PreChestOpen: player={player?.Name}, chest={__instance?.WeenieClassId}, type={__instance?.GetType().FullName}", ModManager.LogLevel.Info);

        if (__instance == null || player == null)
            return true;

        ModManager.Log($"[Lockboxes] PreChestOpen: IsLocked={__instance.IsLocked}", ModManager.LogLevel.Info);

        if (!LockboxWCIDs.Contains(__instance.WeenieClassId))
        {
            ModManager.Log($"[Lockboxes] PreChestOpen: {__instance.WeenieClassId} is not a lockbox", ModManager.LogLevel.Info);
            return true;
        }

        ModManager.Log($"[Lockboxes] Player {player.Name} opened a lockbox!", ModManager.LogLevel.Info);
        HandleLockboxUnlock(player, __instance);
        return false;
    }

    // Also patch WorldObject's OnActivate to catch anything
    void TryPatchWorldObjectOnActivate()
    {
        ModManager.Log("[Lockboxes] TryPatchWorldObjectOnActivate called", ModManager.LogLevel.Info);

        lock (LockPatchLock)
        {
            if (WorldObjectActivatePatchApplied)
            {
                ModManager.Log("[Lockboxes] WorldObjectActivatePatchAlreadyApplied, skipping", ModManager.LogLevel.Info);
                return;
            }

            try
            {
                var woType = typeof(WorldObject);
                var activateMethods = woType.GetMethods(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance)
                    .Where(m => m.Name.Contains("OnActivate") || m.Name.Contains("Activate")).ToArray();
                ModManager.Log($"[Lockboxes] Found {activateMethods.Length} OnActivate/Activate methods on WorldObject", ModManager.LogLevel.Info);

                // Try OnUse
                MethodInfo? onUseMethod = AccessTools.Method(woType, "OnUse", new Type[] { typeof(Player) });
                if (onUseMethod != null)
                {
                    ModManager.Log("[Lockboxes] Found WorldObject.OnUse(Player), patching...", ModManager.LogLevel.Info);
                    MethodInfo? prefix = AccessTools.Method(typeof(PatchClass), nameof(PreWorldObjectOnUse));
                    if (prefix != null)
                    {
                        ModC.Harmony.Patch(onUseMethod, prefix: new HarmonyMethod(prefix));
                        WorldObjectActivatePatchApplied = true;
                        ModManager.Log("[Lockboxes] WorldObject.OnUse prefix applied!", ModManager.LogLevel.Info);
                    }
                }
                else
                {
                    ModManager.Log("[Lockboxes] WorldObject.OnUse not found", ModManager.LogLevel.Info);
                }

                // Also try Player.Activate
                var playerType = typeof(Player);
                var activateMethod = AccessTools.Method(playerType, "Activate", new Type[] { typeof(WorldObject) });
                if (activateMethod != null)
                {
                    ModManager.Log("[Lockboxes] Found Player.Activate(WorldObject), patching...", ModManager.LogLevel.Info);
                    MethodInfo? prefix2 = AccessTools.Method(typeof(PatchClass), nameof(PrePlayerActivate));
                    if (prefix2 != null)
                    {
                        ModC.Harmony.Patch(activateMethod, prefix: new HarmonyMethod(prefix2));
                        ModManager.Log("[Lockboxes] Player.Activate prefix applied!", ModManager.LogLevel.Info);
                    }
                }
                else
                {
                    ModManager.Log("[Lockboxes] Player.Activate not found", ModManager.LogLevel.Info);
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Lockboxes] WorldObject.OnActivate patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    public static bool PrePlayerActivate(WorldObject target, Player __instance)
    {
        ModManager.Log($"[Lockboxes] PrePlayerActivate: player={__instance?.Name}, target={target?.WeenieClassId}, type={target?.GetType().FullName}", ModManager.LogLevel.Info);

        if (target == null || __instance == null)
            return true;

        if (!LockboxWCIDs.Contains(target.WeenieClassId))
            return true;

        ModManager.Log($"[Lockboxes] Player {__instance.Name} activated lockbox WCID {target.WeenieClassId}!", ModManager.LogLevel.Info);

        HandleLockboxUnlock(__instance, target);
        return false;
    }

    public static bool PreWorldObjectOnUse(Player player, WorldObject __instance)
    {
        ModManager.Log($"[Lockboxes] PreWorldObjectOnUse: player={player?.Name}, target={__instance?.WeenieClassId}, type={__instance?.GetType().FullName}", ModManager.LogLevel.Info);

        if (__instance == null || player == null)
            return true;

        if (!LockboxWCIDs.Contains(__instance.WeenieClassId))
            return true;

        ModManager.Log($"[Lockboxes] Player {player.Name} used lockbox WCID {__instance.WeenieClassId}!", ModManager.LogLevel.Info);

        if (__instance is Chest chest)
        {
            ModManager.Log($"[Lockboxes] Lockbox is a Chest, using Chest.Open path", ModManager.LogLevel.Info);
            HandleLockboxUnlock(player, chest);
            return false;
        }

        ModManager.Log($"[Lockboxes] Lockbox is NOT a Chest, type is {__instance.GetType().FullName}", ModManager.LogLevel.Info);
        HandleLockboxUnlock(player, __instance);
        return false;
    }

    void TryPatchGenerateTreasure()
    {
        lock (LockPatchLock)
        {
            if (GenerateTreasurePatchApplied)
                return;

            if (Settings?.EnableRandomLootDrops != true)
            {
                return;
            }

            try
            {
                MethodInfo? target = AccessTools.Method(typeof(Creature), "GenerateTreasure",
                    new Type[] { typeof(DamageHistoryInfo), typeof(Corpse) });

                if (target == null)
                {
                    ModManager.Log("[Lockboxes] Creature.GenerateTreasure not found; random loot drops disabled.", ModManager.LogLevel.Error);
                    return;
                }

                MethodInfo? postfix = AccessTools.Method(typeof(PatchClass), nameof(PostGenerateTreasure));
                if (postfix == null)
                {
                    ModManager.Log("[Lockboxes] PostGenerateTreasure method not found.", ModManager.LogLevel.Error);
                    return;
                }

                ModC.Harmony.Patch(target, postfix: new HarmonyMethod(postfix));
                GenerateTreasurePatchApplied = true;
                ModManager.Log("[Lockboxes] GenerateTreasure postfix applied (random loot drops enabled).", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Lockboxes] GenerateTreasure patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    static MethodInfo? FindKeyHandleActionUseOnTarget()
    {
        const BindingFlags flags = BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance;
        MethodInfo[] methods = typeof(Key).GetMethods(flags)
            .Where(m => string.Equals(m.Name, nameof(Key.HandleActionUseOnTarget), StringComparison.Ordinal))
            .ToArray();

        if (methods.Length == 0)
            return null;

        if (methods.Length == 1)
            return methods[0];

        foreach (MethodInfo m in methods)
        {
            ParameterInfo[] p = m.GetParameters();
            if (p.Length == 2 && p[0].ParameterType == typeof(Player) && p[1].ParameterType == typeof(WorldObject))
                return m;
        }

        return methods[0];
    }

    void TryPatchKeyHandleActionUseOnTarget()
    {
        ModManager.Log("[Lockboxes] TryPatchKeyHandleActionUseOnTarget called", ModManager.LogLevel.Info);

        lock (LockPatchLock)
        {
            if (KeyUsePatchApplied)
            {
                ModManager.Log("[Lockboxes] KeyUsePatchAlreadyApplied, skipping", ModManager.LogLevel.Info);
                return;
            }

            try
            {
                MethodInfo? target = FindKeyHandleActionUseOnTarget();
                if (target == null)
                {
                    ModManager.Log("[Lockboxes] Key.HandleActionUseOnTarget not found; lockbox key detection disabled.", ModManager.LogLevel.Error);
                    return;
                }

                ModManager.Log($"[Lockboxes] Found Key.HandleActionUseOnTarget method: {target.DeclaringType?.FullName}.{target.Name}", ModManager.LogLevel.Info);

                MethodInfo? prefix = AccessTools.Method(typeof(PatchClass), nameof(PreKeyHandleActionUseOnTarget));
                if (prefix == null)
                {
                    ModManager.Log("[Lockboxes] PreKeyHandleActionUseOnTarget method not found.", ModManager.LogLevel.Error);
                    return;
                }

                ModC.Harmony.Patch(target, prefix: new HarmonyMethod(prefix));
                KeyHandleActionUseOnTargetMethod = target;
                KeyUsePatchApplied = true;
                ModManager.Log("[Lockboxes] Key.HandleActionUseOnTarget prefix applied.", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Lockboxes] Key.HandleActionUseOnTarget patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    public static bool PreKeyHandleActionUseOnTarget(Key __instance, Player player, WorldObject target)
    {
        ModManager.Log($"[Lockboxes] PreKeyHandleActionUseOnTarget: key={__instance?.WeenieClassId}, target={target?.WeenieClassId}, targetType={target?.WeenieType}", ModManager.LogLevel.Info);

        if (target == null || player == null || __instance == null)
            return true;

        if (!LockboxWCIDs.Contains(target.WeenieClassId))
        {
            ModManager.Log($"[Lockboxes] PreKeyHandleActionUseOnTarget: target {target.WeenieClassId} is not a lockbox", ModManager.LogLevel.Info);
            return true;
        }

        ModManager.Log($"[Lockboxes] Key {__instance.WeenieClassId} used on lockbox {target.WeenieClassId}, attempting unlock", ModManager.LogLevel.Info);

        if (!target.IsLocked)
        {
            ModManager.Log("[Lockboxes] Lockbox is already unlocked, directly give loot", ModManager.LogLevel.Info);
            HandleLockboxUnlock(player, target);
            return false;
        }

        int keyDifficulty = GetKeyDifficulty(__instance);
        int lockDifficulty = LockHelper.GetResistLockpick(target) ?? 0;

        ModManager.Log($"[Lockboxes] Lock difficulty: {lockDifficulty}, Key difficulty: {keyDifficulty}", ModManager.LogLevel.Info);

        if (keyDifficulty >= lockDifficulty)
        {
            UnlockResults result = TryUnlockLockbox(target, player, __instance);
            ModManager.Log($"[Lockboxes] Direct unlock result: {result}", ModManager.LogLevel.Info);

            if (result == UnlockResults.UnlockSuccess)
            {
                HandleLockboxUnlock(player, target);
                return false;
            }
        }

        return true;
    }

    private static int GetKeyDifficulty(Key key)
    {
        if (key.MaxStructure != null && key.MaxStructure.Value >= 1000)
            return 1000;
        if (key.MaxStructure != null && key.MaxStructure.Value >= 750)
            return 750;
        if (key.MaxStructure != null && key.MaxStructure.Value >= 500)
            return 500;
        return 250;
    }

    private static UnlockResults TryUnlockLockbox(WorldObject lockbox, Player player, Key key)
    {
        try
        {
            if (lockbox is ACE.Server.WorldObjects.Lock lockObj)
            {
                int difficulty = 0;
                return lockObj.Unlock(player.Guid.Full, key);
            }

            string? lockCode = LockHelper.GetLockCode(lockbox);
            string keyCode = key.GetProperty(PropertyString.KeyCode) ?? "";

            if (lockCode != null && lockCode != "" && lockCode != keyCode)
            {
                return UnlockResults.IncorrectKey;
            }

            if (key.GetProperty(PropertyBool.OpensAnyLock) == true)
            {
                lockbox.IsLocked = false;
                return UnlockResults.UnlockSuccess;
            }

            return UnlockResults.IncorrectKey;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Lockboxes] Error in TryUnlockLockbox: {ex}", ModManager.LogLevel.Error);
            return UnlockResults.IncorrectKey;
        }
    }

    public static void PostLockUnlock(WorldObject target, Key key, string keyCode, UnlockResults __result)
    {
        ModManager.Log($"[Lockboxes] PostLockUnlock ENTERED: target={target?.WeenieClassId}, key={key?.WeenieClassId}, result={__result}", ModManager.LogLevel.Info);
        
        if (__result != UnlockResults.UnlockSuccess)
        {
            ModManager.Log($"[Lockboxes] PostLockUnlock early exit: result != UnlockSuccess", ModManager.LogLevel.Info);
            return;
        }

        if (target == null)
        {
            ModManager.Log($"[Lockboxes] PostLockUnlock early exit: target is null", ModManager.LogLevel.Info);
            return;
        }

        ModManager.Log($"[Lockboxes] Checking LockboxWCIDs contains {target.WeenieClassId}: {LockboxWCIDs.Contains(target.WeenieClassId)}", ModManager.LogLevel.Info);
        
        if (!LockboxWCIDs.Contains(target.WeenieClassId))
        {
            ModManager.Log($"[Lockboxes] PostLockUnlock early exit: not a lockbox", ModManager.LogLevel.Info);
            return;
        }

        ModManager.Log($"[Lockboxes] PostLockUnlock called: target={target.WeenieClassId}, key={key.WeenieClassId}, key.Guid={key.Guid}", ModManager.LogLevel.Info);

        Player? player = PlayerManager.GetOnlinePlayer(key.Guid);
        if (player == null)
        {
            ModManager.Log($"[Lockboxes] Could not find player for key.Guid={key.Guid}", ModManager.LogLevel.Warn);
            return;
        }

        ModManager.Log($"[Lockboxes] Player {player.Name} unlocked lockbox", ModManager.LogLevel.Info);

        HandleLockboxUnlock(player, target);
    }

    private static void HandleLockboxUnlock(Player player, WorldObject lockbox)
    {
        var tier = GetLockboxTier(lockbox.WeenieClassId);
        if (tier == 0)
        {
            ModManager.Log($"[Lockboxes] Unknown lockbox tier for WCID {lockbox.WeenieClassId}", ModManager.LogLevel.Warn);
            return;
        }

        ModManager.Log($"[Lockboxes] HandleLockboxUnlock: tier={tier}", ModManager.LogLevel.Info);

        int itemCount = ThreadSafeRandom.Next(Settings?.LootMinItems ?? 1, (Settings?.LootMaxItems ?? 3) + 1);
        ModManager.Log($"[Lockboxes] Generating {itemCount} loot items", ModManager.LogLevel.Info);
        
        var lootItems = new List<WorldObject>();

        for (int i = 0; i < itemCount; i++)
        {
            var loot = GenerateRandomLoot(tier);
            if (loot != null)
                lootItems.Add(loot);
            else
                ModManager.Log($"[Lockboxes] GenerateRandomLoot returned null for item {i}", ModManager.LogLevel.Warn);
        }

        ModManager.Log($"[Lockboxes] Generated {lootItems.Count} loot items", ModManager.LogLevel.Info);

        foreach (var item in lootItems)
        {
            try
            {
                if (player.TryCreateInInventoryWithNetworking(item))
                {
                    player.SendMessage($"You found: {item.Name}");
                }
                else
                {
                    ModManager.Log($"[Lockboxes] Failed to add loot to inventory: {item.Name}", ModManager.LogLevel.Warn);
                    item.Destroy();
                }
            }
            catch (Exception ex)
            {
                ModManager.Log($"[Lockboxes] Error adding loot to inventory: {ex}", ModManager.LogLevel.Error);
                item.Destroy();
            }
        }

        lockbox.Destroy();

        player.SendMessage($"You opened a Tier {tier} Lockbox and found {lootItems.Count} item(s)!");
        ModManager.Log($"[Lockboxes] Player {player.Name} opened Tier {tier} Lockbox, received {lootItems.Count} items.", ModManager.LogLevel.Info);
    }

    public static void OpenLockboxDirect(Player player, int tier)
    {
        ModManager.Log($"[Lockboxes] OpenLockboxDirect: player={player.Name}, tier={tier}", ModManager.LogLevel.Info);

        uint wcid = tier switch
        {
            1 => TIER1_WCID,
            2 => TIER2_WCID,
            3 => TIER3_WCID,
            _ => TIER1_WCID
        };

        WorldObject? lockbox = WorldObjectFactory.CreateNewWorldObject(wcid);
        if (lockbox == null)
        {
            ModManager.Log($"[Lockboxes] OpenLockboxDirect: failed to create lockbox WCID {wcid}", ModManager.LogLevel.Error);
            return;
        }

        ModManager.Log($"[Lockboxes] OpenLockboxDirect: created lockbox {lockbox.WeenieClassId}", ModManager.LogLevel.Info);
        HandleLockboxUnlock(player, lockbox);
    }

    private static int GetLockboxTier(uint wcid)
    {
        return wcid switch
        {
            TIER1_WCID => 1,
            TIER2_WCID => 2,
            TIER3_WCID => 3,
            _ => 0
        };
    }

    private static WorldObject? GenerateRandomLoot(int tier)
    {
        var config = LootConfig ?? GetDefaultLootConfig();

        if (config.common.items == null || config.common.items.Count == 0)
        {
            ModManager.Log("[Lockboxes] No loot items in config!", ModManager.LogLevel.Error);
            return null;
        }

        ModManager.Log($"[Lockboxes] LootConfig has {config.common.items.Count} items", ModManager.LogLevel.Info);

        int randomIndex = ThreadSafeRandom.Next(0, config.common.items.Count);
        var selectedItem = config.common.items[randomIndex];

        ModManager.Log($"[Lockboxes] Selected loot: wcid={selectedItem.wcid}, name={selectedItem.name}", ModManager.LogLevel.Info);

        try
        {
            WorldObject item = WorldObjectFactory.CreateNewWorldObject((uint)selectedItem.wcid);
            if (item != null)
            {
                int stackSize = selectedItem.stackSize;

                if (config.common.stackSizeChance > 0 && ThreadSafeRandom.Next(0.0f, 1.0f) < config.common.stackSizeChance)
                {
                    stackSize *= 2;
                }

                item.SetStackSize(stackSize);
                return item;
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Lockboxes] Error creating loot item {selectedItem.wcid}: {ex}", ModManager.LogLevel.Warn);
        }

        return null;
    }

    public static void PostGenerateTreasure(DamageHistoryInfo damageInfo, Corpse corpse, Creature __instance)
    {
        if (Settings?.EnableRandomLootDrops != true)
            return;

        if (!Settings.DropFromMonsters)
            return;

        try
        {
            TryDropLockboxFromMonster(__instance, corpse);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Lockboxes] Error in PostGenerateTreasure: {ex}", ModManager.LogLevel.Error);
        }
    }

    private static void TryDropLockboxFromMonster(Creature creature, Corpse corpse)
    {
        if (corpse == null)
            return;

        double roll = ThreadSafeRandom.Next(0.0f, 1.0f);
        if (roll > Settings.LootDropChance)
            return;

        var lockbox = CreateRandomTierLockbox();
        if (lockbox == null)
            return;

        bool added = corpse.TryAddToInventory(lockbox);
        if (added)
        {
            ModManager.Log($"[Lockboxes] Dropped {lockbox.Name} from monster {creature.Name}", ModManager.LogLevel.Info);
        }
    }

    private static WorldObject? CreateRandomTierLockbox()
    {
        int tier = SelectRandomTier();
        return CreateLockbox(tier);
    }

    private static int SelectRandomTier()
    {
        int t1 = Settings?.Tier1LootDropWeight ?? 60;
        int t2 = Settings?.Tier2LootDropWeight ?? 30;
        int t3 = Settings?.Tier3LootDropWeight ?? 10;
        int total = t1 + t2 + t3;

        int roll = ThreadSafeRandom.Next(0, total);

        if (roll < t1)
            return 1;
        roll -= t1;
        if (roll < t2)
            return 2;
        return 3;
    }

    public static WorldObject? CreateLockbox(int tier)
    {
        uint wcid = tier switch
        {
            1 => TIER1_WCID,
            2 => TIER2_WCID,
            3 => TIER3_WCID,
            _ => TIER1_WCID
        };

        ModManager.Log($"[Lockboxes] CreateLockbox: tier={tier}, wcid={wcid}", ModManager.LogLevel.Info);

        try
        {
            WorldObject lockbox = WorldObjectFactory.CreateNewWorldObject(wcid);
            ModManager.Log($"[Lockboxes] WorldObjectFactory.CreateNewWorldObject({wcid}) returned: {lockbox?.WeenieClassId ?? 0}", ModManager.LogLevel.Info);
            
            if (lockbox != null)
            {
                ModManager.Log($"[Lockboxes] Lockbox type: {lockbox.GetType().FullName}", ModManager.LogLevel.Info);
                ModManager.Log($"[Lockboxes] Lockbox WeenieType: {lockbox.WeenieType}", ModManager.LogLevel.Info);
                ModManager.Log($"[Lockboxes] Lockbox ItemType: {lockbox.ItemType}", ModManager.LogLevel.Info);

                lockbox.Name = $"Tier {tier} Lockbox";
                lockbox.ResistLockpick = tier * 50;
                lockbox.IconId = 100669720;
                return lockbox;
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Lockboxes] Error creating lockbox tier {tier}: {ex}", ModManager.LogLevel.Error);
        }

        return null;
    }
}