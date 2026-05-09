using System.Collections.Concurrent;

namespace QOL;

// Tracks XP, luminance, and bank auto-deposits per player session.
// External mods call RecordAutoDeposit to contribute bank events.
// Lifetime totals flush to <modDir>/xp-tracker/<guid>.json every 5 s of inactivity.

[HarmonyPatchCategory(nameof(Features.XpTracker))]
internal static class XpTracker
{
    [ThreadStatic] static string? _killMobName;

    static readonly ConcurrentDictionary<uint, PlayerXpSession> _sessions = new();
    internal static readonly ConcurrentDictionary<uint, bool> SpendAutoPrefs = new();
    static readonly ConcurrentDictionary<uint, DateTime> _lastAutoSpendMsgUtc = new();
    static string _dataDir = "";
    static readonly object _saveLock = new();

    readonly record struct SpendResult(string Name, int RanksGained, long XpSpent);

    internal static void Initialize(string modDirectory)
    {
        _dataDir = Path.Combine(modDirectory, "xp-tracker");
        Directory.CreateDirectory(_dataDir);
    }

    // ── Harmony patches ───────────────────────────────────────────────────────

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.OnDeath_GrantXP))]
    public static void OnDeath_Prefix(Creature __instance)
    {
        _killMobName = null;
        var ld = __instance.DamageHistory?.LastDamager;
        if (ld?.IsPlayer == true || ld?.PetOwner != null)
            _killMobName = __instance.Name ?? "Unknown";
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.OnDeath_GrantXP))]
    public static void OnDeath_Postfix() => _killMobName = null;

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void OnPlayerEnterWorld(Player __instance)
    {
        if (__instance?.Session == null) return;
        _sessions.AddOrUpdate(__instance.Guid.Full,
            _ => new PlayerXpSession(__instance),
            (_, s) => { s.ResetLogin(__instance); return s; });
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantXP),
        new[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void OnGrantXP(long amount, XpType xpType, Player __instance)
    {
        if (amount <= 0 || __instance?.Session == null) return;
        string? tag = xpType == XpType.Kill ? _killMobName : null;
        var s = _sessions.GetOrAdd(__instance.Guid.Full, _ => new PlayerXpSession(__instance));
        s.AddXp(new XpEvent(DateTime.UtcNow, xpType, amount, tag));
        s.ScheduleSave(__instance.Guid.Full);

        if (SpendAutoPrefs.TryGetValue(__instance.Guid.Full, out bool auto) && auto)
        {
            var player = __instance;
            var chain = new ActionChain();
            chain.AddAction(player, () =>
            {
                var results = SpendForPlayer(player);
                var meaningful = results.Where(r => r.RanksGained > 0).ToList();
                if (meaningful.Count == 0)
                    return;

                var settings = PatchClass.Settings;
                var now = DateTime.UtcNow;
                if (settings != null && settings.EnableAutoSpendRateLimit)
                {
                    var cooldown = TimeSpan.FromMinutes(Math.Max(1, settings.AutoSpendRateLimitMinutes));
                    if (_lastAutoSpendMsgUtc.TryGetValue(player.Guid.Full, out var last)
                        && now - last < cooldown)
                        return;
                }

                long spent = meaningful.Sum(r => r.XpSpent);
                if (spent <= 0)
                    return;

                _lastAutoSpendMsgUtc[player.Guid.Full] = now;
                var detail = string.Join(", ", meaningful.Select(r => $"{r.Name} (+{r.RanksGained})"));
                player.SendMessage($"[Auto-Spend] Spent {spent:N0} XP into {meaningful.Count} stats: {detail}. Remaining: {player.AvailableExperience ?? 0:N0}", ChatMessageType.System);
            });
            chain.EnqueueChain();
        }
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.GrantLuminance),
        new[] { typeof(long), typeof(XpType), typeof(ShareType) })]
    public static void OnGrantLuminance(long amount, Player __instance)
    {
        if (amount <= 0 || __instance?.Session == null) return;
        var s = _sessions.GetOrAdd(__instance.Guid.Full, _ => new PlayerXpSession(__instance));
        s.AddLum(new LumEvent(DateTime.UtcNow, amount));
        s.ScheduleSave(__instance.Guid.Full);
    }

    // ── Cross-mod entry point ─────────────────────────────────────────────────

    // Called by LeyLineLedger, AutoLoot, or any other mod when auto-depositing to bank.
    internal static void RecordAutoDeposit(Player player, long amount, string? source = null)
    {
        if (player?.Session == null || amount <= 0) return;
        var s = _sessions.GetOrAdd(player.Guid.Full, _ => new PlayerXpSession(player));
        s.AddDeposit(new DepositEvent(DateTime.UtcNow, amount, source ?? "bank"));
        s.ScheduleSave(player.Guid.Full);
    }

    // ── /xp command ───────────────────────────────────────────────────────────

    [CommandHandler("xp", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "XP tracker. Usage: /xp tracker [full|lifetime|add <name>|list] | spend [auto]")]
    public static void HandleXp(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player) return;

        string sub  = parameters.Length > 0 ? parameters[0].Trim().ToLowerInvariant() : "";
        string sub2 = parameters.Length > 1 ? parameters[1].Trim().ToLowerInvariant() : "";

        switch (sub)
        {
            case "tracker":
                switch (sub2)
                {
                    case "lifetime": HandleLifetime(player); break;
                    case "full":     HandleFull(player);     break;
                    case "add":
                        string name = parameters.Length > 2 ? string.Join(" ", parameters[2..]).Trim() : "";
                        HandleAdd(player, name);
                        break;
                    case "list":     HandleList(player);    break;
                    default:         HandleSummary(player); break;
                }
                break;
            case "spend":
                if (sub2 == "auto")
                    HandleSpendAutoToggle(player);
                else
                    HandleSpend(player);
                break;
            case "mob_scaling":
                ToggleMobScaling(player);
                break;
            default:
                player.SendMessage(
                    "Usage: /xp tracker [full|lifetime|add <name_or_id>|list] | /xp spend [auto] | /xp mob_scaling",
                    ChatMessageType.System);
                break;
        }
    }

    // ── /xp tracker ──────────────────────────────────────────────────────────

    static void HandleSummary(Player player)
    {
        if (!_sessions.TryGetValue(player.Guid.Full, out var session))
        {
            player.SendMessage("No XP recorded yet this session.", ChatMessageType.System);
            return;
        }

        int windowMins = PatchClass.Settings?.XpTrackerWindowMinutes ?? 60;
        var window     = TimeSpan.FromMinutes(windowMins);
        var effective  = session.ElapsedSinceLogin < window ? session.ElapsedSinceLogin : window;

        var xpEvents  = session.GetXpWindow(effective);
        var lumEvents = session.GetLumWindow(effective);
        var deposits  = session.GetDepositWindow(effective);

        bool any = xpEvents.Count > 0 || lumEvents.Count > 0 || deposits.Count > 0;
        if (!any)
        {
            player.SendMessage($"No activity recorded in the past {FormatDuration(effective)}.", ChatMessageType.System);
            return;
        }

        long killXp   = xpEvents.Where(e => e.Type == XpType.Kill).Sum(e => e.Amount);
        int  killCnt  = xpEvents.Count(e => e.Type == XpType.Kill);
        long questXp  = xpEvents.Where(e => e.Type == XpType.Quest).Sum(e => e.Amount);
        int  questCnt = xpEvents.Count(e => e.Type == XpType.Quest);
        long vassalXp = xpEvents.Where(e => e.Type == XpType.Allegiance).Sum(e => e.Amount);
        long otherXp  = xpEvents
            .Where(e => e.Type != XpType.Kill && e.Type != XpType.Quest && e.Type != XpType.Allegiance)
            .Sum(e => e.Amount);
        long totalLum   = lumEvents.Sum(e => e.Amount);
        long totalDepos = deposits.Sum(e => e.Amount);

        var sb = new StringBuilder();
        sb.AppendLine($"XP in the past {FormatDuration(effective)}:");
        if (killCnt > 0)    sb.AppendLine($"  Kills:   {killCnt:N0} kills — {FormatXp(killXp, player)}");
        if (questCnt > 0)   sb.AppendLine($"  Quests:  {questCnt:N0} grants — {FormatXp(questXp, player)}");
        if (vassalXp > 0)   sb.AppendLine($"  Vassals: {FormatXp(vassalXp, player)}");
        if (otherXp > 0)    sb.AppendLine($"  Other:   {FormatXp(otherXp, player)}");
        if (totalLum > 0)   sb.AppendLine($"  Luminance: {totalLum:N0} lum");
        if (totalDepos > 0) sb.AppendLine($"  Auto-deposited: {totalDepos:N0} pyreals");

        // Watched property deltas (summary level)
        foreach (var (delta, displayName) in session.GetWatchedDeltas(player))
        {
            if (delta != 0) sb.AppendLine($"  {displayName}: {delta:+N0;-N0;0}");
        }

        player.SendMessage(sb.ToString().TrimEnd(), ChatMessageType.System);
    }

    // ── /xp tracker full ─────────────────────────────────────────────────────

    static void HandleFull(Player player)
    {
        if (!_sessions.TryGetValue(player.Guid.Full, out var session))
        {
            player.SendMessage("No XP recorded yet this session.", ChatMessageType.System);
            return;
        }

        int windowMins = PatchClass.Settings?.XpTrackerWindowMinutes ?? 60;
        var window     = TimeSpan.FromMinutes(windowMins);
        var effective  = session.ElapsedSinceLogin < window ? session.ElapsedSinceLogin : window;

        var xpEvents  = session.GetXpWindow(effective);
        var lumEvents = session.GetLumWindow(effective);
        var deposits  = session.GetDepositWindow(effective);

        var sb = new StringBuilder();
        sb.AppendLine($"XP breakdown ({FormatDuration(effective)}):");

        // Kill breakdown by mob
        var kills = xpEvents
            .Where(e => e.Type == XpType.Kill)
            .GroupBy(e => e.Tag ?? "Unknown")
            .Select(g => (name: g.Key, count: g.Count(), xp: g.Sum(e => e.Amount)))
            .OrderByDescending(t => t.xp)
            .ToList();

        if (kills.Count > 0)
        {
            long totalKillXp = kills.Sum(k => k.xp);
            int  totalKills  = kills.Sum(k => k.count);
            sb.AppendLine($"  Kills ({totalKills:N0} total — {FormatXp(totalKillXp, player)}):");
            foreach (var (name, count, xp) in kills.Take(20))
                sb.AppendLine($"    {name} ×{count:N0} — {FormatXp(xp, player)}");
            if (kills.Count > 20)
                sb.AppendLine($"    ... and {kills.Count - 20} more mob types");
        }

        long questXp  = xpEvents.Where(e => e.Type == XpType.Quest).Sum(e => e.Amount);
        int  questCnt = xpEvents.Count(e => e.Type == XpType.Quest);
        if (questCnt > 0) sb.AppendLine($"  Quests: {questCnt:N0} grants — {FormatXp(questXp, player)}");

        long vassalXp = xpEvents.Where(e => e.Type == XpType.Allegiance).Sum(e => e.Amount);
        if (vassalXp > 0) sb.AppendLine($"  Vassals: {FormatXp(vassalXp, player)}");

        // Luminance breakdown by type
        long totalLum = lumEvents.Sum(e => e.Amount);
        if (totalLum > 0) sb.AppendLine($"  Luminance: {totalLum:N0} lum");

        // Bank deposit breakdown by source
        if (deposits.Count > 0)
        {
            long totalDepos = deposits.Sum(e => e.Amount);
            sb.AppendLine($"  Auto-deposited: {totalDepos:N0} pyreals");
            var bySrc = deposits
                .GroupBy(d => d.Source)
                .Select(g => (src: g.Key, total: g.Sum(d => d.Amount)))
                .OrderByDescending(t => t.total);
            foreach (var (src, total) in bySrc)
                sb.AppendLine($"    {src}: {total:N0}");
        }

        // Watched property deltas (always shown in full)
        foreach (var (delta, displayName) in session.GetWatchedDeltas(player))
            sb.AppendLine($"  {displayName}: {delta:+N0;-N0;0} (session delta)");

        if (sb.Length == $"XP breakdown ({FormatDuration(effective)}):{Environment.NewLine}".Length)
            sb.AppendLine("  (nothing recorded)");

        player.SendMessage(sb.ToString().TrimEnd(), ChatMessageType.System);
    }

    // ── /xp tracker lifetime ─────────────────────────────────────────────────

    static void HandleLifetime(Player player)
    {
        var rec = LoadRecord(player.Guid.Full);
        if (rec == null || (rec.KillXp == 0 && rec.QuestXp == 0 && rec.AllegianceXp == 0 && rec.OtherXp == 0 && rec.Luminance == 0 && rec.BankDeposits == 0))
        {
            player.SendMessage("No lifetime XP data recorded yet.", ChatMessageType.System);
            return;
        }

        long total = rec.KillXp + rec.QuestXp + rec.AllegianceXp + rec.OtherXp;
        var sb = new StringBuilder();
        sb.AppendLine("Lifetime XP (all sessions):");
        if (rec.KillXp > 0)      sb.AppendLine($"  Kills:   {rec.KillXp:N0} xp");
        if (rec.QuestXp > 0)     sb.AppendLine($"  Quests:  {rec.QuestXp:N0} xp");
        if (rec.AllegianceXp > 0) sb.AppendLine($"  Vassals: {rec.AllegianceXp:N0} xp");
        if (rec.OtherXp > 0)     sb.AppendLine($"  Other:   {rec.OtherXp:N0} xp");
        sb.AppendLine($"  Total XP: {total:N0} xp");
        if (rec.Luminance > 0)   sb.AppendLine($"  Luminance: {rec.Luminance:N0} lum");
        if (rec.BankDeposits > 0) sb.AppendLine($"  Auto-deposited: {rec.BankDeposits:N0} pyreals");

        if (rec.KillsByMob.Count > 0)
        {
            sb.AppendLine("  Top kill XP sources:");
            foreach (var kv in rec.KillsByMob.OrderByDescending(x => x.Value).Take(10))
                sb.AppendLine($"    {kv.Key}: {kv.Value:N0} xp");
        }

        player.SendMessage(sb.ToString().TrimEnd(), ChatMessageType.System);
    }

    // ── /xp tracker list ─────────────────────────────────────────────────────

    static readonly HashSet<PropertyInt64> _standardProps = new()
    {
        PropertyInt64.AvailableExperience,   PropertyInt64.TotalExperience,
        PropertyInt64.AvailableLuminance,    PropertyInt64.MaximumLuminance,
        PropertyInt64.AllegianceXPCached,    PropertyInt64.AllegianceXPGenerated,
        PropertyInt64.AllegianceXPReceived,
    };

    static void HandleList(Player player)
    {
        var props = player.Biota.PropertiesInt64;
        if (props == null || props.Count == 0)
        {
            player.SendMessage("No Int64 properties found.", ChatMessageType.System);
            return;
        }

        var sb = new StringBuilder();
        sb.AppendLine("PropertyInt64 values (non-standard, non-zero):");
        bool any = false;
        lock (props)
        {
            foreach (var (k, v) in props.OrderBy(x => x.Key))
            {
                if (_standardProps.Contains(k)) continue;
                if (v == 0) continue;
                string name = k.ToString();
                sb.AppendLine($"  [{(int)k}] {name} = {v:N0}");
                any = true;
            }
        }
        if (!any) sb.AppendLine("  (none)");
        player.SendMessage(sb.ToString().TrimEnd(), ChatMessageType.System);
    }

    // ── /xp tracker add <name_or_id> ─────────────────────────────────────────

    static void HandleAdd(Player player, string query)
    {
        if (string.IsNullOrWhiteSpace(query))
        {
            player.SendMessage("Usage: /xp tracker add <propertyName or id>", ChatMessageType.System);
            return;
        }

        // Try numeric ID first
        PropertyInt64? prop = null;
        string displayName  = query;

        if (uint.TryParse(query, out uint numId))
        {
            prop        = (PropertyInt64)numId;
            displayName = $"[{numId}]";
        }
        else
        {
            // Fuzzy match against PropertyInt64 enum names
            var matches = Enum.GetValues<PropertyInt64>()
                .Where(p => p.ToString().Contains(query, StringComparison.OrdinalIgnoreCase))
                .ToList();

            if (matches.Count == 0)
            {
                player.SendMessage($"No PropertyInt64 matching '{query}'. Use /xp tracker list to browse properties.", ChatMessageType.System);
                return;
            }
            if (matches.Count > 1)
            {
                player.SendMessage($"Ambiguous: {string.Join(", ", matches.Take(8).Select(p => p.ToString()))}. Be more specific.", ChatMessageType.System);
                return;
            }
            prop        = matches[0];
            displayName = matches[0].ToString();
        }

        if (!_sessions.TryGetValue(player.Guid.Full, out var session))
            session = _sessions.GetOrAdd(player.Guid.Full, _ => new PlayerXpSession(player));

        long baseline = player.GetProperty(prop.Value) ?? 0;
        session.AddWatch(prop.Value, displayName, baseline);
        player.SendMessage($"Now tracking '{displayName}' (current: {baseline:N0}). Delta will show in /xp tracker.", ChatMessageType.System);
    }

    // ── /xp spend ────────────────────────────────────────────────────────────

    static void HandleSpend(Player player)
    {
        if ((player.AvailableExperience ?? 0) <= 0)
        {
            player.SendMessage("No available XP to spend.", ChatMessageType.System);
            return;
        }
        long before = player.AvailableExperience ?? 0;
        var results = SpendForPlayer(player);
        long spent  = before - (player.AvailableExperience ?? 0);
        if (spent <= 0)
        {
            int stop = PatchClass.Settings?.XpSpendStopBeforeMaxRanks ?? 3;
            player.SendMessage($"Nothing to spend XP into (all stats within {stop} ranks of max).", ChatMessageType.System);
        }
        else
        {
            var detail = string.Join(", ", results.Select(r => $"{r.Name} (+{r.RanksGained})"));
            player.SendMessage($"Spent {spent:N0} XP into {results.Count} stats: {detail}. Remaining: {player.AvailableExperience ?? 0:N0}", ChatMessageType.System);
        }
    }

    static void HandleSpendAutoToggle(Player player)
    {
        uint guid    = player.Guid.Full;
        bool current = SpendAutoPrefs.TryGetValue(guid, out var v) && v;
        bool next    = !current;

        SpendAutoPrefs[guid] = next;
        var profile = PlayerProfileStore.GetOrCreate(guid);
        profile.XpSpendAuto = next;
        PlayerProfileStore.Save(guid, profile);

        int stop = PatchClass.Settings?.XpSpendStopBeforeMaxRanks ?? 3;
        player.SendMessage(next
            ? $"Auto-spend ON — XP will be distributed automatically as earned (stops {stop} ranks before max)."
            : "Auto-spend OFF.", ChatMessageType.System);
    }

    static void ToggleMobScaling(Player player)
    {
        const int optOutProp = 40151; // Shared with Swarmed DynamicMobScaling
        bool current = player.GetProperty((PropertyBool)optOutProp) ?? false;
        bool next = !current;
        player.SetProperty((PropertyBool)optOutProp, next);
        player.SendMessage(next
            ? "Mob scaling OPT-OUT enabled — nearby mobs will NOT scale to your level."
            : "Mob scaling OPT-OUT disabled — nearby mobs WILL scale to your level.", ChatMessageType.System);
    }

    // Returns list of stats that received XP with rank gains.
    // Uses greedy proportional allocation: each stat gets (available * weight / remaining_weight),
    // capped at what it needs to reach (maxRank - stop). Leftover from caps naturally flows down.
    static List<SpendResult> SpendForPlayer(Player player)
    {
        int stop = PatchClass.Settings?.XpSpendStopBeforeMaxRanks ?? 3;
        var cfg  = PatchClass.Settings?.XpSpend ?? new();
        int avw  = cfg.AttributeVitalWeight;

        // Collect (weight, needed, name, spendFn) for every stat that still needs XP
        var targets = new List<(int Weight, uint Needed, string Name, Func<uint, (bool success, int gained)> Spend)>();

        // Attributes
        var attrTable  = DatManager.PortalDat.XpTable.AttributeXpList;
        int attrTarget = attrTable.Count - 1 - stop;
        if (attrTarget >= 0)
        {
            foreach (var attr in new[] { player.Strength, player.Endurance, player.Coordination,
                                         player.Quickness, player.Focus, player.Self })
            {
                if (attr.Ranks >= attrTarget) continue;
                uint targetXp = attrTable[attrTarget];
                if (targetXp <= attr.ExperienceSpent) continue;
                uint needed = targetXp - attr.ExperienceSpent;
                var a = attr;
                string name = a.Attribute.ToString();
                targets.Add((avw, needed, name, amt => {
                    int before = (int)a.Ranks;
                    bool ok = player.HandleActionRaiseAttribute(a.Attribute, amt);
                    int gained = (int)a.Ranks - before;
                    return (ok, gained);
                }));
            }
        }

        // Vitals
        var vitalTable  = DatManager.PortalDat.XpTable.VitalXpList;
        int vitalTarget = vitalTable.Count - 1 - stop;
        if (vitalTarget >= 0)
        {
            foreach (var vital in new[] { player.Health, player.Stamina, player.Mana })
            {
                if (vital.Ranks >= vitalTarget) continue;
                uint targetXp = vitalTable[vitalTarget];
                if (targetXp <= vital.ExperienceSpent) continue;
                uint needed = targetXp - vital.ExperienceSpent;
                var v = vital;
                string name = v.Vital.ToString().Replace("Max", "");
                targets.Add((avw, needed, name, amt => {
                    int before = (int)v.Ranks;
                    bool ok = player.HandleActionRaiseVital(v.Vital, amt);
                    int gained = (int)v.Ranks - before;
                    return (ok, gained);
                }));
            }
        }

        // Skills
        foreach (var (_, cs) in player.Skills)
        {
            if (cs.AdvancementClass < SkillAdvancementClass.Trained) continue;
            var skillTable = Player.GetSkillXPTable(cs.AdvancementClass);
            if (skillTable == null) continue;
            int skillTarget = skillTable.Count - 1 - stop;
            if (skillTarget < 0 || cs.Ranks >= skillTarget) continue;
            uint targetXp = skillTable[skillTarget];
            if (targetXp <= cs.ExperienceSpent) continue;
            uint needed = targetXp - cs.ExperienceSpent;
            int  weight = GetSkillWeight(cs.Skill, cfg);
            var  s = cs;
            string name = s.Skill.ToString();
            targets.Add((weight, needed, name, amt => {
                int before = s.Ranks;
                bool ok = player.HandleActionRaiseSkill(s.Skill, amt);
                int gained = s.Ranks - before;
                return (ok, gained);
            }));
        }

        if (targets.Count == 0) return new List<SpendResult>();

        // Sort highest weight first for greedy proportional pass
        targets.Sort((a, b) => b.Weight.CompareTo(a.Weight));

        long available       = player.AvailableExperience ?? 0;
        long remainingWeight = targets.Sum(t => (long)t.Weight);
        var  results         = new List<SpendResult>();

        foreach (var (weight, needed, name, spendFn) in targets)
        {
            if (available <= 0 || remainingWeight <= 0) break;
            long alloc   = available * weight / remainingWeight;
            uint toSpend = (uint)Math.Min(Math.Min((long)needed, alloc), available);
            if (toSpend > 0)
            {
                var (success, gained) = spendFn(toSpend);
                if (success)
                {
                    results.Add(new SpendResult(name, gained, toSpend));
                    available -= toSpend;
                }
            }
            remainingWeight -= weight;
        }

        return results;
    }

    static int GetSkillWeight(Skill skill, XpSpendSettings cfg)
    {
        string name = skill.ToString();
        if (cfg.CombatSkills.Contains(name))  return cfg.CombatSkillWeight;
        if (cfg.SocialSkills.Contains(name)) return cfg.SocialSkillWeight;
        return cfg.SupportSkillWeight;
    }

    // ── Formatting ────────────────────────────────────────────────────────────

    static string FormatXp(long xp, Player player) =>
        $"{xp:N0} xp ({FormatLevels(xp, player)})";

    static string FormatLevels(long xp, Player player)
    {
        try
        {
            var xpList = DatManager.PortalDat.XpTable.CharacterLevelXPList;
            int level  = player.Level ?? 1;
            if (level >= xpList.Count - 1) return "max";

            double levels = 0;
            long   rem    = xp;
            int    cur    = level;

            while (rem > 0 && cur < xpList.Count - 1)
            {
                long w = (long)xpList[cur + 1] - (long)xpList[cur];
                if (w <= 0) break;
                if (rem >= w) { levels += 1; rem -= w; cur++; }
                else          { levels += (double)rem / w; rem = 0; }
            }

            return levels >= 100 ? $"{levels:N0}L" : $"{levels:F2}L";
        }
        catch { return "?L"; }
    }

    static string FormatDuration(TimeSpan ts)
    {
        if (ts.TotalSeconds < 60) return $"{(int)ts.TotalSeconds}s";
        if (ts.TotalMinutes < 60) return $"{(int)ts.TotalMinutes}m";
        return $"{ts.TotalHours:F1}h";
    }

    // ── Lifetime persistence ──────────────────────────────────────────────────

    static XpLifetimeRecord? LoadRecord(uint guid)
    {
        if (string.IsNullOrEmpty(_dataDir)) return null;
        var path = Path.Combine(_dataDir, $"{guid}.json");
        if (!File.Exists(path)) return null;
        try { return JsonSerializer.Deserialize<XpLifetimeRecord>(File.ReadAllText(path)); }
        catch { return null; }
    }

    internal static void MergeAndSave(uint guid, long killXp, long questXp, long allegianceXp, long otherXp,
        long luminance, long bankDeposits, Dictionary<string, long> killsByMob)
    {
        if (string.IsNullOrEmpty(_dataDir)) return;
        var path = Path.Combine(_dataDir, $"{guid}.json");
        lock (_saveLock)
        {
            XpLifetimeRecord rec;
            try
            {
                rec = File.Exists(path)
                    ? JsonSerializer.Deserialize<XpLifetimeRecord>(File.ReadAllText(path)) ?? new()
                    : new();
            }
            catch { rec = new(); }

            rec.KillXp       += killXp;
            rec.QuestXp      += questXp;
            rec.AllegianceXp += allegianceXp;
            rec.OtherXp      += otherXp;
            rec.Luminance    += luminance;
            rec.BankDeposits += bankDeposits;
            foreach (var (k, v) in killsByMob)
            {
                rec.KillsByMob.TryGetValue(k, out var prev);
                rec.KillsByMob[k] = prev + v;
            }

            try { File.WriteAllText(path, JsonSerializer.Serialize(rec, new JsonSerializerOptions { WriteIndented = true })); }
            catch { }
        }
    }

    // ── Inner types ───────────────────────────────────────────────────────────

    record XpEvent(DateTime When, XpType Type, long Amount, string? Tag);
    record LumEvent(DateTime When, long Amount);
    record DepositEvent(DateTime When, long Amount, string Source);

    sealed class PlayerXpSession
    {
        public DateTime LoginTime { get; private set; } = DateTime.UtcNow;
        public TimeSpan ElapsedSinceLogin => DateTime.UtcNow - LoginTime;

        readonly List<XpEvent>     _xpEvents  = new();
        readonly List<LumEvent>    _lumEvents  = new();
        readonly List<DepositEvent> _deposits  = new();
        readonly object _lock = new();

        // Pending deltas for lifetime flush
        long _pendKill, _pendQuest, _pendAlleg, _pendOther, _pendLum, _pendDeposit;
        readonly Dictionary<string, long> _pendByMob = new();
        CancellationTokenSource? _cts;

        // Watched property snapshots: prop → (displayName, baselineValue)
        readonly Dictionary<PropertyInt64, (string Name, long Baseline)> _watched = new();

        public PlayerXpSession(Player player) { }

        public void ResetLogin(Player player)
        {
            LoginTime = DateTime.UtcNow;
            // Re-snapshot watched properties at login
            lock (_lock)
            {
                var keys = _watched.Keys.ToList();
                foreach (var k in keys)
                {
                    var (name, _) = _watched[k];
                    _watched[k] = (name, player.GetProperty(k) ?? 0);
                }
            }
        }

        public void AddXp(XpEvent ev)
        {
            lock (_lock)
            {
                _xpEvents.Add(ev);
                switch (ev.Type)
                {
                    case XpType.Kill:
                        _pendKill += ev.Amount;
                        if (ev.Tag != null)
                        {
                            _pendByMob.TryGetValue(ev.Tag, out var p);
                            _pendByMob[ev.Tag] = p + ev.Amount;
                        }
                        break;
                    case XpType.Quest:      _pendQuest += ev.Amount; break;
                    case XpType.Allegiance: _pendAlleg += ev.Amount; break;
                    default:                _pendOther += ev.Amount; break;
                }
            }
        }

        public void AddLum(LumEvent ev)
        {
            lock (_lock) { _lumEvents.Add(ev); _pendLum += ev.Amount; }
        }

        public void AddDeposit(DepositEvent ev)
        {
            lock (_lock) { _deposits.Add(ev); _pendDeposit += ev.Amount; }
        }

        public void AddWatch(PropertyInt64 prop, string displayName, long baseline)
        {
            lock (_lock) { _watched[prop] = (displayName, baseline); }
        }

        public List<XpEvent> GetXpWindow(TimeSpan window)
        {
            var cut = DateTime.UtcNow - window;
            lock (_lock) { return _xpEvents.Where(e => e.When >= cut).ToList(); }
        }

        public List<LumEvent> GetLumWindow(TimeSpan window)
        {
            var cut = DateTime.UtcNow - window;
            lock (_lock) { return _lumEvents.Where(e => e.When >= cut).ToList(); }
        }

        public List<DepositEvent> GetDepositWindow(TimeSpan window)
        {
            var cut = DateTime.UtcNow - window;
            lock (_lock) { return _deposits.Where(e => e.When >= cut).ToList(); }
        }

        public IEnumerable<(long Delta, string Name)> GetWatchedDeltas(Player player)
        {
            List<(PropertyInt64 prop, string name, long baseline)> snap;
            lock (_lock)
            {
                snap = _watched.Select(kv => (kv.Key, kv.Value.Name, kv.Value.Baseline)).ToList();
            }
            foreach (var (prop, name, baseline) in snap)
            {
                long current = player.GetProperty(prop) ?? 0;
                yield return (current - baseline, name);
            }
        }

        public void ScheduleSave(uint guid)
        {
            var cts = new CancellationTokenSource();
            Interlocked.Exchange(ref _cts, cts)?.Cancel();
            _ = Task.Delay(5000, cts.Token)
                .ContinueWith(_ => Flush(guid), CancellationToken.None,
                    TaskContinuationOptions.OnlyOnRanToCompletion, TaskScheduler.Default);
        }

        void Flush(uint guid)
        {
            long kill, quest, alleg, other, lum, dep;
            Dictionary<string, long> byMob;
            lock (_lock)
            {
                if (_pendKill == 0 && _pendQuest == 0 && _pendAlleg == 0 &&
                    _pendOther == 0 && _pendLum == 0 && _pendDeposit == 0) return;
                kill  = _pendKill;    _pendKill    = 0;
                quest = _pendQuest;   _pendQuest   = 0;
                alleg = _pendAlleg;   _pendAlleg   = 0;
                other = _pendOther;   _pendOther   = 0;
                lum   = _pendLum;     _pendLum     = 0;
                dep   = _pendDeposit; _pendDeposit = 0;
                byMob = new(_pendByMob); _pendByMob.Clear();
            }
            XpTracker.MergeAndSave(guid, kill, quest, alleg, other, lum, dep, byMob);
        }
    }
}

public class XpLifetimeRecord
{
    public long KillXp       { get; set; }
    public long QuestXp      { get; set; }
    public long AllegianceXp { get; set; }
    public long OtherXp      { get; set; }
    public long Luminance    { get; set; }
    public long BankDeposits { get; set; }
    public Dictionary<string, long> KillsByMob { get; set; } = new();
}
