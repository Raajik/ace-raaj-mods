using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using ACE.Server.Entity;
using ACE.Server.Managers;
using ACE.Server.Network.GameEvent.Events;
using ACE.Server.Network.GameMessages.Messages;
using HarmonyLib;

namespace BetterKeys;

public class Settings
{
    [JsonPropertyName("// Keys")]
    public string KeysDoc { get; init; } = "Key mappings.";

    // Use Lock.Unlock(lockpick skill) with an effective skill high enough to always succeed on pickable locks.
    // Does not help unpickable locks (ResistLockpick null or >= 9999) or the door-with-empty-LockCode vanilla block (handled separately).
    [JsonPropertyName("UseLockpickPathForSkeletonKeys")]
    public bool UseLockpickPathForSkeletonKeys { get; set; }

    // PropertyInt64 ids must match LeyLineLedger BankItem.Prop for each tier.
    // Defaults to true: banked charges can unlock chests when no skeleton key is in inventory (see prefix on Chest.CheckUseRequirements).
    [JsonPropertyName("EnableUnlockChestUsingSkeletonBank")]
    public bool EnableUnlockChestUsingSkeletonBank { get; set; } = true;

    // LeyLineLedger bank lines for chest-only skeleton bank debits (SSK / LEG). Must match Items[].Prop in LeyLineLedger.
    [JsonPropertyName("SkeletonBankPropChestSsk")]
    public int SkeletonBankPropChestSsk { get; set; } = 40500;

    [JsonPropertyName("SkeletonBankPropChestLeg")]
    public int SkeletonBankPropChestLeg { get; set; } = 41000;

    // Bank fallback WCIDs: debit LEG line (ResistLockpick <= 5000 tier) when resist is null/unpickable and WCID matches.
    [JsonPropertyName("LegendaryChestWcids")]
    public List<uint> LegendaryChestWcids { get; set; } =
    [
        48741, 48742, 48743, 48744,
    ];

    [JsonPropertyName("ManaForgeChestWcids")]
    public List<uint> ManaForgeChestWcids { get; set; } =
    [
        38443, 38444, 38445, 38446, 38447, 38457,
    ];

    // Bank fallback: debit SSK bank line (<=1000 resist tier) for these chest WCIDs when resist-based pick does not apply.
    [JsonPropertyName("SturdySteelChestWcids")]
    public List<uint> SturdySteelChestWcids { get; set; } =
    [
        24476,
    ];

    [JsonPropertyName("SturdyIronChestWcids")]
    public List<uint> SturdyIronChestWcids { get; set; } =
    [
        8999, 3985,
    ];

    // After skeleton key or bank unlock, the client often immediately uses the chest and opens it; skipping that first Open avoids an empty loot view until re-open (helps loot tools). Second use opens normally.
    [JsonPropertyName("SuppressImmediateChestOpenAfterSkeletonKeyUnlock")]
    public bool SuppressImmediateChestOpenAfterSkeletonKeyUnlock { get; set; } = true;

    [JsonPropertyName("SuppressImmediateChestOpenWindowMs")]
    public int SuppressImmediateChestOpenWindowMs { get; set; } = 280;

    [JsonPropertyName("SuppressChestOpenDoc")]
    public string SuppressChestOpenDoc { get; init; } = "When SuppressImmediateChestOpenAfterSkeletonKeyUnlock is true (default), skeleton keys ONLY unlock the chest without opening it. The open-on-unlock behavior is fully suppressed — player clicks the chest again to open manually. Prevents empty-loot-view issue from auto-open.";
}

[HarmonyPatch]
public partial class PatchClass : BasicPatch<Settings>
{
    readonly record struct SkeletonKeyCaps(int DoorMax, int ChestMax);

    private static Dictionary<uint, SkeletonKeyCaps>? _keys;

    static readonly object LockHelperPatchLock = new();
    static bool LockHelperPatchesApplied;
    static bool UseUnlockerPatchApplied;
    static bool KeyUsePrefixPatched;
    static bool ChestBankPatchApplied;
    static bool ChestOpenSuppressPatchApplied;
    static MethodInfo? KeyHandleActionUseOnTargetMethod;
    static MethodInfo? UseUnlockerMethod;
    static MethodInfo? ChestCheckUseRequirementsMethod;
    static MethodInfo? ChestUnlockWithKeyMethod;
    static MethodInfo? ChestOpenMethod;
    static bool BetterKeysCommandsRegistered;

    sealed class PendingChestOpenSuppress
    {
        public ObjectGuid ChestGuid;
        public DateTime UnlockUtc;
    }

    static readonly ConditionalWeakTable<Player, PendingChestOpenSuppress> PendingSkeletonChestOpenSuppress = new();

    // Stock ACE never checks OpensAnyLock when GetLockCode(target) is null — must set LockCode + KeyCode instead.
    const string SkeletonLockSentinel = "__BetterKeys_SK__";

    static Settings RuntimeSettings { get; set; } = new Settings();

    public static Settings RuntimeSettingsSnapshot => RuntimeSettings;

    sealed class SkeletonUnlockState
    {
        public Key Key = null!;
        public WorldObject Target = null!;
        public string? PreviousKeyCode;
        public bool HadKeyCode;
        public string? PreviousLockCode;
        public bool HadLockCode;
    }

    public PatchClass(BasicMod mod, string settingsName = "Settings.json") : base(mod, settingsName)
    {
    }

    public override void Start()
    {
        base.Start();
    }

    // ModC.Harmony is not reliably available for manual patches until after startup succeeds (same pattern as AutoLoot GenerateTreasure).
    public override async Task OnStartSuccess()
    {
        await base.OnStartSuccess();
        RuntimeSettings = Settings ?? new Settings();
        TryPatchLockHelperUnlock();
        TryPatchUseUnlocker();
        TryPatchKeyHandleActionUseOnTarget();
        TryPatchChestSkeletonBankUnlock();
        TryPatchChestOpenAfterSkeletonUnlock();
        if (!BetterKeysCommandsRegistered)
        {
            ModC.RegisterCommands(new Enum[] { BetterKeysCommandCategory.Admin });
            BetterKeysCommandsRegistered = true;
        }
    }

    public override void Stop()
    {
        lock (LockHelperPatchLock)
        {
            if (LockHelperPatchesApplied)
            {
                try
                {
                    MethodInfo? target = AccessTools.Method(typeof(LockHelper), nameof(LockHelper.Unlock), new Type[] { typeof(WorldObject), typeof(Key), typeof(string) });
                    if (target != null)
                    {
                        MethodInfo? pre = AccessTools.Method(typeof(PatchClass), nameof(PreLockHelperUnlock));
                        MethodInfo? post = AccessTools.Method(typeof(PatchClass), nameof(PostLockHelperUnlock));
                        MethodInfo? fin = AccessTools.Method(typeof(PatchClass), nameof(FinLockHelperUnlock));
                        if (pre != null)
                            ModC.Harmony.Unpatch(target, pre);
                        if (post != null)
                            ModC.Harmony.Unpatch(target, post);
                        if (fin != null)
                            ModC.Harmony.Unpatch(target, fin);
                    }
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[BetterKeys] Stop unpatch LockHelper: {ex.Message}", ModManager.LogLevel.Warn);
                }

                LockHelperPatchesApplied = false;
            }

            if (KeyUsePrefixPatched && KeyHandleActionUseOnTargetMethod != null)
            {
                try
                {
                    MethodInfo? pre = AccessTools.Method(typeof(PatchClass), nameof(PreKeyTopOffSkeletonStructure));
                    if (pre != null)
                        ModC.Harmony.Unpatch(KeyHandleActionUseOnTargetMethod, pre);
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[BetterKeys] Stop unpatch Key.HandleActionUseOnTarget: {ex.Message}", ModManager.LogLevel.Warn);
                }

                KeyUsePrefixPatched = false;
                KeyHandleActionUseOnTargetMethod = null;
            }

            if (UseUnlockerPatchApplied && UseUnlockerMethod != null)
            {
                try
                {
                    MethodInfo? pre = AccessTools.Method(typeof(PatchClass), nameof(PreUseUnlocker));
                    if (pre != null)
                        ModC.Harmony.Unpatch(UseUnlockerMethod, pre);
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[BetterKeys] Stop unpatch UnlockerHelper.UseUnlocker: {ex.Message}", ModManager.LogLevel.Warn);
                }

                UseUnlockerPatchApplied = false;
                UseUnlockerMethod = null;
            }

            if (ChestBankPatchApplied && ChestCheckUseRequirementsMethod != null)
            {
                try
                {
                    MethodInfo? pre = AccessTools.Method(typeof(PatchClass), nameof(PreChestSkeletonBankUnlock));
                    if (pre != null)
                        ModC.Harmony.Unpatch(ChestCheckUseRequirementsMethod, pre);
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[BetterKeys] Stop unpatch Chest.CheckUseRequirements: {ex.Message}", ModManager.LogLevel.Warn);
                }

                ChestBankPatchApplied = false;
                ChestCheckUseRequirementsMethod = null;
            }

            if (ChestOpenSuppressPatchApplied)
            {
                try
                {
                    if (ChestOpenMethod != null)
                    {
                        MethodInfo? preOpen = AccessTools.Method(typeof(PatchClass), nameof(PreChestOpenSuppressAutoOpen));
                        if (preOpen != null)
                            ModC.Harmony.Unpatch(ChestOpenMethod, preOpen);
                    }

                    if (ChestUnlockWithKeyMethod != null)
                    {
                        MethodInfo? postUnlock = AccessTools.Method(typeof(PatchClass), nameof(PostChestUnlockWithKey));
                        if (postUnlock != null)
                            ModC.Harmony.Unpatch(ChestUnlockWithKeyMethod, postUnlock);
                    }
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[BetterKeys] Stop unpatch Chest open/unlock suppress: {ex.Message}", ModManager.LogLevel.Warn);
                }

                ChestOpenSuppressPatchApplied = false;
                ChestOpenMethod = null;
                ChestUnlockWithKeyMethod = null;
            }

            BetterKeysCommandsRegistered = false;
        }

        base.Stop();
    }

    void TryPatchLockHelperUnlock()
    {
        lock (LockHelperPatchLock)
        {
            if (LockHelperPatchesApplied)
                return;

            try
            {
                MethodInfo? target = AccessTools.Method(typeof(LockHelper), nameof(LockHelper.Unlock), new Type[] { typeof(WorldObject), typeof(Key), typeof(string) });
                if (target == null)
                {
                    ModManager.Log("[BetterKeys] LockHelper.Unlock(WorldObject, Key, string) not found; skeleton keys disabled.", ModManager.LogLevel.Error);
                    return;
                }

                MethodInfo? prefix = AccessTools.Method(typeof(PatchClass), nameof(PreLockHelperUnlock));
                MethodInfo? postfix = AccessTools.Method(typeof(PatchClass), nameof(PostLockHelperUnlock));
                MethodInfo? finalizer = AccessTools.Method(typeof(PatchClass), nameof(FinLockHelperUnlock));
                if (prefix == null || postfix == null || finalizer == null)
                {
                    ModManager.Log("[BetterKeys] LockHelper patch methods not found.", ModManager.LogLevel.Error);
                    return;
                }

                // Stock LockHelper.Unlock matches key KeyCode to target LockCode (ResistLockpick is not used for keys).
                // We inject the correct code (or OpensAnyLock) for configured skeleton WCIDs within max difficulty.
                ModC.Harmony.Patch(target,
                    prefix: new HarmonyMethod(prefix),
                    postfix: new HarmonyMethod(postfix),
                    finalizer: new HarmonyMethod(finalizer));
                LockHelperPatchesApplied = true;
                ModManager.Log("[BetterKeys] LockHelper.Unlock prefix/postfix/finalizer applied (OnStartSuccess).", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BetterKeys] LockHelper manual patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    void TryPatchUseUnlocker()
    {
        lock (LockHelperPatchLock)
        {
            if (UseUnlockerPatchApplied)
                return;

            try
            {
                MethodInfo? target = AccessTools.Method(typeof(UnlockerHelper), nameof(UnlockerHelper.UseUnlocker), new Type[] { typeof(Player), typeof(WorldObject), typeof(WorldObject) });
                if (target == null)
                {
                    ModManager.Log("[BetterKeys] UnlockerHelper.UseUnlocker(Player, WorldObject, WorldObject) not found.", ModManager.LogLevel.Error);
                    return;
                }

                MethodInfo? prefix = AccessTools.Method(typeof(PatchClass), nameof(PreUseUnlocker));
                if (prefix == null)
                    return;

                ModC.Harmony.Patch(target, prefix: new HarmonyMethod(prefix) { priority = Priority.First });
                UseUnlockerMethod = target;
                UseUnlockerPatchApplied = true;
                ModManager.Log("[BetterKeys] UnlockerHelper.UseUnlocker prefix applied (door empty LockCode + optional lockpick path).", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BetterKeys] UnlockerHelper.UseUnlocker patch failed: {ex}", ModManager.LogLevel.Error);
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
        lock (LockHelperPatchLock)
        {
            if (KeyUsePrefixPatched)
                return;

            try
            {
                MethodInfo? target = FindKeyHandleActionUseOnTarget();
                if (target == null)
                {
                    ModManager.Log("[BetterKeys] Key.HandleActionUseOnTarget not found; key durability pre-topoff disabled.", ModManager.LogLevel.Warn);
                    return;
                }

                MethodInfo? prefix = AccessTools.Method(typeof(PatchClass), nameof(PreKeyTopOffSkeletonStructure));
                if (prefix == null)
                    return;

                ModC.Harmony.Patch(target, prefix: new HarmonyMethod(prefix));
                KeyHandleActionUseOnTargetMethod = target;
                KeyUsePrefixPatched = true;
                ModManager.Log("[BetterKeys] Key.HandleActionUseOnTarget prefix applied (skeleton key structure top-off).", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BetterKeys] Key.HandleActionUseOnTarget patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    void TryPatchChestSkeletonBankUnlock()
    {
        lock (LockHelperPatchLock)
        {
            if (ChestBankPatchApplied)
                return;

            if (!RuntimeSettings.EnableUnlockChestUsingSkeletonBank)
            {
                ModManager.Log("[BetterKeys] EnableUnlockChestUsingSkeletonBank is false in Settings.json — banked-key chest unlock prefix not applied. Set to true and restart the server.", ModManager.LogLevel.Info);
                return;
            }

            try
            {
                MethodInfo? target = AccessTools.Method(typeof(Chest), nameof(Chest.CheckUseRequirements), new Type[] { typeof(WorldObject) });
                if (target == null)
                {
                    ModManager.Log("[BetterKeys] Chest.CheckUseRequirements(WorldObject) not found; bank-only chest unlock disabled.", ModManager.LogLevel.Warn);
                    return;
                }

                MethodInfo? prefix = AccessTools.Method(typeof(PatchClass), nameof(PreChestSkeletonBankUnlock));
                if (prefix == null)
                    return;

                ModC.Harmony.Patch(target, prefix: new HarmonyMethod(prefix));
                ChestCheckUseRequirementsMethod = target;
                ChestBankPatchApplied = true;
                ModManager.Log("[BetterKeys] Chest.CheckUseRequirements prefix applied (optional banked skeleton charge when no key in inventory).", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BetterKeys] Chest.CheckUseRequirements patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    void TryPatchChestOpenAfterSkeletonUnlock()
    {
        lock (LockHelperPatchLock)
        {
            if (ChestOpenSuppressPatchApplied)
                return;

            try
            {
                MethodInfo? unlockTarget = AccessTools.Method(typeof(Chest), nameof(Chest.Unlock), new Type[] { typeof(uint), typeof(Key), typeof(string) });
                MethodInfo? openTarget = AccessTools.Method(typeof(Chest), nameof(Chest.Open), new Type[] { typeof(Player) });
                MethodInfo? postUnlock = AccessTools.Method(typeof(PatchClass), nameof(PostChestUnlockWithKey));
                MethodInfo? preOpen = AccessTools.Method(typeof(PatchClass), nameof(PreChestOpenSuppressAutoOpen));

                if (unlockTarget == null || openTarget == null || postUnlock == null || preOpen == null)
                {
                    ModManager.Log("[BetterKeys] Chest.Unlock(Key) or Chest.Open(Player) not found; skeleton chest auto-open suppress disabled.", ModManager.LogLevel.Warn);
                    return;
                }

                ModC.Harmony.Patch(unlockTarget, postfix: new HarmonyMethod(postUnlock));
                ModC.Harmony.Patch(openTarget, prefix: new HarmonyMethod(preOpen));
                ChestUnlockWithKeyMethod = unlockTarget;
                ChestOpenMethod = openTarget;
                ChestOpenSuppressPatchApplied = true;
                ModManager.Log("[BetterKeys] Chest.Unlock/Chest.Open patches applied (optional suppress first open after skeleton unlock).", ModManager.LogLevel.Info);
            }
            catch (Exception ex)
            {
                ModManager.Log($"[BetterKeys] Chest open-after-unlock patch failed: {ex}", ModManager.LogLevel.Error);
            }
        }
    }

    public static void PostChestUnlockWithKey(uint unlockerGuid, Key key, string? keyCode, UnlockResults __result, Chest __instance)
    {
        if (__result != UnlockResults.UnlockSuccess || key == null || __instance == null)
            return;

        if (!RuntimeSettings.SuppressImmediateChestOpenAfterSkeletonKeyUnlock)
            return;

        EnsureKeyMap();
        if (_keys == null || !_keys.ContainsKey(key.WeenieClassId))
            return;

        Player? player = PlayerManager.GetOnlinePlayer(unlockerGuid);
        if (player == null)
            return;

        RegisterSuppressFirstChestOpenAfterSkeletonUnlock(player, __instance);
    }

    public static bool PreChestOpenSuppressAutoOpen(Player player, Chest __instance)
    {
        if (player == null || __instance == null)
            return true;

        if (!RuntimeSettings.SuppressImmediateChestOpenAfterSkeletonKeyUnlock)
            return true;

        if (!PendingSkeletonChestOpenSuppress.TryGetValue(player, out PendingChestOpenSuppress? pending))
            return true;

        if (pending.ChestGuid != __instance.Guid)
            return true;

        // Always suppress the very next open after a skeleton key unlock.
        // The key just unlocks the chest — player clicks again to open manually.
        PendingSkeletonChestOpenSuppress.Remove(player);
        return false;
    }

    static void RegisterSuppressFirstChestOpenAfterSkeletonUnlock(Player player, Chest chest)
    {
        if (!RuntimeSettings.SuppressImmediateChestOpenAfterSkeletonKeyUnlock)
            return;

        PendingChestOpenSuppress pending = new PendingChestOpenSuppress { ChestGuid = chest.Guid, UnlockUtc = DateTime.UtcNow };
        PendingSkeletonChestOpenSuppress.Remove(player);
        PendingSkeletonChestOpenSuppress.Add(player, pending);
    }

    // Before ACE warns / rejects Structure 0 / MaxStructure 1, top off configured skeleton keys.
    public static void PreKeyTopOffSkeletonStructure(Key __instance, Player player, WorldObject target)
    {
        if (__instance == null)
            return;

        EnsureKeyMap();
        if (!_keys!.ContainsKey(__instance.WeenieClassId))
            return;

        RepairSkeletonKeyDurability(__instance);
    }

    // Keys: Key.HandleActionUseOnTarget → UnlockerHelper.UseUnlocker → Chest/Door.Unlock → LockHelper.Unlock(WorldObject, Key, string).
    // Third parameter is string (not ref); ACE reads key.KeyCode when null — mutate KeyCode / LockCode and restore via __state.
    public static void PreLockHelperUnlock(WorldObject target, Key key, string keyCode, ref object? __state)
    {
        __state = null;
        if (target == null || key == null)
            return;

        if (!TryBeginSkeletonKeyMutations(target, key, out SkeletonUnlockState? st))
            return;

        __state = st!;
    }

    public static void PostLockHelperUnlock(WorldObject target, Key key, string keyCode, UnlockResults __result, ref object? __state)
    {
        RestoreSkeletonKeyMutations(ref __state);
        if (key != null && __result == UnlockResults.UnlockSuccess)
            RepairSkeletonKeyDurability(key);
    }

    public static Exception? FinLockHelperUnlock(Exception? __exception, WorldObject target, Key key, string keyCode, ref object? __state)
    {
        if (__exception != null)
            RestoreSkeletonKeyMutations(ref __state);

        return __exception;
    }

    static void RestoreSkeletonKeyMutations(ref object? __state)
    {
        if (__state is not SkeletonUnlockState st)
            return;

        if (st.HadKeyCode)
            st.Key.SetProperty(PropertyString.KeyCode, st.PreviousKeyCode!);
        else
            st.Key.RemoveProperty(PropertyString.KeyCode);

        if (st.Target is Chest || st.Target is Door || st.Target is global::ACE.Server.WorldObjects.Lock)
        {
            if (st.HadLockCode)
                st.Target.SetProperty(PropertyString.LockCode, st.PreviousLockCode!);
            else
                st.Target.RemoveProperty(PropertyString.LockCode);
        }

        __state = null;
    }

    // Bypasses vanilla "door LockCode == ''" early return for configured skeleton keys (see PreUseUnlocker).
    const uint SkeletonFakeLockpickSkill = 1_000_000u;

    public static bool PreUseUnlocker(Player player, WorldObject unlocker, WorldObject target)
    {
        if (player == null || unlocker == null || target == null)
            return true;

        if (unlocker is not Key key)
            return true;

        EnsureKeyMap();
        if (_keys is null || !_keys.TryGetValue(key.WeenieClassId, out SkeletonKeyCaps caps))
            return true;

        int resist = LockHelper.GetResistLockpick(target) ?? 0;
        int allowedMax = target switch
        {
            Chest => caps.ChestMax,
            Door => caps.DoorMax,
            global::ACE.Server.WorldObjects.Lock => caps.DoorMax,
            _ => -1,
        };
        if (allowedMax <= 0 || resist > allowedMax)
            return true;

        if (target is Door woDoor && woDoor.LockCode == "")
        {
            ModManager.Log("[BetterKeys] Skeleton key bypass: door with empty LockCode, WCID " + key.WeenieClassId + " on " + target.Name + ".", ModManager.LogLevel.Info);
            RunBetterKeysUnlockChain(player, key, target, useLockpickPath: false);
            return false;
        }

        if (RuntimeSettings.UseLockpickPathForSkeletonKeys && target is global::ACE.Server.WorldObjects.Lock && LockHelper.IsPickable(target))
        {
            ModManager.Log("[BetterKeys] Skeleton key lockpick path (UseLockpickPathForSkeletonKeys), WCID " + key.WeenieClassId + " on " + target.Name + ".", ModManager.LogLevel.Info);
            RunBetterKeysUnlockChain(player, key, target, useLockpickPath: true);
            return false;
        }

        return true;
    }

    static void RunBetterKeysUnlockChain(Player player, Key key, WorldObject target, bool useLockpickPath)
    {
        ActionChain chain = new ActionChain();
        chain.AddAction(player, () =>
        {
            if (target is not global::ACE.Server.WorldObjects.Lock lockObj)
            {
                player.Session.Network.EnqueueSend(new GameEventUseDone(player.Session, WeenieError.YouCannotLockOrUnlockThat));
                return;
            }

            UnlockResults result = UnlockResults.IncorrectKey;
            int difficulty = 0;

            if (useLockpickPath)
                result = lockObj.Unlock(player.Guid.Full, SkeletonFakeLockpickSkill, ref difficulty);
            else
                result = lockObj.Unlock(player.Guid.Full, key);

            switch (result)
            {
                case UnlockResults.UnlockSuccess:
                    if (useLockpickPath)
                    {
                        player.EnqueueBroadcast(new GameMessageSound(player.Guid, Sound.Lockpicking, 1.0f));
                        CreatureSkill lockpickSkill = player.GetCreatureSkill(Skill.Lockpick);
                        Proficiency.OnSuccessUse(player, lockpickSkill, difficulty);
                    }

                    UnlockerHelper.ConsumeUnlocker(player, key, target, true);
                    break;

                case UnlockResults.Open:
                    player.Session.Network.EnqueueSend(new GameEventUseDone(player.Session, WeenieError.YouCannotLockWhatIsOpen));
                    break;

                case UnlockResults.AlreadyUnlocked:
                    player.Session.Network.EnqueueSend(new GameEventUseDone(player.Session, WeenieError.LockAlreadyUnlocked));
                    break;

                case UnlockResults.PickLockFailed:
                    target.EnqueueBroadcast(new GameMessageSound(target.Guid, Sound.PicklockFail, 1.0f));
                    UnlockerHelper.ConsumeUnlocker(player, key, target, false);
                    break;

                case UnlockResults.CannotBePicked:
                    player.Session.Network.EnqueueSend(new GameEventUseDone(player.Session, WeenieError.YouCannotLockOrUnlockThat));
                    break;

                case UnlockResults.IncorrectKey:
                    player.Session.Network.EnqueueSend(new GameEventUseDone(player.Session, WeenieError.KeyDoesntFitThisLock));
                    break;
            }
        });
        chain.EnqueueChain();
    }

    static void EnsureKeyMap()
    {
        if (_keys != null)
            return;

        // SIK: doors only <=1000. SSK: chests only <=1000. MFK: doors only <=5000. LEG: chests only <=5000.
        _keys = new Dictionary<uint, SkeletonKeyCaps>
        {
            { 6876, new SkeletonKeyCaps(1000, 0) },
            { 24477, new SkeletonKeyCaps(0, 1000) },
            { 38456, new SkeletonKeyCaps(5000, 0) }, { 38917, new SkeletonKeyCaps(5000, 0) }, { 38918, new SkeletonKeyCaps(5000, 0) },
            { 38919, new SkeletonKeyCaps(5000, 0) }, { 38920, new SkeletonKeyCaps(5000, 0) },
            { 48746, new SkeletonKeyCaps(0, 5000) }, { 48747, new SkeletonKeyCaps(0, 5000) }, { 48748, new SkeletonKeyCaps(0, 5000) },
            { 48749, new SkeletonKeyCaps(0, 5000) }, { 48750, new SkeletonKeyCaps(0, 5000) }, { 48914, new SkeletonKeyCaps(0, 5000) },
            { 51558, new SkeletonKeyCaps(0, 5000) }, { 51586, new SkeletonKeyCaps(0, 5000) }, { 51648, new SkeletonKeyCaps(0, 5000) },
            { 51954, new SkeletonKeyCaps(0, 5000) }, { 51963, new SkeletonKeyCaps(0, 5000) }, { 52010, new SkeletonKeyCaps(0, 5000) },
            { 72048, new SkeletonKeyCaps(0, 5000) }, { 72338, new SkeletonKeyCaps(0, 5000) }, { 72474, new SkeletonKeyCaps(0, 5000) },
            { 72600, new SkeletonKeyCaps(0, 5000) }, { 72628, new SkeletonKeyCaps(0, 5000) }, { 72635, new SkeletonKeyCaps(0, 5000) },
            { 72669, new SkeletonKeyCaps(0, 5000) }, { 72807, new SkeletonKeyCaps(0, 5000) }, { 87168, new SkeletonKeyCaps(0, 5000) },
        };
    }

    public static void RepairSkeletonKeyDurabilityIfApplicable(WorldObject wo)
    {
        if (wo is Key k)
            RepairSkeletonKeyDurability(k);
    }

    static void RepairSkeletonKeyDurability(Key key)
    {
        EnsureKeyMap();
        if (!_keys!.ContainsKey(key.WeenieClassId))
            return;

        ushort? max = key.MaxStructure;
        if (max.HasValue && max.Value > 0)
            key.Structure = max.Value;
    }

    static bool TryBeginSkeletonKeyMutations(WorldObject target, Key key, out SkeletonUnlockState? state)
    {
        state = null;

        EnsureKeyMap();
        if (_keys == null || !_keys.TryGetValue(key.WeenieClassId, out SkeletonKeyCaps caps))
            return false;

        int lockDifficulty = target.GetProperty(PropertyInt.ResistLockpick) ?? 0;
        int capForTarget = target switch
        {
            Chest => caps.ChestMax,
            Door => caps.DoorMax,
            global::ACE.Server.WorldObjects.Lock => caps.DoorMax,
            _ => -1,
        };
        if (capForTarget <= 0 || lockDifficulty > capForTarget)
            return false;

        string? myLockCode = LockHelper.GetLockCode(target);
        SkeletonUnlockState st = new SkeletonUnlockState
        {
            Key = key,
            Target = target,
            PreviousKeyCode = key.GetProperty(PropertyString.KeyCode),
            HadKeyCode = key.GetProperty(PropertyString.KeyCode) != null
        };

        if (myLockCode != null)
        {
            key.SetProperty(PropertyString.KeyCode, myLockCode);
            ModManager.Log("[BetterKeys] Skeleton key WCID " + key.WeenieClassId + " on " + target.Name + ": KeyCode matched to lock (ResistLockpick " + lockDifficulty + " <= " + capForTarget + ").", ModManager.LogLevel.Info);
            state = st;
            return true;
        }

        if (target is not Chest)
            return false;

        st.PreviousLockCode = target.GetProperty(PropertyString.LockCode);
        st.HadLockCode = st.PreviousLockCode != null;
        key.SetProperty(PropertyString.KeyCode, SkeletonLockSentinel);
        target.SetProperty(PropertyString.LockCode, SkeletonLockSentinel);
        ModManager.Log("[BetterKeys] Skeleton key WCID " + key.WeenieClassId + " on " + target.Name + ": sentinel LockCode on chest (no LockCode; ResistLockpick " + lockDifficulty + " <= " + capForTarget + ").", ModManager.LogLevel.Info);
        state = st;
        return true;
    }

    // Chest.CheckUseRequirements: if locked, no skeleton key in pack, but bank has a charge for the matching tier, debit one charge and unlock (same visual/sound as key unlock).
    public static bool PreChestSkeletonBankUnlock(WorldObject activator, ref Chest __instance, ref ActivationResult __result)
    {
        if (__instance == null || activator is not Player player)
            return true;

        if (!RuntimeSettings.EnableUnlockChestUsingSkeletonBank)
            return true;

        if (!__instance.IsLocked)
            return true;

        EnsureKeyMap();
        if (_keys == null || _keys.Count == 0)
            return true;

        if (PlayerHasChestSkeletonKeyInInventory(player))
            return true;

        int? resistNullable = LockHelper.GetResistLockpick(__instance);

        // Resist maps to SSK bank (<=1000) or LEG bank (<=5000); smallest matching tier with balance wins.
        if (resistNullable != null && resistNullable.Value < 9999)
        {
            int resist = resistNullable.Value;
            if (TryPickBankTierForResist(player, resist, out int tierMax, out int bankProp, out long banked))
            {
                ApplyBankedSkeletonUnlock(player, __instance, tierMax, bankProp, banked, resist);
                return true;
            }
        }

        // WCID fallbacks when resist is null/unpickable or no bank line had balance for the resist value.
        if (TryTierChestBankFallback(player, __instance, resistNullable, RuntimeSettings.LegendaryChestWcids, 5000, RuntimeSettings.SkeletonBankPropChestLeg))
            return true;
        if (TryTierChestBankFallback(player, __instance, resistNullable, RuntimeSettings.ManaForgeChestWcids, 5000, RuntimeSettings.SkeletonBankPropChestLeg))
            return true;
        if (TryTierChestBankFallback(player, __instance, resistNullable, RuntimeSettings.SturdySteelChestWcids, 1000, RuntimeSettings.SkeletonBankPropChestSsk))
            return true;
        if (TryTierChestBankFallback(player, __instance, resistNullable, RuntimeSettings.SturdyIronChestWcids, 1000, RuntimeSettings.SkeletonBankPropChestSsk))
            return true;

        return true;
    }

    static void ApplyBankedSkeletonUnlock(Player player, Chest chest, int tierMax, int bankProp, long bankedBefore, int? resistForLog)
    {
        player.SetProperty((PropertyInt64)bankProp, bankedBefore - 1);

        chest.IsLocked = false;
        chest.LastUnlocker = player.Guid.Full;
        chest.UseLockTimestamp = Time.GetUnixTime();
        chest.EnqueueBroadcast(
            new GameMessagePublicUpdatePropertyBool(chest, PropertyBool.Locked, chest.IsLocked),
            new GameMessageSound(chest.Guid, Sound.LockSuccess, 1.0f));

        player.SendMessage($"You unlock the {chest.Name} using banked {SkeletonTierDisplayName(tierMax)} (Diff <={tierMax}). Remaining: {bankedBefore - 1:N0}.");

        string resistPart = resistForLog.HasValue ? $", resist {resistForLog.Value}" : ", resist n/a";
        ModManager.Log($"[BetterKeys] Bank skeleton charge used: player {player.Name}, chest {chest.Name}{resistPart}, tier {tierMax}, prop {bankProp}.", ModManager.LogLevel.Info);

        RegisterSuppressFirstChestOpenAfterSkeletonUnlock(player, chest);
    }

    // When normal TryPickBankTierForResist did not apply: unpickable/null resist, or no bank line covers the resist with balance — still allow this tier for listed WCIDs.
    static bool TryTierChestBankFallback(Player player, Chest chest, int? resistNullable, List<uint>? wcids, int tierMax, int bankProp)
    {
        if (wcids is null || wcids.Count == 0 || !wcids.Contains(chest.WeenieClassId))
            return false;

        long banked = player.GetProperty((PropertyInt64)bankProp) ?? 0;
        if (banked < 1)
            return false;

        bool needFallback =
            resistNullable is null
            || resistNullable.Value >= 9999
            || !TryPickBankTierForResistWouldSucceed(player, resistNullable.Value);

        if (!needFallback)
            return false;

        ApplyBankedSkeletonUnlock(player, chest, tierMax, bankProp, banked, resistNullable);
        return true;
    }

    static bool TryPickBankTierForResistWouldSucceed(Player player, int resist)
    {
        return TryPickBankTierForResist(player, resist, out _, out _, out _);
    }

    static string SkeletonTierDisplayName(int tierMax)
    {
        return tierMax switch
        {
            1000 => "Sturdy Steel Keys (SSK)",
            5000 => "Legendary Keys (LEG)",
            _ => "skeleton keys",
        };
    }

    static bool PlayerHasChestSkeletonKeyInInventory(Player player)
    {
        foreach (WorldObject item in player.AllItems())
        {
            if (_keys!.TryGetValue(item.WeenieClassId, out SkeletonKeyCaps caps) && caps.ChestMax > 0)
                return true;
        }

        return false;
    }

    // Prefer the smallest chest bank tier that covers this resist and has balance (1000 then 5000).
    static bool TryPickBankTierForResist(Player player, int resist, out int tierMax, out int bankProp, out long banked)
    {
        (int Max, int Prop)[] tiers =
        [
            (1000, RuntimeSettings.SkeletonBankPropChestSsk),
            (5000, RuntimeSettings.SkeletonBankPropChestLeg),
        ];

        foreach ((int max, int prop) in tiers)
        {
            if (resist > max)
                continue;

            long n = player.GetProperty((PropertyInt64)prop) ?? 0;
            if (n < 1)
                continue;

            tierMax = max;
            bankProp = prop;
            banked = n;
            return true;
        }

        tierMax = 0;
        bankProp = 0;
        banked = 0;
        return false;
    }

    // Admin /bkkey: credits LeyLineLedger SSK/LEG chest bank lines.
    public static void GrantSkeletonBankChargesPerTier(Player player, long amountPerTier)
    {
        if (amountPerTier <= 0)
            return;

        Settings s = RuntimeSettings;
        void Add(int prop)
        {
            long cur = player.GetProperty((PropertyInt64)prop) ?? 0;
            player.SetProperty((PropertyInt64)prop, cur + amountPerTier);
        }

        Add(s.SkeletonBankPropChestSsk);
        Add(s.SkeletonBankPropChestLeg);
    }
}