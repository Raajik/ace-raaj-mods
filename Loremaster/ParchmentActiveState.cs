namespace Loremaster;

internal static class ParchmentActiveState
{
    internal static int GetTemplateIndex1Based(Player player) =>
        player.GetProperty(LMParchmentInt.ActiveTemplate) ?? 0;

    internal static int GetProgress(Player player) =>
        player.GetProperty(LMParchmentInt.Progress) ?? 0;

    internal static void Set(Player player, int templateIndex1Based, int progress)
    {
        player.SetProperty(LMParchmentInt.ActiveTemplate, templateIndex1Based);
        player.SetProperty(LMParchmentInt.Progress, progress);
    }

    internal static void Clear(Player player)
    {
        Set(player, 0, 0);
        player.RemoveProperty(LMParchmentInt.ExploreTargetLandblockRaw);
        player.RemoveProperty(LMParchmentInt.RuntimeKillTargetWcid);
    }

    internal static ParchmentTemplateSettings? ResolveTemplate(int templateIndex1Based)
    {
        var list = PatchClass.Settings?.BarkeeperParchments?.ParchmentTemplates;
        if (list is null || templateIndex1Based < 1 || templateIndex1Based > list.Count)
            return null;
        return list[templateIndex1Based - 1];
    }

    internal static ParchmentTemplateSettings? GetActiveTemplate(Player player)
    {
        var idx = GetTemplateIndex1Based(player);
        return idx <= 0 ? null : ResolveTemplate(idx);
    }
}
