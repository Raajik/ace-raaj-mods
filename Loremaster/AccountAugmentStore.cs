namespace Loremaster;

using System.Collections.Concurrent;
using System.Text.Json;

using ACE.Entity.Enum.Properties;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

internal static class AccountAugmentStore
{
    static readonly ConcurrentDictionary<string, object> Locks = new();

    static string ModDataDir
    {
        get
        {
            var dir = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) ?? "";
            return Path.Combine(dir, "Data", "AccountAugments");
        }
    }

    static object Gate(string storageKey) => Locks.GetOrAdd(storageKey, _ => new object());

    internal static string GetOwnerKey(Player player)
    {
        if (player.Account?.AccountId is uint aid && aid != 0)
            return $"a:{aid}";
        return $"g:{player.Guid.Full}";
    }

    static string FilePath(string storageKey) =>
        Path.Combine(ModDataDir, $"{storageKey.Replace(':', '_')}.json");

    // ── Account-wide augment properties ───────────────────────────────

    /// <summary>
    /// Properties that are shared account-wide. Anything not in ExemptAugments and in this range is eligible.
    /// </summary>
    static readonly HashSet<PropertyInt> AccountWideAugments = new()
    {
        // XP augments (non-exempt)
        PropertyInt.AugmentationExtraPackSlot,               // 229
        PropertyInt.AugmentationIncreasedCarryingCapacity,   // 230
        PropertyInt.AugmentationLessDeathItemLoss,           // 231
        PropertyInt.AugmentationSpellsRemainPastDeath,       // 232
        PropertyInt.AugmentationCriticalDefense,             // 233
        PropertyInt.AugmentationBonusXp,                     // 234
        PropertyInt.AugmentationBonusSalvage,                // 235
        PropertyInt.AugmentationBonusImbueChance,            // 236
        PropertyInt.AugmentationFasterRegen,                 // 237
        PropertyInt.AugmentationIncreasedSpellDuration,      // 238
        PropertyInt.AugmentationInfusedCreatureMagic,        // 294
        PropertyInt.AugmentationInfusedItemMagic,            // 295
        PropertyInt.AugmentationInfusedLifeMagic,            // 296
        PropertyInt.AugmentationInfusedWarMagic,             // 297
        PropertyInt.AugmentationCriticalExpertise,           // 298
        PropertyInt.AugmentationCriticalPower,               // 299
        PropertyInt.AugmentationSkilledMelee,                // 300
        PropertyInt.AugmentationSkilledMissile,              // 301
        PropertyInt.AugmentationSkilledMagic,                // 302
        PropertyInt.AugmentationDamageBonus,                 // 309
        PropertyInt.AugmentationDamageReduction,             // 310
        PropertyInt.AugmentationJackOfAllTrades,             // 326
        PropertyInt.AugmentationInfusedVoidMagic,            // 328

        // Luminance augments
        PropertyInt.LumAugDamageRating,                      // 333
        PropertyInt.LumAugDamageReductionRating,             // 334
        PropertyInt.LumAugCritDamageRating,                  // 335
        PropertyInt.LumAugCritReductionRating,               // 336
        PropertyInt.LumAugSurgeChanceRating,                 // 338
        PropertyInt.LumAugItemManaUsage,                     // 339
        PropertyInt.LumAugItemManaGain,                      // 340
        PropertyInt.LumAugHealingRating,                     // 342
        PropertyInt.LumAugSkilledCraft,                      // 343
        PropertyInt.LumAugSkilledSpec,                       // 344
        PropertyInt.LumAugAllSkills,                         // 365
    };

    /// <summary>
    /// Properties that are PER-CHARACTER ONLY (one-time side effects that can't be safely shared).
    /// Attribute augs, resist augs, and skill-specialization augs.
    /// </summary>
    static readonly HashSet<PropertyInt> ExemptAugments = new()
    {
        PropertyInt.AugmentationInnateFamily,               // 217 (shared cap tracker)
        PropertyInt.AugmentationInnateStrength,             // 218
        PropertyInt.AugmentationInnateEndurance,            // 219
        PropertyInt.AugmentationInnateCoordination,         // 220
        PropertyInt.AugmentationInnateQuickness,            // 221
        PropertyInt.AugmentationInnateFocus,                // 222
        PropertyInt.AugmentationInnateSelf,                 // 223
        PropertyInt.AugmentationSpecializeItemTinkering,    // 225
        PropertyInt.AugmentationSpecializeArmorTinkering,   // 226
        PropertyInt.AugmentationSpecializeMagicItemTinkering,// 227
        PropertyInt.AugmentationSpecializeWeaponTinkering,  // 228
        PropertyInt.AugmentationResistanceFamily,           // 239 (shared cap tracker)
        PropertyInt.AugmentationResistanceSlash,            // 240
        PropertyInt.AugmentationResistancePierce,           // 241
        PropertyInt.AugmentationResistanceBlunt,            // 242
        PropertyInt.AugmentationResistanceAcid,             // 243
        PropertyInt.AugmentationResistanceFire,             // 244
        PropertyInt.AugmentationResistanceFrost,            // 245
        PropertyInt.AugmentationResistanceLightning,        // 246
    };

    [ThreadStatic]
    static bool _isSyncing;

    // ── Persistence ───────────────────────────────────────────────────

    sealed class AccountAugmentData
    {
        public Dictionary<string, int> Maxima { get; set; } = new();
    }

    static AccountAugmentData ReadOrCreate(string storageKey)
    {
        Directory.CreateDirectory(ModDataDir);
        var path = FilePath(storageKey);
        if (!File.Exists(path))
            return new AccountAugmentData();

        try
        {
            var json = File.ReadAllText(path);
            var data = JsonSerializer.Deserialize<AccountAugmentData>(json);
            return data ?? new AccountAugmentData();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Loremaster] Account augment read failed ({storageKey}): {ex.Message}", ModManager.LogLevel.Warn);
            return new AccountAugmentData();
        }
    }

    static void Write(string storageKey, AccountAugmentData data)
    {
        Directory.CreateDirectory(ModDataDir);
        var path = FilePath(storageKey);
        var json = JsonSerializer.Serialize(data, new JsonSerializerOptions { WriteIndented = true });
        File.WriteAllText(path, json);
    }

    // ── Public API ────────────────────────────────────────────────────

    internal static bool IsAccountWideAugment(PropertyInt prop) => AccountWideAugments.Contains(prop);
    internal static bool IsExemptAugment(PropertyInt prop) => ExemptAugments.Contains(prop);

    internal static void OnPlayerEnterWorld(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.EnableAccountWideAugments)
            return;

        var key = GetOwnerKey(player);
        lock (Gate(key))
        {
            var data = ReadOrCreate(key);
            MirrorDataToPlayer(player, data);
        }
    }

    /// <summary>
    /// Called from AugmentPatches prefix on Player.SetProperty(PropertyInt, int).
    /// If the property is an account-wide augment and the new value exceeds the account max,
    /// updates the account store and syncs to all online alts.
    /// </summary>
    internal static void OnAugmentPropertySet(Player player, PropertyInt prop, int newValue)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.EnableAccountWideAugments)
            return;

        if (_isSyncing)
            return;

        if (!AccountWideAugments.Contains(prop))
            return;

        var key = GetOwnerKey(player);
        lock (Gate(key))
        {
            var data = ReadOrCreate(key);
            var propName = prop.ToString();

            data.Maxima.TryGetValue(propName, out var currentMax);
            if (newValue <= currentMax)
                return;

            data.Maxima[propName] = newValue;
            Write(key, data);

            // Sync to all online alts on the same account
            if (player.Account?.AccountId is uint accountId && accountId != 0)
            {
                foreach (var online in PlayerManager.GetAllOnline())
                {
                    if (online.Account?.AccountId != accountId)
                        continue;
                    if (online.Guid.Full == player.Guid.Full)
                        continue;

                    // Challenge mode check: only sync if challenge chars are allowed
                    if (!s.ChallengeCharactersShareAccountAugments && IsChallengeActive(online))
                        continue;

                    MirrorDataToPlayer(online, data);
                }
            }
        }
    }

    /// <summary>
    /// Grants racial augments to an account (used by RespectingYourTime achievement).
    /// These are account-wide and sync to all online characters.
    /// </summary>
    internal static void GrantRacialAugments(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.EnableAccountWideAugments)
            return;

        var racialAugments = new Dictionary<PropertyInt, int>
        {
            [PropertyInt.AugmentationJackOfAllTrades] = 1,
            [PropertyInt.AugmentationCriticalExpertise] = 1,
            [PropertyInt.AugmentationDamageReduction] = 1,
            [PropertyInt.AugmentationCriticalDefense] = 1,
            [PropertyInt.AugmentationInfusedLifeMagic] = 1,
            [PropertyInt.AugmentationCriticalPower] = 1,
            [PropertyInt.AugmentationIncreasedCarryingCapacity] = 1,
        };

        var key = GetOwnerKey(player);
        lock (Gate(key))
        {
            var data = ReadOrCreate(key);

            foreach (var (prop, value) in racialAugments)
            {
                var propName = prop.ToString();
                data.Maxima[propName] = Math.Max(data.Maxima.GetValueOrDefault(propName), value);
            }

            Write(key, data);
            MirrorDataToPlayer(player, data);

            // Sync to alts
            if (player.Account?.AccountId is uint accountId && accountId != 0)
            {
                foreach (var online in PlayerManager.GetAllOnline())
                {
                    if (online.Account?.AccountId != accountId)
                        continue;
                    if (online.Guid.Full == player.Guid.Full)
                        continue;

                    MirrorDataToPlayer(online, data);
                }
            }
        }
    }

    // ── Mirroring ─────────────────────────────────────────────────────

    static void MirrorDataToPlayer(Player player, AccountAugmentData data)
    {
        bool needsRelog = false;

        _isSyncing = true;
        try
        {
            foreach (var (propName, maxValue) in data.Maxima)
            {
                if (!Enum.TryParse<PropertyInt>(propName, out var prop))
                    continue;

                if (!AccountWideAugments.Contains(prop))
                    continue;

                var current = player.GetProperty(prop) ?? 0;
                if (current >= maxValue)
                    continue;

                player.SetProperty(prop, maxValue);

                // Detect side effects that require relog
                if (prop == PropertyInt.AugmentationExtraPackSlot || prop == PropertyInt.AugmentationIncreasedCarryingCapacity)
                    needsRelog = true;
            }
        }
        finally
        {
            _isSyncing = false;
        }

        if (needsRelog)
        {
            player.SendMessage("[Account Augments] You have gained account-wide augments that require a relog to take full effect (Pack Slot / Burden Limit).");
        }
    }

    static bool IsChallengeActive(Player player)
    {
        // Check ChallengeModes integration via reflection (same pattern as LeyLineLedger)
        try
        {
            var cmAsm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.FullName?.StartsWith("ChallengeModes") == true);
            if (cmAsm == null)
                return false;

            var bridgeType = cmAsm.GetType("ChallengeModes.ChallengeModesActiveBridge");
            if (bridgeType == null)
                return false;

            var method = bridgeType.GetMethod("PlayerHasActiveChallenge", System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Static);
            if (method == null)
                return false;

            return (bool)method.Invoke(null, new object[] { player })!;
        }
        catch
        {
            return false;
        }
    }
}
