namespace LeyLineLedger;

using System.Collections.Concurrent;

using ACE.Database.Models.Shard;
using ACE.Entity.Enum.Properties;
using ACE.Server.Managers;
using ACE.Server.WorldObjects;

internal static class AccountBankStore
{
    static readonly ConcurrentDictionary<string, object> Locks = new();

    static string ModDataDir
    {
        get
        {
            return LeyLineLedgerDataPaths.InModData("AccountBanks");
        }
    }

    static string LegacyModDataDir => LeyLineLedgerDataPaths.InLegacyModRoot("Data", "AccountBanks");

    static object Gate(string storageKey) => Locks.GetOrAdd(storageKey, _ => new object());

    internal static string GetOwnerKey(Player player)
    {
        if (player.Account?.AccountId is uint aid && aid != 0)
            return $"a:{aid}";

        return $"g:{player.Guid.Full}";
    }

    static string GetOwnerKeyForOfflineTransfer(Character c)
    {
        if (c.AccountId != 0)
            return $"a:{c.AccountId}";

        return $"g:{c.Id}";
    }

    static string FilePath(string storageKey) =>
        Path.Combine(ModDataDir, $"{storageKey.Replace(':', '_')}.json");

    static string LegacyFilePath(string storageKey) =>
        Path.Combine(LegacyModDataDir, $"{storageKey.Replace(':', '_')}.json");

    internal static IEnumerable<int> EnumerateBankProps(Settings s)
    {
        yield return s.CashProperty;
        yield return s.LuminanceProperty;

        if (s.Items is not null)
        {
            foreach (var it in s.Items)
            {
                if (it is null)
                    continue;
                yield return it.Prop;
            }
        }

        if (s.SalvageBank.LegacyPooledSalvagePropertyToClear > 0)
            yield return s.SalvageBank.LegacyPooledSalvagePropertyToClear;

        if (s.SalvageBank.DepositRules is { Count: > 0 })
        {
            for (int i = 0; i < s.SalvageBank.DepositRules.Count; i++)
            {
                var r = s.SalvageBank.DepositRules[i];
                if (r is null)
                    continue;
                yield return r.BankProperty != 0
                    ? r.BankProperty
                    : s.SalvageBank.FirstMaterialBankPropertyId + i;
            }
        }
    }

    internal static void OnPlayerEnterWorld(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.AccountWideBank)
            return;

        if (AccountBank.IsChallengeLocal(player))
            return;

        var key = GetOwnerKey(player);
        lock (Gate(key))
        {
            var data = ReadOrCreate(key);
            MaybeSeedFromCharacter(player, s, data);
            Write(key, data);
            MirrorDataToPlayerAndAccountAlts(player, s, data);
        }
    }

    static void MaybeSeedFromCharacter(Player player, Settings s, AccountBankData data)
    {
        if (data.Balances.Count > 0)
            return;

        bool any = false;
        foreach (var prop in EnumerateBankProps(s))
        {
            long v = RawGet(player, prop);
            if (v == 0)
                continue;
            data.Balances[prop.ToString()] = v;
            any = true;
        }

        if (any)
            ModManager.Log($"[LeyLineLedger] Seeded account bank file for {GetOwnerKey(player)} from character props (first-time migration).", ModManager.LogLevel.Info);
    }

    internal static long GetBalance(Player player, int prop)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.AccountWideBank)
            return RawGet(player, prop);

        if (AccountBank.IsChallengeLocal(player))
            return RawGet(player, prop);

        var key = GetOwnerKey(player);
        lock (Gate(key))
        {
            var data = ReadOrCreate(key);
            return data.Balances.GetValueOrDefault(prop.ToString(), 0);
        }
    }

    internal static void Add(Player player, int prop, long delta)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.AccountWideBank)
        {
            RawAdd(player, prop, delta);
            return;
        }

        if (AccountBank.IsChallengeLocal(player))
        {
            RawAdd(player, prop, delta);
            return;
        }

        var key = GetOwnerKey(player);
        lock (Gate(key))
        {
            var data = ReadOrCreate(key);
            var sk = prop.ToString();
            data.Balances[sk] = data.Balances.GetValueOrDefault(sk) + delta;
            Write(key, data);
            MirrorDataToPlayerAndAccountAlts(player, s, data);
        }
    }

    internal static void MergeChallengeCharacterPropsIntoAccount(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.AccountWideBank)
            return;

        var key = GetOwnerKey(player);
        lock (Gate(key))
        {
            var data = ReadOrCreate(key);
            foreach (var prop in EnumerateBankProps(s))
            {
                long v = RawGet(player, prop);
                if (v == 0)
                    continue;
                var sk = prop.ToString();
                data.Balances[sk] = data.Balances.GetValueOrDefault(sk) + v;
                player.SetProperty((PropertyInt64)prop, 0);
            }

            Write(key, data);
        }
    }

    internal static void MirrorAccountToPlayerIfStandard(Player player)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.AccountWideBank)
            return;

        if (AccountBank.IsChallengeLocal(player))
            return;

        var key = GetOwnerKey(player);
        lock (Gate(key))
        {
            var data = ReadOrCreate(key);
            MirrorDataToPlayerAndAccountAlts(player, s, data);
        }
    }

    internal static void AddToAccountByOfflineCharacter(Character targetChar, int prop, long amount)
    {
        var s = PatchClass.Settings;
        if (s is null || !s.AccountWideBank)
            return;

        var key = GetOwnerKeyForOfflineTransfer(targetChar);
        lock (Gate(key))
        {
            var data = ReadOrCreate(key);
            var sk = prop.ToString();
            data.Balances[sk] = data.Balances.GetValueOrDefault(sk) + amount;
            Write(key, data);
        }

        PushMirrorToOnlinePlayersForKey(key, s);
    }

    static void PushMirrorToOnlinePlayersForKey(string storageKey, Settings s)
    {
        foreach (var p in PlayerManager.GetAllOnline())
        {
            if (AccountBank.IsChallengeLocal(p))
                continue;
            if (GetOwnerKey(p) != storageKey)
                continue;

            lock (Gate(storageKey))
            {
                var data = ReadOrCreate(storageKey);
                MirrorDataToPlayerAndAccountAlts(p, s, data);
            }
        }
    }

    static void MirrorDataToPlayerAndAccountAlts(Player player, Settings s, AccountBankData data)
    {
        void mirror(Player p)
        {
            foreach (var prop in EnumerateBankProps(s))
            {
                var sk = prop.ToString();
                if (data.Balances.TryGetValue(sk, out var v))
                    p.SetProperty((PropertyInt64)prop, v);
                else
                    p.SetProperty((PropertyInt64)prop, 0);
            }

            p.UpdateCoinValue();
        }

        mirror(player);

        if (player.Account?.AccountId is not uint accountId || accountId == 0)
            return;

        foreach (var p in PlayerManager.GetAllOnline())
        {
            if (p.Guid == player.Guid)
                continue;
            if (p.Account?.AccountId != accountId)
                continue;
            if (AccountBank.IsChallengeLocal(p))
                continue;
            mirror(p);
        }
    }

    static long RawGet(Player player, int prop) =>
        player.GetProperty((PropertyInt64)prop) ?? 0;

    static void RawAdd(Player player, int prop, long delta) =>
        player.SetProperty((PropertyInt64)prop, RawGet(player, prop) + delta);

    static AccountBankData ReadOrCreate(string storageKey)
    {
        Directory.CreateDirectory(ModDataDir);
        var path = ResolveReadPath(storageKey);
        if (!File.Exists(path))
            return new AccountBankData();

        try
        {
            var json = File.ReadAllText(path);
            var data = JsonSerializer.Deserialize<AccountBankData>(json);
            return data ?? new AccountBankData();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Account bank read failed ({storageKey}): {ex.Message}", ModManager.LogLevel.Warn);
            return new AccountBankData();
        }
    }

    static void Write(string storageKey, AccountBankData data)
    {
        Directory.CreateDirectory(ModDataDir);
        var path = FilePath(storageKey);
        var json = JsonSerializer.Serialize(data, new JsonSerializerOptions { WriteIndented = true });
        File.WriteAllText(path, json);
        TryDeleteLegacyFile(storageKey);
    }

    static string ResolveReadPath(string storageKey)
    {
        var currentPath = FilePath(storageKey);
        if (File.Exists(currentPath))
            return currentPath;

        var legacyPath = LegacyFilePath(storageKey);
        if (File.Exists(legacyPath))
            return legacyPath;

        return currentPath;
    }

    static void TryDeleteLegacyFile(string storageKey)
    {
        var legacyPath = LegacyFilePath(storageKey);
        if (!File.Exists(legacyPath))
            return;

        try
        {
            File.Delete(legacyPath);
        }
        catch
        {
        }
    }

    static string Normalize(string name) => name.Trim().ToLowerInvariant();

    sealed class AccountBankData
    {
        public Dictionary<string, long> Balances { get; set; } = new();
    }
}
