namespace ChallengeModes;

using System.Collections.Concurrent;
using System.Reflection;
using System.Text.Json;
using ACE.Database.Models.Shard;
using ChallengeModes.Features;
using ChallengeModes.Progression;
using Microsoft.EntityFrameworkCore;

[HarmonyPatch]
public class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    static readonly ConcurrentDictionary<uint, bool> EnabledByGuid = new();
    static readonly ConcurrentDictionary<uint, bool> PermanentlyOptedOutByGuid = new();
    static readonly ConcurrentDictionary<uint, bool> AlternateLevelingEnabledByGuid = new();
    static readonly ConcurrentDictionary<uint, bool> SsfDeclinedByGuid = new();
    static readonly ConcurrentDictionary<uint, bool> HardcoreDeclinedByGuid = new();
    static readonly ConcurrentDictionary<uint, bool> AlternateLevelingDeclinedByGuid = new();
    static readonly ConcurrentDictionary<uint, bool> ChaosEnabledByGuid = new();
    static readonly ConcurrentDictionary<uint, bool> ChaosDeclinedByGuid = new();
    // Last UTC write-time ticks applied from prefs JSON per character; re-read when file changes or after load failure.
    static readonly ConcurrentDictionary<uint, long> PrefsLoadedFromFileTicks = new();
    static readonly JsonSerializerOptions JsonOptions = new() { WriteIndented = true };
    internal static readonly ConcurrentDictionary<uint, float> ArcaneLoreManaRemainderByGuid = new();
    internal static readonly ConcurrentDictionary<uint, float> ManaConversionManaRemainderByGuid = new();
    internal static readonly ConcurrentDictionary<uint, ConcurrentDictionary<uint, int>> LastEquippedItemManaByPlayerGuid = new();
    internal static readonly ConcurrentDictionary<uint, bool> EquippedItemManaMonitorRunningByGuid = new();
    internal static MethodInfo? ProficiencyOnSuccessUseMethod;

    static bool _proficiencyMethodMissingLogged;

    static bool _aptitudeCategoryPatched;
    static bool _alternateLevelingCategoryPatched;
    static bool _ssfHardcoreCategoryPatched;
    static bool _challengePassupAbsorbCategoryPatched;

    [ThreadStatic]
    internal static int _proficiencyAwardDepth;

    public static bool IsInProficiencyAward => _proficiencyAwardDepth > 0;

    public override void Start()
    {
        base.Start();
        LeyLineLedgerBridge.RegisterChallengeModeResolver(PlayerHasActiveChallenge);
        ApplyChallengeModesHarmony();
    }

    public override async Task OnWorldOpen()
    {
        var deadline = DateTime.UtcNow.AddMinutes(10);
        while (WorldManager.WorldStatus != WorldManager.WorldStatusState.Open)
        {
            if (DateTime.UtcNow > deadline)
            {
                ModManager.Log("[ChallengeModes] OnWorldOpen: world did not reach Open within 10 minutes; continuing anyway.", ModManager.LogLevel.Warn);
                break;
            }

            await Task.Delay(1000);
        }

        Settings = SettingsContainer.Settings ?? new Settings();

        LeyLineLedgerBridge.RegisterChallengeModeResolver(PlayerHasActiveChallenge);
        ApplyChallengeModesHarmony();
    }

    public override void Stop()
    {
        TryUnpatchHarmonyCategories();

        EnabledByGuid.Clear();
        PermanentlyOptedOutByGuid.Clear();
        AlternateLevelingEnabledByGuid.Clear();
        SsfDeclinedByGuid.Clear();
        HardcoreDeclinedByGuid.Clear();
        AlternateLevelingDeclinedByGuid.Clear();
        ChaosEnabledByGuid.Clear();
        ChaosDeclinedByGuid.Clear();
        PrefsLoadedFromFileTicks.Clear();
        ArcaneLoreManaRemainderByGuid.Clear();
        ManaConversionManaRemainderByGuid.Clear();
        LastEquippedItemManaByPlayerGuid.Clear();
        EquippedItemManaMonitorRunningByGuid.Clear();

        SsfMode.ClearPoiCache();
        _proficiencyMethodMissingLogged = false;

        base.Stop();
    }

    void TryUnpatchHarmonyCategories()
    {
        if (_alternateLevelingCategoryPatched)
        {
            try
            {
                ModC.Harmony.UnpatchCategory(nameof(AlternateLeveling));
            }
            catch (Exception ex)
            {
                ModManager.Log($"[ChallengeModes] Unpatch AlternateLeveling: {ex.Message}", ModManager.LogLevel.Warn);
            }
            finally
            {
                _alternateLevelingCategoryPatched = false;
            }
        }

        if (_ssfHardcoreCategoryPatched)
        {
            try
            {
                ModC.Harmony.UnpatchCategory(nameof(SsfMode));
                ModC.Harmony.UnpatchCategory(nameof(HardcoreMode));
            }
            catch (Exception ex)
            {
                ModManager.Log($"[ChallengeModes] Unpatch SSF/Hardcore: {ex.Message}", ModManager.LogLevel.Warn);
            }
            finally
            {
                _ssfHardcoreCategoryPatched = false;
            }
        }

        if (_challengePassupAbsorbCategoryPatched)
        {
            try
            {
                ModC.Harmony.UnpatchCategory(nameof(ChallengePassupAbsorb));
            }
            catch (Exception ex)
            {
                ModManager.Log($"[ChallengeModes] Unpatch ChallengePassupAbsorb: {ex.Message}", ModManager.LogLevel.Warn);
            }
            finally
            {
                _challengePassupAbsorbCategoryPatched = false;
            }
        }

        if (!_aptitudeCategoryPatched)
            return;

        try
        {
            ModC.Harmony.UnpatchCategory("ChallengeModes");
        }
        catch (Exception ex)
        {
            ModManager.Log($"[ChallengeModes] Unpatch ChallengeModes: {ex.Message}", ModManager.LogLevel.Warn);
        }
        finally
        {
            _aptitudeCategoryPatched = false;
        }
    }

    void ApplyChallengeModesHarmony()
    {
        Settings = SettingsContainer.Settings ?? new Settings();

        if (!Settings.Enabled)
        {
            TryUnpatchHarmonyCategories();
            return;
        }

        if (!_aptitudeCategoryPatched)
        {
            ModC.Harmony.PatchCategory("ChallengeModes");
            _aptitudeCategoryPatched = true;
        }

        var wantAlternateHooks = Settings.AlternateLeveling.Enabled || Settings.BonusStatsEnabled;
        if (wantAlternateHooks && !_alternateLevelingCategoryPatched)
        {
            ModC.Harmony.PatchCategory(nameof(AlternateLeveling));
            _alternateLevelingCategoryPatched = true;
        }
        else if (!wantAlternateHooks && _alternateLevelingCategoryPatched)
        {
            try
            {
                ModC.Harmony.UnpatchCategory(nameof(AlternateLeveling));
            }
            catch (Exception ex)
            {
                ModManager.Log($"[ChallengeModes] Unpatch AlternateLeveling (toggle off): {ex.Message}", ModManager.LogLevel.Warn);
            }

            _alternateLevelingCategoryPatched = false;
        }

        // SSF/hardcore patches load with the mod; per-player rules are gated by /cm (Ironman/Hardcore flags).
        if (!_ssfHardcoreCategoryPatched)
        {
            ModC.Harmony.PatchCategory(nameof(SsfMode));
            ModC.Harmony.PatchCategory(nameof(HardcoreMode));
            _ssfHardcoreCategoryPatched = true;
        }

        if (!_challengePassupAbsorbCategoryPatched)
        {
            ModC.Harmony.PatchCategory(nameof(ChallengePassupAbsorb));
            _challengePassupAbsorbCategoryPatched = true;
        }
    }

    static string GetPlayerDataPath(Player player)
    {
        var modDir = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location) ?? "";
        var dir = Path.Combine(modDir, "Data", "PlayerData");
        Directory.CreateDirectory(dir);
        return Path.Combine(dir, $"{player.Guid.Full}.json");
    }

    static void EnsureLoaded(Player player)
    {
        if (player?.Guid == null)
            return;

        var g = player.Guid.Full;
        var path = GetPlayerDataPath(player);

        if (!File.Exists(path))
        {
            PrefsLoadedFromFileTicks.TryRemove(g, out _);
            return;
        }

        long writeTicks;
        try
        {
            writeTicks = File.GetLastWriteTimeUtc(path).Ticks;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[ChallengeModes] Player prefs stat failed for {player.Name}: {ex.Message}", ModManager.LogLevel.Warn);
            return;
        }

        if (PrefsLoadedFromFileTicks.TryGetValue(g, out var applied) && applied == writeTicks)
            return;

        try
        {
            var json = File.ReadAllText(path);
            var prefs = JsonSerializer.Deserialize<ChallengeModesPlayerPrefs>(json);
            if (prefs == null)
            {
                ModManager.Log($"[ChallengeModes] Player prefs deserialize returned null for {player.Name}.", ModManager.LogLevel.Warn);
                PrefsLoadedFromFileTicks.TryRemove(g, out _);
                return;
            }

            EnabledByGuid[g] = prefs.Enabled;
            PermanentlyOptedOutByGuid[g] = prefs.PermanentlyOptedOut;
            AlternateLevelingEnabledByGuid[g] = prefs.AlternateLevelingEnabled;
            SsfDeclinedByGuid[g] = prefs.SsfPermanentlyDeclined;
            HardcoreDeclinedByGuid[g] = prefs.HardcorePermanentlyDeclined;
            AlternateLevelingDeclinedByGuid[g] = prefs.AlternateLevelingPermanentlyDeclined;
            ChaosEnabledByGuid[g] = prefs.ChaosEnabled;
            ChaosDeclinedByGuid[g] = prefs.ChaosPermanentlyDeclined;
            PrefsLoadedFromFileTicks[g] = writeTicks;
        }
        catch (Exception ex)
        {
            ModManager.Log($"[ChallengeModes] Player prefs load failed for {player.Name}: {ex.Message}", ModManager.LogLevel.Warn);
            PrefsLoadedFromFileTicks.TryRemove(g, out _);
        }
    }

    public static void EnsurePrefsLoaded(Player player) => EnsureLoaded(player);

    static void SavePrefs(Player player)
    {
        if (player?.Guid == null)
            return;

        try
        {
            var g = player.Guid.Full;
            var prefs = new ChallengeModesPlayerPrefs
            {
                Enabled = EnabledByGuid.GetOrAdd(g, false),
                PermanentlyOptedOut = PermanentlyOptedOutByGuid.GetOrAdd(g, false),
                AlternateLevelingEnabled = AlternateLevelingEnabledByGuid.GetOrAdd(g, false),
                SsfPermanentlyDeclined = SsfDeclinedByGuid.GetOrAdd(g, false),
                HardcorePermanentlyDeclined = HardcoreDeclinedByGuid.GetOrAdd(g, false),
                AlternateLevelingPermanentlyDeclined = AlternateLevelingDeclinedByGuid.GetOrAdd(g, false),
                ChaosEnabled = ChaosEnabledByGuid.GetOrAdd(g, false),
                ChaosPermanentlyDeclined = ChaosDeclinedByGuid.GetOrAdd(g, false),
            };
            var path = GetPlayerDataPath(player);
            File.WriteAllText(path, JsonSerializer.Serialize(prefs, JsonOptions));
            try
            {
                PrefsLoadedFromFileTicks[g] = File.GetLastWriteTimeUtc(path).Ticks;
            }
            catch
            {
                PrefsLoadedFromFileTicks.TryRemove(g, out _);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[ChallengeModes] Player prefs save failed for {player.Name}: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    public static bool IsAlternateLevelingEnabled(Player? player)
    {
        if (player?.Guid == null || Settings == null || !Settings.Enabled)
            return false;

        if (!Settings.AlternateLeveling.Enabled)
            return false;

        EnsureLoaded(player);
        var g = player.Guid.Full;
        if (AlternateLevelingDeclinedByGuid.GetOrAdd(g, false))
            return false;

        if (EnabledByGuid.GetOrAdd(g, false))
            return false;

        return AlternateLevelingEnabledByGuid.GetOrAdd(g, false);
    }

    public static bool GetAlternateLevelingEnabledRaw(Player player)
    {
        if (player?.Guid == null)
            return false;

        EnsureLoaded(player);
        return AlternateLevelingEnabledByGuid.GetOrAdd(player.Guid.Full, false);
    }

    public static bool IsSsfDeclined(Player player)
    {
        EnsureLoaded(player);
        return SsfDeclinedByGuid.GetOrAdd(player.Guid.Full, false);
    }

    public static bool IsHardcoreDeclined(Player player)
    {
        EnsureLoaded(player);
        return HardcoreDeclinedByGuid.GetOrAdd(player.Guid.Full, false);
    }

    public static bool IsAlternateLevelingDeclined(Player player)
    {
        EnsureLoaded(player);
        return AlternateLevelingDeclinedByGuid.GetOrAdd(player.Guid.Full, false);
    }

    public static bool IsChaosEnabled(Player? player)
    {
        if (player?.Guid == null) return false;
        EnsureLoaded(player);
        return ChaosEnabledByGuid.GetOrAdd(player.Guid.Full, false);
    }

    public static bool IsChaosDeclined(Player player)
    {
        EnsureLoaded(player);
        return ChaosDeclinedByGuid.GetOrAdd(player.Guid.Full, false);
    }

    public static void SetChaosEnabled(Player player, bool value)
    {
        EnsureLoaded(player);
        ChaosEnabledByGuid[player.Guid.Full] = value;
        SavePrefs(player);
    }

    public static void SetChaosDeclined(Player player, bool value)
    {
        EnsureLoaded(player);
        ChaosDeclinedByGuid[player.Guid.Full] = value;
        SavePrefs(player);
    }

    public static void OnChallengeStarted(Player player)
    {
        // Isolate quest points for this challenge run
        player.SetProperty((FakeFloat)11017, 0f);
        // Reset displayed QP so the character starts fresh (only achievement/extra QP retained)
        var extra = (float)(player.GetProperty((FakeFloat)11011) ?? 0f);
        player.SetProperty(FakeFloat.QuestBonus, extra);
    }

    public static void SetAlternateLevelingEnabled(Player player, bool value)
    {
        EnsureLoaded(player);
        AlternateLevelingEnabledByGuid[player.Guid.Full] = value;
        SavePrefs(player);
    }

    public static void SetAlternateLevelingDeclined(Player player, bool value)
    {
        EnsureLoaded(player);
        AlternateLevelingDeclinedByGuid[player.Guid.Full] = value;
        SavePrefs(player);
    }

    public static void SetSsfDeclined(Player player, bool value)
    {
        EnsureLoaded(player);
        SsfDeclinedByGuid[player.Guid.Full] = value;
        SavePrefs(player);
    }

    public static void SetHardcoreDeclined(Player player, bool value)
    {
        EnsureLoaded(player);
        HardcoreDeclinedByGuid[player.Guid.Full] = value;
        SavePrefs(player);
    }

    public static bool HasAlternateLevelsSpent(Player player)
    {
        foreach (PropertyAttribute a in Enum.GetValues<PropertyAttribute>())
        {
            if (player.GetLevel(a) > 0 || player.GetCost(a) > 0)
                return true;
        }

        foreach (PropertyAttribute2nd v in Enum.GetValues<PropertyAttribute2nd>())
        {
            if (!v.ToString().StartsWith("Max"))
                continue;

            if (player.GetLevel(v) > 0 || player.GetCost(v) > 0)
                return true;
        }

        foreach (Skill s in Enum.GetValues<Skill>())
        {
            if (player.GetLevel(s) > 0 || player.GetCost(s) > 0)
                return true;
        }

        return false;
    }

    public static int CountActiveChallengeTracks(Player player)
    {
        if (player?.Guid == null)
            return 0;

        EnsureLoaded(player);
        int n = 0;
        if (player.GetProperty(FakeBool.Ironman) == true)
            n++;
        if (player.GetProperty(FakeBool.Hardcore) == true)
            n++;

        // Aptitude and alternate leveling are mutually exclusive; count at most one progression slot.
        if (IsAptitudeEnabled(player) || IsAlternateLevelingEnabled(player))
            n++;

        if (IsChaosEnabled(player))
            n++;
        return n;
    }

    public static bool PlayerHasActiveChallenge(Player? player)
    {
        return player != null && CountActiveChallengeTracks(player) > 0;
    }

    // Used by LeyLineLedger bank transfer gate (offline targets): SSF/HC from shard biota bools; aptitude / alternate leveling from ChallengeModes prefs JSON.
    public static bool OfflineBiotaHasActiveChallenge(uint biotaId)
    {
        try
        {
            using var context = new ShardDbContext();
            ushort ironT = (ushort)FakeBool.Ironman;
            ushort hcT = (ushort)FakeBool.Hardcore;

            if (context.BiotaPropertiesBool.AsNoTracking().Any(p => p.ObjectId == biotaId && p.Type == ironT && p.Value == true))
                return true;
            if (context.BiotaPropertiesBool.AsNoTracking().Any(p => p.ObjectId == biotaId && p.Type == hcT && p.Value == true))
                return true;

            // Player prefs use the same id as shard Biota.Id / player.Guid.Full (ACE instance id).
            var modDir = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) ?? "";
            var path = Path.Combine(modDir, "Data", "PlayerData", $"{biotaId}.json");
            if (!File.Exists(path))
                return false;

            var json = File.ReadAllText(path);
            var prefs = JsonSerializer.Deserialize<ChallengeModesPlayerPrefs>(json);
            if (prefs is null)
                return false;

            return OfflinePrefsIndicateActiveChallenge(prefs);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[ChallengeModes] OfflineBiotaHasActiveChallenge failed: {ex.Message}", ModManager.LogLevel.Warn);
            return false;
        }
    }

    static bool OfflinePrefsIndicateActiveChallenge(ChallengeModesPlayerPrefs prefs)
    {
        if (prefs.Enabled)
            return true;

        if (Settings is null || !Settings.Enabled)
            return false;

        if (Settings.AlternateLeveling.Enabled && !prefs.AlternateLevelingPermanentlyDeclined && prefs.AlternateLevelingEnabled)
            return true;

        if (prefs.ChaosEnabled)
            return true;

        return false;
    }

    public static bool OfflineCharacterNameHasActiveChallenge(string characterName)
    {
        if (string.IsNullOrWhiteSpace(characterName))
            return false;

        try
        {
            using var context = new ShardDbContext();
            var key = characterName.Trim().ToLowerInvariant();
            var targetChar = context.Character.AsNoTracking().FirstOrDefault(c => !c.IsDeleted && c.Name.ToLower() == key);
            if (targetChar is null)
                return false;

            return OfflineBiotaHasActiveChallenge(targetChar.Id);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[ChallengeModes] OfflineCharacterNameHasActiveChallenge failed: {ex.Message}", ModManager.LogLevel.Warn);
            return false;
        }
    }

    // Clears all /cm tracks and prefs after /cm quit (penalties applied separately in CmQuit).
    public static void DisableAllChallengeModesForQuit(Player player)
    {
        if (player?.Guid == null || Settings is null)
            return;

        EnsureLoaded(player);
        var g = player.Guid.Full;

        var hadSsf = player.GetProperty(FakeBool.Ironman) == true;
        var hadHc = player.GetProperty(FakeBool.Hardcore) == true;
        player.SetProperty(FakeBool.Ironman, false);
        player.SetProperty(FakeBool.Hardcore, false);
        // Allow re-enabling after leave (player is reset to level 1 anyway).
        SsfDeclinedByGuid[g] = false;
        HardcoreDeclinedByGuid[g] = false;

        var hadAlt = AlternateLevelingEnabledByGuid.GetOrAdd(g, false) || GetAlternateLevelingEnabledRaw(player);
        if (hadAlt)
        {
            AlternateLevelingEnabledByGuid[g] = false;
            AlternateLevelingDeclinedByGuid[g] = true;
        }

        if (EnabledByGuid.GetOrAdd(g, false))
        {
            EnabledByGuid[g] = false;
            PermanentlyOptedOutByGuid[g] = true;
        }

        var hadChaos = ChaosEnabledByGuid.GetOrAdd(g, false);
        if (hadChaos)
        {
            ChaosEnabledByGuid[g] = false;
            ChaosDeclinedByGuid[g] = true;
            player.SetProperty(CmFloat.ChaosQuestBonusMultiplier, 1f);
        }

        SavePrefs(player);
    }

    // Cross-mod: other mods (e.g. AutoLoot) can call this to gate Aptitude-only features.
    public static bool IsAptitudeEnabled(Player? player)
    {
        if (player?.Guid == null) return false;
        EnsureLoaded(player);
        return EnabledByGuid.GetOrAdd(player.Guid.Full, false);
    }

    internal static uint ConsumeManaToPpRemainder(ConcurrentDictionary<uint, float> remainderByGuid, uint guid, uint manaUsed, float xpPerMana)
    {
        if (manaUsed == 0)
            return 0;

        if (xpPerMana <= 0.0f)
            return 0;

        float remainder = remainderByGuid.GetOrAdd(guid, 0.0f);
        remainder += manaUsed * xpPerMana;

        if (remainder < 1.0f)
        {
            remainderByGuid[guid] = remainder;
            return 0;
        }

        uint pp = (uint)MathF.Floor(remainder);
        remainderByGuid[guid] = remainder - pp;
        return pp;
    }

    public static void CmHandleAptitude(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        EnsureLoaded(player);
        var guid = player.Guid.Full;
        var enabled = EnabledByGuid.GetOrAdd(guid, false);
        var permanentlyOptedOut = PermanentlyOptedOutByGuid.GetOrAdd(guid, false);

        if (parameters.Length == 0)
        {
            if (permanentlyOptedOut)
                player.SendMessage("Aptitude is permanently disabled on this character (you previously used /cm off aptitude).");
            else if (enabled)
                player.SendMessage("Aptitude is ON. Skills via usage; spend XP on attributes/vitals. Use /cm off aptitude to disable (permanent).");
            else
                player.SendMessage("Aptitude is OFF. Use /cm aptitude on at level 1 to enable (once off, you cannot turn it back on).");
            return;
        }

        var arg = parameters[0].Trim().ToLowerInvariant();

        if (arg == "off")
        {
            if (!enabled)
            {
                player.SendMessage("Aptitude is already off.");
                return;
            }
            EnabledByGuid[guid] = false;
            PermanentlyOptedOutByGuid[guid] = true;
            SavePrefs(player);
            player.SendMessage("Aptitude has been disabled. You cannot reactivate it on this character.");
            return;
        }

        if (arg == "on")
        {
            if (permanentlyOptedOut)
            {
                player.SendMessage("You have previously disabled Aptitude on this character and cannot reactivate it.");
                return;
            }
            if (player.Level != 1)
            {
                player.SendMessage("Aptitude can only be activated at character level 1.");
                return;
            }
            if (AlternateLevelingEnabledByGuid.GetOrAdd(guid, false))
            {
                player.SendMessage("Aptitude cannot be combined with alternate leveling. Use /cm off alternateleveling first (requires /cm refund if you spent alternate levels; that opt-out is permanent).");
                return;
            }
            EnabledByGuid[guid] = true;
            SavePrefs(player);
            OnChallengeStarted(player);
            player.SendMessage("Aptitude is now ON. Skills only through usage; use XP on attributes and vitals.");
            return;
        }

        player.SendMessage("Usage: /cm aptitude [on | off]");
    }

    public static void CmHandleAptitudeMana(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        uint playerGuid = player.Guid.Full;
        var lastByItemGuid = LastEquippedItemManaByPlayerGuid.GetOrAdd(playerGuid, _ => new ConcurrentDictionary<uint, int>());

        var lines = new List<string>();
        uint drainedNow = 0;

        foreach (WorldObject item in player.EquippedObjects.Values)
        {
            if (item?.Guid == null)
                continue;

            if (!item.ItemCurMana.HasValue)
                continue;

            int cur = (int)item.ItemCurMana.Value;
            uint itemGuid = item.Guid.Full;
            int prev = lastByItemGuid.GetOrAdd(itemGuid, cur);
            int delta = prev - cur;
            if (delta > 0)
                drainedNow += (uint)delta;

            lines.Add($"{item.Name}: mana {cur} (prev {prev}, drained {Math.Max(delta, 0)})");
            lastByItemGuid[itemGuid] = cur;
        }

        player.SendMessage($"[Aptitude] Equipped mana items: {lines.Count}. Drained since last /cm debug mana: {drainedNow}.");
        foreach (string line in lines.Take(10))
            player.SendMessage($"[Aptitude] {line}");

        if (lines.Count > 10)
            player.SendMessage($"[Aptitude] (+{lines.Count - 10} more)");
    }

    public static void CmHandleAptitudeSkillDebug(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        Skill skill = Skill.ArcaneLore;
        if (parameters.Length > 0 && Enum.TryParse(parameters[0], true, out Skill parsed))
            skill = parsed;

        var creatureSkill = player.GetCreatureSkill(skill, false);
        if (creatureSkill == null)
        {
            player.SendMessage($"[Aptitude] No CreatureSkill found for {skill}.");
            return;
        }

        player.SendMessage($"[Aptitude] SkillDebug {skill}:");
        DumpNumericProps(player, "CreatureSkill", creatureSkill);

        var props = AccessTools.Property(creatureSkill.GetType(), "PropertiesSkill")?.GetValue(creatureSkill)
                 ?? AccessTools.Field(creatureSkill.GetType(), "PropertiesSkill")?.GetValue(creatureSkill);
        if (props != null)
            DumpNumericProps(player, "PropertiesSkill", props);
    }

    public static void CmHandleAptitudeAwardTest(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        Skill skill = Skill.ArcaneLore;
        if (parameters.Length > 0 && Enum.TryParse(parameters[0], true, out Skill parsed))
            skill = parsed;

        uint pp = 10;
        if (parameters.Length > 1 && uint.TryParse(parameters[1], out uint parsedPp))
            pp = parsedPp;

        var creatureSkill = player.GetCreatureSkill(skill, false);
        if (creatureSkill == null)
        {
            player.SendMessage($"[Aptitude] AwardTest: no CreatureSkill for {skill}.");
            return;
        }

        uint beforeLeft = creatureSkill.ExperienceLeft;
        uint beforeSpent = creatureSkill.ExperienceSpent;

        AwardSkillUsagePp(player, skill, pp);

        uint afterLeft = creatureSkill.ExperienceLeft;
        uint afterSpent = creatureSkill.ExperienceSpent;

        player.SendMessage($"[Aptitude] AwardTest {skill} pp={pp}: Left {beforeLeft} -> {afterLeft}, Spent {beforeSpent} -> {afterSpent}.");

        var props = AccessTools.Property(creatureSkill.GetType(), "PropertiesSkill")?.GetValue(creatureSkill)
                 ?? AccessTools.Field(creatureSkill.GetType(), "PropertiesSkill")?.GetValue(creatureSkill);
        if (props != null)
            DumpNumericProps(player, "PropertiesSkill", props);
    }

    static void DumpNumericProps(Player player, string label, object obj)
    {
        try
        {
            var t = obj.GetType();
            var props = t.GetProperties(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic);
            var lines = new List<string>();

            foreach (var p in props)
            {
                if (!p.CanRead)
                    continue;

                var pt = p.PropertyType;
                if (pt != typeof(int) && pt != typeof(uint) && pt != typeof(long) && pt != typeof(ulong) && pt != typeof(float) && pt != typeof(double) && pt != typeof(bool))
                    continue;

                object? val = null;
                try { val = p.GetValue(obj); }
                catch { continue; }

                if (val == null)
                    continue;

                string name = p.Name;
                if (name.Contains("exp", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("prof", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("mana", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("resist", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("used", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("time", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("advancement", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("class", StringComparison.OrdinalIgnoreCase))
                {
                    lines.Add($"{name}={val}");
                }
            }

            var fields = t.GetFields(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic);
            foreach (var f in fields)
            {
                var ft = f.FieldType;
                if (ft != typeof(int) && ft != typeof(uint) && ft != typeof(long) && ft != typeof(ulong) && ft != typeof(float) && ft != typeof(double) && ft != typeof(bool))
                    continue;

                object? val = null;
                try { val = f.GetValue(obj); }
                catch { continue; }

                if (val == null)
                    continue;

                string name = f.Name;
                if (name.Contains("exp", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("prof", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("mana", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("resist", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("used", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("time", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("advancement", StringComparison.OrdinalIgnoreCase) ||
                    name.Contains("class", StringComparison.OrdinalIgnoreCase))
                {
                    lines.Add($"{name}={val}");
                }
            }

            player.SendMessage($"[Aptitude] {label} type={t.FullName} interestingProps={lines.Count}");
            foreach (var line in lines.Take(15))
                player.SendMessage($"[Aptitude] {label}.{line}");
            if (lines.Count > 15)
                player.SendMessage($"[Aptitude] {label}.(+{lines.Count - 15} more)");
        }
        catch (Exception ex)
        {
            player.SendMessage($"[Aptitude] {label} dump failed: {ex.Message}");
        }
    }

    internal static uint ConsumeEquippedItemMana(Player player)
    {
        if (player?.Guid == null)
            return 0;

        uint playerGuid = player.Guid.Full;
        var lastByItemGuid = LastEquippedItemManaByPlayerGuid.GetOrAdd(playerGuid, _ => new ConcurrentDictionary<uint, int>());

        uint manaUsed = 0;
        foreach (WorldObject item in player.EquippedObjects.Values)
        {
            if (item?.Guid == null)
                continue;

            if (!item.ItemCurMana.HasValue)
                continue;

            int cur = (int)item.ItemCurMana.Value;
            uint itemGuid = item.Guid.Full;

            int prev = lastByItemGuid.GetOrAdd(itemGuid, cur);
            if (cur < prev)
                manaUsed += (uint)(prev - cur);

            lastByItemGuid[itemGuid] = cur;
        }

        return manaUsed;
    }

    internal static void AwardSkillUsagePp(Player player, Skill skill, uint pp)
    {
        if (pp == 0)
            return;

        var creatureSkill = player.GetCreatureSkill(skill, false);
        if (creatureSkill == null)
            return;

        uint clamped = pp;
        if (creatureSkill.ExperienceLeft < clamped)
            clamped = creatureSkill.ExperienceLeft;

        if (clamped == 0)
            return;

        if (ProficiencyOnSuccessUseMethod == null)
        {
            if (!_proficiencyMethodMissingLogged)
            {
                _proficiencyMethodMissingLogged = true;
                ModManager.Log("[ChallengeModes] Aptitude: Proficiency.OnSuccessUse not resolved; skill-usage PP awards are disabled until ACE API matches.", ModManager.LogLevel.Warn);
            }

            return;
        }

        var props = AccessTools.Property(creatureSkill.GetType(), "PropertiesSkill")?.GetValue(creatureSkill)
                 ?? AccessTools.Field(creatureSkill.GetType(), "PropertiesSkill")?.GetValue(creatureSkill);

        try
        {
            _proficiencyAwardDepth++;

            // Force proficiency throttles to allow awarding now.
            // We intentionally do NOT restore these values; they are transient and
            // letting the throttle re-engage makes passive item-drain awards extremely rare.
            if (props != null)
            {
                var pt = props.GetType();

                var lastUsedProp = AccessTools.Property(pt, "LastUsedTime");
                if (lastUsedProp != null && lastUsedProp.CanWrite)
                {
                    if (lastUsedProp.PropertyType == typeof(double))
                        lastUsedProp.SetValue(props, 0.0);
                    else if (lastUsedProp.PropertyType == typeof(float))
                        lastUsedProp.SetValue(props, 0.0f);
                }

                var resistProp = AccessTools.Property(pt, "ResistanceAtLastCheck");
                if (resistProp != null && resistProp.CanWrite)
                {
                    if (resistProp.PropertyType == typeof(uint))
                        resistProp.SetValue(props, 0u);
                    else if (resistProp.PropertyType == typeof(int))
                        resistProp.SetValue(props, 0);
                }
            }

            try
            {
                ProficiencyOnSuccessUseMethod.Invoke(null, new object[] { player, creatureSkill, clamped });
            }
            catch (TargetInvocationException ex)
            {
                var inner = ex.InnerException ?? ex;
                ModManager.Log($"[Aptitude] ProficiencyOnSuccessUse invoke failed: {inner.Message}", ModManager.LogLevel.Warn);
            }
        }
        finally
        {
            if (_proficiencyAwardDepth > 0)
                _proficiencyAwardDepth--;
        }
    }

    static bool TryAddSkillExperience(object creatureSkill, uint add)
    {
        if (add == 0)
            return true;

        Type t = creatureSkill.GetType();

        if (TryAddNumericProperty(creatureSkill, t, "Experience", add))
            return true;

        if (TryAddNumericProperty(creatureSkill, t, "Proficiency", add))
            return true;

        if (TryInvokeAddMethod(creatureSkill, t, "AddExperience", add))
            return true;

        if (TryInvokeAddMethod(creatureSkill, t, "GrantExperience", add))
            return true;

        var props = AccessTools.Property(t, "PropertiesSkill")?.GetValue(creatureSkill);
        if (props != null)
        {
            Type pt = props.GetType();
            if (TryAddNumericProperty(props, pt, "Experience", add))
                return true;
            if (TryAddNumericProperty(props, pt, "Proficiency", add))
                return true;
            if (TryInvokeAddMethod(props, pt, "AddExperience", add))
                return true;
        }

        return false;
    }

    static bool TryAddNumericProperty(object obj, Type type, string propName, uint add)
    {
        PropertyInfo? prop = AccessTools.Property(type, propName);
        if (prop == null || !prop.CanRead || !prop.CanWrite)
            return false;

        object? currentObj = prop.GetValue(obj);
        if (currentObj == null)
            return false;

        Type ct = currentObj.GetType();
        if (ct == typeof(uint))
        {
            uint current = (uint)currentObj;
            prop.SetValue(obj, current + add);
            return true;
        }
        if (ct == typeof(int))
        {
            int current = (int)currentObj;
            prop.SetValue(obj, current + (int)add);
            return true;
        }
        if (ct == typeof(long))
        {
            long current = (long)currentObj;
            prop.SetValue(obj, current + add);
            return true;
        }

        return false;
    }

    static bool TryInvokeAddMethod(object obj, Type type, string methodName, uint add)
    {
        MethodInfo? method = AccessTools.Method(type, methodName, new[] { typeof(uint) });
        if (method == null)
            return false;

        try
        {
            method.Invoke(obj, new object[] { add });
        }
        catch (TargetInvocationException ex)
        {
            var inner = ex.InnerException ?? ex;
            ModManager.Log($"[Aptitude] {methodName} invoke failed: {inner.Message}", ModManager.LogLevel.Warn);
            return false;
        }

        return true;
    }
}

[HarmonyPatchCategory("ChallengeModes")]
public static class AptitudePatches
{
    static void ScheduleEquippedItemManaTick(Player player, double delaySeconds)
    {
        var chain = new ActionChain();
        chain.AddDelaySeconds(delaySeconds);
        chain.AddAction(player, () => EquippedItemManaTick(player));
        chain.EnqueueChain();
    }

    static void EquippedItemManaTick(Player player)
    {
        if (player?.Guid == null || player.Session == null)
        {
            if (player?.Guid != null)
                PatchClass.EquippedItemManaMonitorRunningByGuid.TryRemove(player.Guid.Full, out _);
            return;
        }

        uint manaUsed = PatchClass.ConsumeEquippedItemMana(player);

        if (manaUsed > 0 && PatchClass.IsAptitudeEnabled(player) && PatchClass.Settings != null)
        {
            uint arcaneLorePp = 0;
            if (PatchClass.Settings.EnableArcaneLore)
                arcaneLorePp = PatchClass.ConsumeManaToPpRemainder(PatchClass.ArcaneLoreManaRemainderByGuid, player.Guid.Full, manaUsed, PatchClass.Settings.ArcaneLoreXpPerMana);

            uint manaConversionPp = 0;
            if (PatchClass.Settings.EnableManaConversion)
                manaConversionPp = PatchClass.ConsumeManaToPpRemainder(PatchClass.ManaConversionManaRemainderByGuid, player.Guid.Full, manaUsed, PatchClass.Settings.ManaConversionXpPerMana);

            if (arcaneLorePp > 0 || manaConversionPp > 0)
            {
                if (arcaneLorePp > 0)
                    PatchClass.AwardSkillUsagePp(player, Skill.ArcaneLore, arcaneLorePp);

                if (manaConversionPp > 0)
                    PatchClass.AwardSkillUsagePp(player, Skill.ManaConversion, manaConversionPp);
            }
        }

        ScheduleEquippedItemManaTick(player, 5.0);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostPlayerEnterWorld(Player __instance)
    {
        var player = __instance;
        if (player?.Guid == null)
            return;

        if (PatchClass.Settings is not { Enabled: true })
            return;

        if (!PatchClass.EquippedItemManaMonitorRunningByGuid.TryAdd(player.Guid.Full, true))
            return;

        ScheduleEquippedItemManaTick(player, 5.0);
    }

    [HarmonyPatch]
    public static class ProficiencyOnSuccessUsePatch
    {
        static MethodBase? TargetMethod()
        {
            foreach (MethodInfo method in AccessTools.GetDeclaredMethods(typeof(Proficiency)))
            {
                if (method.Name != nameof(Proficiency.OnSuccessUse))
                    continue;

                ParameterInfo[] parms = method.GetParameters();
                if (parms.Length != 3)
                    continue;

                if (parms[0].ParameterType != typeof(Player))
                    continue;

                if (parms[2].ParameterType != typeof(uint))
                    continue;

                PatchClass.ProficiencyOnSuccessUseMethod = method;
                return method;
            }

            return null;
        }

        [HarmonyPrefix]
        public static void Prefix(Player player, object skill, ref uint difficulty)
        {
            if (!PatchClass.IsAptitudeEnabled(player))
                return;

            var mult = PatchClass.Settings?.ProficiencyXpMultiplier ?? 1.0f;
            if (mult > 0.0f && mult != 1.0f)
                difficulty = (uint)Math.Clamp(MathF.Round(difficulty * mult), 0.0f, uint.MaxValue);

            PatchClass._proficiencyAwardDepth++;
        }

        [HarmonyFinalizer]
        public static Exception? Finalizer(Exception? __exception)
        {
            if (PatchClass._proficiencyAwardDepth > 0)
                PatchClass._proficiencyAwardDepth--;
            return __exception;
        }
    }

    [HarmonyPatch]
    public static class PlayerDoCastSpellInnerPatch
    {
        static MethodBase? TargetMethod()
        {
            foreach (MethodInfo method in AccessTools.GetDeclaredMethods(typeof(Player)))
            {
                if (method.Name != nameof(Player.DoCastSpell_Inner))
                    continue;

                ParameterInfo[] parms = method.GetParameters();
                if (parms.Length != 6)
                    continue;

                var p0 = parms[0].ParameterType;
                if (p0 == typeof(Spell))
                {
                    // ok
                }
                else if (p0.IsByRef && p0.GetElementType() == typeof(Spell))
                {
                    // ok (ref Spell)
                }
                else
                    continue;

                if (!typeof(WorldObject).IsAssignableFrom(parms[1].ParameterType))
                    continue;

                if (parms[2].ParameterType != typeof(uint))
                    continue;

                if (!typeof(WorldObject).IsAssignableFrom(parms[3].ParameterType))
                    continue;

                if (parms[5].ParameterType != typeof(bool))
                    continue;

                return method;
            }

            return null;
        }

        [HarmonyPostfix]
        public static void Postfix(ref Spell spell, WorldObject casterItem, uint manaUsed, WorldObject target, object castingPreCheckStatus, bool finishCast, Player __instance)
        {
            if (!finishCast)
                return;

            if (manaUsed == 0)
                return;

            if (!PatchClass.IsAptitudeEnabled(__instance))
                return;

            if (PatchClass.Settings == null)
                return;

            uint arcaneLorePp = 0;
            if (PatchClass.Settings.EnableArcaneLore)
                arcaneLorePp = PatchClass.ConsumeManaToPpRemainder(PatchClass.ArcaneLoreManaRemainderByGuid, __instance.Guid.Full, manaUsed, PatchClass.Settings.ArcaneLoreXpPerMana);

            uint manaConversionPp = 0;
            if (PatchClass.Settings.EnableManaConversion)
                manaConversionPp = PatchClass.ConsumeManaToPpRemainder(PatchClass.ManaConversionManaRemainderByGuid, __instance.Guid.Full, manaUsed, PatchClass.Settings.ManaConversionXpPerMana);

            if (arcaneLorePp == 0 && manaConversionPp == 0)
                return;

            if (arcaneLorePp > 0)
                PatchClass.AwardSkillUsagePp(__instance, Skill.ArcaneLore, arcaneLorePp);

            if (manaConversionPp > 0)
                PatchClass.AwardSkillUsagePp(__instance, Skill.ManaConversion, manaConversionPp);
        }
    }
}
