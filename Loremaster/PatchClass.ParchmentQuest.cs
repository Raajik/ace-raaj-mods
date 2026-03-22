namespace Loremaster;

public partial class PatchClass
{
    internal static void RefreshParchmentQuestPatches()
    {
        const string category = "ParchmentQuestHooks";
        var harmony = Mod.Instance?.Harmony;
        if (harmony is null)
            return;

        try
        {
            harmony.UnpatchCategory(category);
        }
        catch
        {
        }

        var cfg = PatchClass.Settings?.BarkeeperParchments;
        if (cfg?.Enable != true || cfg.ParchmentTemplates is not { Count: > 0 })
            return;

        try
        {
            harmony.PatchCategory(category);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Loremaster] ParchmentQuestHooks patch failed: {ex.Message}", ModManager.LogLevel.Error);
        }
    }

    [CommandHandler("lmparchment", AccessLevel.Player, CommandHandlerFlag.RequiresWorld,
        "Barkeeper parchment quests: list, abandon. Explore/Fetch: use a Town Crier. Type /lmparchment help.")]
    public static void HandleLmparchment(Session session, params string[] parameters)
    {
        var player = session.Player;
        if (player is null)
            return;

        if (PatchClass.Settings?.BarkeeperParchments?.Enable != true)
        {
            player.SendMessage("[Loremaster] Barkeeper parchment quests are disabled.");
            return;
        }

        if (parameters.Length == 0)
        {
            SendParchmentList(player);
            return;
        }

        var cmd = parameters[0].ToLowerInvariant();
        switch (cmd)
        {
            case "help":
                player.SendMessage(
                    "[Loremaster] /lmparchment\n" +
                    "  (no args) or list — your active parchment contract (one at a time)\n" +
                    "  abandon — clear your active contract\n" +
                    "  Start: use a configured parchment Gem or Book (see template ParchmentActivation)\n" +
                    "  Explore/Fetch completion: use a configured Town Crier NPC\n" +
                    "  Kill contracts complete automatically when kill count is met\n" +
                    "  help — this text");
                return;

            case "list":
                SendParchmentList(player);
                return;

            case "abandon":
                HandleParchmentAbandon(player);
                return;

            default:
                player.SendMessage($"Unknown subcommand '{parameters[0]}'. Type /lmparchment help.");
                return;
        }
    }

    static void HandleParchmentAbandon(Player player)
    {
        if (ParchmentActiveState.GetTemplateIndex1Based(player) == 0)
        {
            player.SendMessage("You have no active parchment quest.");
            return;
        }

        ParchmentActiveState.Clear(player);
        player.SendMessage("You abandon your active parchment quest.");
    }

    static void SendParchmentList(Player player)
    {
        var tIdx = ParchmentActiveState.GetTemplateIndex1Based(player);
        if (tIdx <= 0)
        {
            player.SendMessage(
                "No active parchment quest. Buy a contract from a configured bartender or use a parchment gem or book.");
            return;
        }

        var t = ParchmentActiveState.ResolveTemplate(tIdx);
        if (t is null)
        {
            ParchmentActiveState.Clear(player);
            player.SendMessage("Your parchment state was invalid and has been cleared.");
            return;
        }

        var prog = ParchmentActiveState.GetProgress(player);
        player.SendMessage(DescribeParchmentLine(player, t, prog));
    }

    static string DescribeParchmentLine(Player player, ParchmentTemplateSettings t, int prog)
    {
        if (string.Equals(t.Kind, "Kill", StringComparison.OrdinalIgnoreCase))
        {
            uint wcid = ParchmentContractRuntime.GetResolvedKillTargetWcid(player, t);
            if (wcid != 0)
                return $"{t.Tier} Kill: {prog} / {t.KillCount} kills (WCID {wcid}).";
            return $"{t.Tier} Kill: {prog} / {t.KillCount} kills.";
        }

        if (string.Equals(t.Kind, "Explore", StringComparison.OrdinalIgnoreCase))
            return $"{t.Tier} Explore → {ParchmentExploreGuidance.Build(player, t)} — report to a Town Crier at the destination.";
        if (string.Equals(t.Kind, "Fetch", StringComparison.OrdinalIgnoreCase))
            return $"{t.Tier} Fetch: need WCID {t.FetchItemWcid} in pack, then use a Town Crier.";
        return $"{t.Tier} (unknown kind)";
    }
}
