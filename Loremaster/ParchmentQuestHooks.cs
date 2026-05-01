namespace Loremaster;

// Harmony category toggled from PatchClass when BarkeeperParchments.Enable is true.
[HarmonyPatchCategory("ParchmentQuestHooks")]
public static class ParchmentQuestHooks
{
    static string NormalizeKind(string? kind) =>
        (kind ?? "").Trim().ToLowerInvariant() switch
        {
            "kill"    => "kill",
            "explore" => "explore",
            "fetch"   => "fetch",
            _         => ""
        };

    static bool TemplateMatchesItemKind(ParchmentTemplateSettings t, WorldObject item)
    {
        var act = (t.ParchmentActivation ?? "Gem").Trim().ToLowerInvariant();
        if (act == "book")
            return item is Book;

        return item is Gem;
    }

    internal static int FindMatchingTemplateRow(WorldObject item)
    {
        var templates = PatchClass.Settings?.BarkeeperParchments?.ParchmentTemplates;
        if (templates is null || templates.Count == 0)
            return -1;

        var wcid = item.WeenieClassId;
        var inscription = item.GetProperty(PropertyString.Inscription);

        for (var i = 0; i < templates.Count; i++)
        {
            var t = templates[i];
            if (t.ParchmentWeenieClassId != wcid)
                continue;

            if (!TemplateMatchesItemKind(t, item))
                continue;

            var need = t.TemplateMatchInscription;
            if (string.IsNullOrWhiteSpace(need))
                return i;

            if (string.Equals(need.Trim(), (inscription ?? "").Trim(), StringComparison.Ordinal))
                return i;
        }

        return -1;
    }

    internal static bool ValidateTemplate(ParchmentTemplateSettings t, out string? error)
    {
        error = null;
        var k = NormalizeKind(t.Kind);
        if (k.Length == 0)
        {
            error = "invalid Kind";
            return false;
        }

        var act = (t.ParchmentActivation ?? "Gem").Trim().ToLowerInvariant();
        if (act != "gem" && act != "book")
        {
            error = "ParchmentActivation must be Gem or Book";
            return false;
        }

        if (t.ParchmentWeenieClassId == 0)
        {
            error = "ParchmentWeenieClassId is 0";
            return false;
        }

        switch (k)
        {
            case "kill":
                if (t.KillCount < 1)
                {
                    error = "KillCount must be >= 1";
                    return false;
                }

                break;
            case "explore":
                bool exploreLegacyPool = t.ExploreLandblockRawPool is { Count: > 0 };
                bool exploreWeighted = t.ExploreLandblockWeightedPool is { Count: > 0 };
                if (t.ExploreLandblockRaw == 0 && !exploreLegacyPool && !exploreWeighted)
                {
                    error = "Explore needs ExploreLandblockRaw, ExploreLandblockRawPool, or ExploreLandblockWeightedPool";
                    return false;
                }

                if (!ValidateExploreWeightedPool(t, out error))
                    return false;
                break;
            case "fetch":
                bool fetchLegacy = t.FetchItemWcid != 0;
                bool fetchWeighted = t.FetchItemWeightedPool is { Count: > 0 };
                if (!fetchLegacy && !fetchWeighted)
                {
                    error = "Fetch needs FetchItemWcid or a non-empty FetchItemWeightedPool";
                    return false;
                }

                if (!ValidateFetchWeightedPool(t, out error))
                    return false;
                break;
        }

        if (k == "kill" && !ValidateKillWeightedPool(t, out error))
            return false;

        return true;
    }

    static bool ValidateExploreWeightedPool(ParchmentTemplateSettings t, out string? error)
    {
        error = null;
        var list = t.ExploreLandblockWeightedPool;
        if (list is not { Count: > 0 })
            return true;

        var rare = 0;
        for (var i = 0; i < list.Count; i++)
        {
            var e = list[i];
            if (e.LandblockRaw == 0)
            {
                error = $"ExploreLandblockWeightedPool[{i}]: LandblockRaw must be non-zero";
                return false;
            }

            if (e.Rare)
                rare++;
            else if (e.Weight != 0 && (e.Weight < 25 || e.Weight > 100))
                ModManager.Log($"[Loremaster] ExploreLandblockWeightedPool[{i}]: non-rare Weight {e.Weight} will be clamped to 25–100 when rolling.", ModManager.LogLevel.Warn);
        }

        if (rare > 1)
        {
            error = "ExploreLandblockWeightedPool: at most one entry may have Rare=true";
            return false;
        }

        return true;
    }

    static bool ValidateKillWeightedPool(ParchmentTemplateSettings t, out string? error)
    {
        error = null;
        var list = t.KillTargetWeightedPool;
        if (list is not { Count: > 0 })
            return true;

        var rare = 0;
        for (var i = 0; i < list.Count; i++)
        {
            var e = list[i];
            if (e.CreatureWcid == 0)
            {
                error = $"KillTargetWeightedPool[{i}]: CreatureWcid must be non-zero";
                return false;
            }

            if (e.Rare)
                rare++;
            else if (e.Weight != 0 && (e.Weight < 25 || e.Weight > 100))
                ModManager.Log($"[Loremaster] KillTargetWeightedPool[{i}]: non-rare Weight {e.Weight} will be clamped to 25–100 when rolling.", ModManager.LogLevel.Warn);
        }

        if (rare > 1)
        {
            error = "KillTargetWeightedPool: at most one entry may have Rare=true";
            return false;
        }

        return true;
    }

    static bool ValidateFetchWeightedPool(ParchmentTemplateSettings t, out string? error)
    {
        error = null;
        var list = t.FetchItemWeightedPool;
        if (list is not { Count: > 0 })
            return true;

        var rare = 0;
        for (var i = 0; i < list.Count; i++)
        {
            var e = list[i];
            if (e.Wcid == 0)
            {
                error = $"FetchItemWeightedPool[{i}]: Wcid must be non-zero";
                return false;
            }

            if (e.StackMin < 1 || e.StackMax < 1 || e.StackMin > e.StackMax)
            {
                error = $"FetchItemWeightedPool[{i}]: need 1 <= StackMin <= StackMax";
                return false;
            }

            if (e.Rare)
                rare++;
            else if (e.Weight != 0 && (e.Weight < 25 || e.Weight > 100))
                ModManager.Log($"[Loremaster] FetchItemWeightedPool[{i}]: non-rare Weight {e.Weight} will be clamped to 25–100 when rolling.", ModManager.LogLevel.Warn);
        }

        if (rare > 1)
        {
            error = "FetchItemWeightedPool: at most one entry may have Rare=true";
            return false;
        }

        return true;
    }

    static string DefaultStartText(Player player, ParchmentTemplateSettings t)
    {
        uint killWcid = ParchmentContractRuntime.GetResolvedKillTargetWcid(player, t);
        var needKills = ParchmentContractRuntime.GetEffectiveKillCount(player, t);
        return NormalizeKind(t.Kind) switch
        {
            "kill" => killWcid != 0
                ? $"[{t.Tier}] Hunt: slay {needKills}× {ParchmentDisplayNames.WeenieName(killWcid)} (anywhere that counts)."
                : $"[{t.Tier}] Hunt: slay {needKills} creature(s) that grant you kill credit.",
            "explore" =>
                $"[{t.Tier}] Explore: go to {ParchmentExploreGuidance.BuildOneLine(player, t)}. Use a Town Crier while standing there to finish.",
            "fetch" =>
                FetchStartLine(player, t),
            _ => "Parchment quest started."
        };
    }

    static string FetchStartLine(Player player, ParchmentTemplateSettings t)
    {
        var (wcid, cnt) = ParchmentContractRuntime.GetResolvedFetch(player, t);
        var name = ParchmentDisplayNames.WeenieName(wcid);
        return cnt <= 1
            ? $"[{t.Tier}] Fetch: bring 1× {name} to any configured Town Crier (they take the item)."
            : $"[{t.Tier}] Fetch: bring {cnt}× {name} to any configured Town Crier (they take the stack).";
    }

    // Completes the player's single active parchment (Explore/Fetch via Town Crier, Kill via kill count).
    internal static void CompleteParchment(Player player)
    {
        var template = ParchmentActiveState.GetActiveTemplate(player);
        if (template is null)
        {
            ParchmentActiveState.Clear(player);
            return;
        }

        if (player.QuestManager is not null && !string.IsNullOrWhiteSpace(template.CompletionQuestStamp))
            player.QuestManager.Update(template.CompletionQuestStamp);

        player.UpdateQuestPoints();

        var questKey = string.IsNullOrWhiteSpace(template.CompletionQuestStamp)
            ? $"parchment_{template.Tier}"
            : template.CompletionQuestStamp;

        ParchmentQuestRewards.GrantTierXpAndRepeatLoot(player, template);

        var msg = template.CompleteMessage;
        if (string.IsNullOrWhiteSpace(msg))
            msg = "You complete the parchment quest.";
        player.SendMessage(msg);

        ParchmentActiveState.Clear(player);
    }

    static bool TryConsumeCooldownGate(Player player, BarkeeperParchmentsSettings cfg)
    {
        if (cfg.CooldownSeconds <= 0)
            return true;

        var now = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
        var until = player.GetProperty(LMParchmentInt.CooldownUntilUnix) ?? 0;
        if (now < until)
        {
            var left = until - now;
            player.SendMessage($"You must wait {left} more second(s) before starting another parchment.");
            return false;
        }

        return true;
    }

    static void TouchCooldown(Player player, BarkeeperParchmentsSettings cfg)
    {
        if (cfg.CooldownSeconds <= 0)
            return;

        var now = DateTimeOffset.UtcNow.ToUnixTimeSeconds();
        player.SetProperty(LMParchmentInt.CooldownUntilUnix, unchecked((int)(now + cfg.CooldownSeconds)));
    }

    // Call only after the parchment item is consumed from inventory.
    internal static void CommitAfterConsume(Player player, int templateRow0Based)
    {
        var cfg = PatchClass.Settings?.BarkeeperParchments;
        if (cfg is null || templateRow0Based < 0 || templateRow0Based >= cfg.ParchmentTemplates.Count)
            return;

        var template = cfg.ParchmentTemplates[templateRow0Based];
        var templateIndex1Based = templateRow0Based + 1;
        ParchmentActiveState.Set(player, templateIndex1Based, 0);
        ParchmentContractRuntime.ApplyPoolRollsOnCommit(player, template, NormalizeKind(template.Kind));
        TouchCooldown(player, cfg);

        var start = string.IsNullOrWhiteSpace(template.StartMessage)
            ? DefaultStartText(player, template)
            : template.StartMessage!;
        player.SendMessage(start);
    }

    // Returns true if vanilla item use should be skipped (handled or hard-failed for this parchment row).
    internal static bool TryParchmentStarterUse(Player player, WorldObject item)
    {
        if (PatchClass.Settings?.BarkeeperParchments?.Enable != true)
            return false;

        if (player is null || item is null)
            return false;

        var row = FindMatchingTemplateRow(item);
        if (row < 0)
            return false;

        var cfg = PatchClass.Settings.BarkeeperParchments;
        var template = cfg.ParchmentTemplates[row];
        if (!ValidateTemplate(template, out var verr))
        {
            ModManager.Log($"[Loremaster] Parchment template #{row + 1} skipped: {verr}", ModManager.LogLevel.Warn);
            return true;
        }

        if (!TryConsumeCooldownGate(player, cfg))
            return true;

        if (ParchmentActiveState.GetTemplateIndex1Based(player) > 0)
        {
            player.SendMessage("You already have an active parchment contract. Finish or abandon it first.");
            return true;
        }

        if (player.FindObject(item.Guid.Full, Player.SearchLocations.MyInventory) is null)
        {
            player.SendTransientError($"Cannot find the {item.Name}");
            return true;
        }

        if (!player.TryConsumeFromInventoryWithNetworking(item, 1))
        {
            player.SendMessage("Failed to consume the parchment.");
            return true;
        }

        CommitAfterConsume(player, row);
        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Gem), nameof(Gem.UseGem), new Type[] { typeof(Player) })]
    public static bool PreUseParchmentGem(Player player, Gem __instance) =>
        !TryParchmentStarterUse(player, __instance);

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Book), nameof(Book.ActOnUse), new Type[] { typeof(WorldObject) })]
    public static bool PreUseParchmentBook(WorldObject worldObject, Book __instance)
    {
        if (worldObject is not Player player)
            return true;

        return !TryParchmentStarterUse(player, __instance);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.ActOnUse), new Type[] { typeof(WorldObject) })]
    public static void PostCreatureActOnUse(WorldObject activator, Creature __instance)
    {
        if (activator is not Player player)
            return;

        if (__instance is Vendor)
            return;

        var cfg = PatchClass.Settings?.BarkeeperParchments;
        if (cfg?.Enable != true || cfg.TownCrierWeenieClassIds is null || cfg.TownCrierWeenieClassIds.Count == 0)
            return;

        if (!cfg.TownCrierWeenieClassIds.Contains(__instance.WeenieClassId))
            return;

        ParchmentTownCrier.TryTurnIn(player);
    }

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Creature), nameof(Creature.Die), new Type[] { typeof(DamageHistoryInfo), typeof(DamageHistoryInfo) })]
    public static void PostDieParchmentKill(DamageHistoryInfo lastDamager, DamageHistoryInfo topDamager, Creature __instance)
    {
        if (PatchClass.Settings?.BarkeeperParchments?.Enable != true)
            return;

        if (__instance is Player)
            return;

        Player? killer = null;
        if (lastDamager is not null && lastDamager.IsPlayer)
            killer = lastDamager.TryGetPetOwnerOrAttacker() as Player;

        if (killer is null)
            return;

        var tIdx = ParchmentActiveState.GetTemplateIndex1Based(killer);
        if (tIdx <= 0)
            return;

        var template = ParchmentActiveState.ResolveTemplate(tIdx);
        if (template is null)
        {
            ParchmentActiveState.Clear(killer);
            return;
        }

        if (NormalizeKind(template.Kind) != "kill")
            return;

        uint needWcid = ParchmentContractRuntime.GetResolvedKillTargetWcid(killer, template);
        if (needWcid != 0 && __instance.WeenieClassId != needWcid)
            return;

        var prog = ParchmentActiveState.GetProgress(killer) + 1;
        killer.SetProperty(LMParchmentInt.Progress, prog);

        var need = ParchmentContractRuntime.GetEffectiveKillCount(killer, template);
        if (prog >= need)
            CompleteParchment(killer);
        else
            killer.SendMessage($"Parchment: {prog} / {need} kills.");
    }
}
