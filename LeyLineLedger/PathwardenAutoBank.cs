using ACE.Entity.Enum.Properties;
using ACE.Server.WorldObjects;

namespace LeyLineLedger;

/// <summary>
/// Intercepts Pathwarden NPC non-salvage rewards (e.g. Sturdy Iron Key)
/// and deposits them directly to bank. Quest salvage bags (Granite/Steel)
/// are now handled by the unified <see cref="QuestSalvageAutoBank"> system.
/// </summary>
public static class PathwardenAutoBank
{
    // Pathwarden NPC WCIDs (4 racial variants, all same emote structure)
    static readonly HashSet<uint> PathwardenWcids = new()
    {
        33596,  // Thorolf (Aluvian)
        33614,  // Koro Ijida (Sho)  
        33615,  // Thierra Molanti (Gharu'ndim)
        33616   // Qanarabint Qolosh (Empyrean/Viamontian)
    };

    /// <summary>
    /// Called from Player.GiveFromEmote prefix. Returns true if handled (skip original).
    /// </summary>
    public static bool TryInterceptReward(Player player, WorldObject emoter, uint weenieClassId, int amount)
    {
        if (player is null || emoter is null)
            return false;

        var settings = PatchClass.Settings;
        if (settings?.EnablePathwardenAutoBank != true)
            return false;

        if (!PathwardenWcids.Contains(emoter.WeenieClassId))
            return false;

        // Sturdy Iron Key (6876) — deposit to item bank
        if (weenieClassId == 6876)
            return HandleKey(player, amount);

        return false;
    }

    static bool HandleKey(Player player, int amount)
    {
        var settings = PatchClass.Settings;
        if (settings?.Items is null)
            return false;

        var keyItem = settings.Items.FirstOrDefault(i => i.Id == 6876);
        if (keyItem is null)
        {
            ModManager.Log($"[LeyLineLedger] Pathwarden reward: Sturdy Iron Key (6876) not in Items list, falling back to inventory.", ModManager.LogLevel.Info);
            return false;
        }

        int bankProp = keyItem.Prop;
        long current = player.GetProperty((PropertyInt64)bankProp) ?? 0;
        player.SetProperty((PropertyInt64)bankProp, current + amount);

        if (amount == 1)
            player.SendMessage("Pathwarden reward: Sturdy Iron Key deposited to bank.");
        else
            player.SendMessage($"Pathwarden reward: {amount} Sturdy Iron Keys deposited to bank.");

        return true;
    }
}
