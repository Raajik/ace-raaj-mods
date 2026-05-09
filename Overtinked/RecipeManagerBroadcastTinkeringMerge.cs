namespace Overtinked;

// When MergeSalvageTinkerEffectIntoBroadcast + ShowPlayerSalvageMessage, append Overtinked suffix to the tinkering broadcast (single local line).
[HarmonyPatchCategory(Settings.RecipeManagerCategory)]
internal static class RecipeManagerBroadcastTinkeringMerge
{
    [HarmonyPrefix]
    [HarmonyPatch(typeof(RecipeManager), nameof(RecipeManager.BroadcastTinkering))]
    public static bool PreBroadcastTinkering(Player player, WorldObject tool, WorldObject target, double chance, bool success)
    {
        if (!success)
        {
            TinkerBroadcastSuffix.ClearPending();
            return true;
        }

        Settings? s = PatchClass.CurrentSettings;
        if (s == null || !s.MergeSalvageTinkerEffectIntoBroadcast || !s.ShowPlayerSalvageMessage)
            return true;

        if (!TinkerBroadcastSuffix.TryConsumeAndClear(out string? suffix) || string.IsNullOrWhiteSpace(suffix))
            return true;

        if (player == null || tool == null || target == null)
            return true;

        string sourceName = Regex.Replace(tool.NameWithMaterial, @" \(\d+\)$", "");
        string inscription = (target.Inscription != null && target.ScribeName != null) ? $" inscribed by {target.ScribeName}" : "";
        string msg =
            $"{player.Name} successfully applies the {sourceName} (workmanship {(tool.Workmanship ?? 0):#.00}) to the {target.NameWithMaterial}{inscription}. - {suffix}";

        player.EnqueueBroadcast(new GameMessageSystemChat(msg, ChatMessageType.Craft), WorldObject.LocalBroadcastRange, ChatMessageType.Craft);
        return false;
    }
}
