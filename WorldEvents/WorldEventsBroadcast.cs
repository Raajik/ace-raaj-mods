namespace WorldEvents;

// Shared broadcast helper for all WorldEvents announcements.
// Players can opt out with /events off; first send after server start includes the hint.
// ChatMessageType.Channel — ACE labels this light pink (admin/audit channel color); rare on normal gameplay lines.
internal static class WorldEventsBroadcast
{
    internal const ChatMessageType EventAnnouncementType = ChatMessageType.Channel;
    // PropertyBool slot for per-character opt-out (WorldEvents range: 12000+).
    internal const FakeBool EventAnnouncementsOptOut = (FakeBool)12001;

    // Hint is shown once per server session (resets on restart — intentional).
    static bool _hintSent;
    static readonly object _hintLock = new();

    internal static void Send(string message)
    {
        bool sendHint = false;
        lock (_hintLock)
        {
            if (!_hintSent)
            {
                _hintSent = true;
                sendHint = true;
            }
        }

        var hint = sendHint ? "  (type \"/events off\" to stop announcements)" : null;

        foreach (var player in PlayerManager.GetAllOnline())
        {
            if (player.GetProperty(EventAnnouncementsOptOut) == true) continue;
            player.SendMessage(message, EventAnnouncementType);
            if (hint != null)
                player.SendMessage(hint, EventAnnouncementType);
        }
    }

    // Called from /events on|off command handler.
    internal static void SetOptOut(Player player, bool optOut)
    {
        if (optOut)
        {
            player.SetProperty(EventAnnouncementsOptOut, true);
            player.SendMessage("[WorldEvents] Event announcements disabled. Type \"/events on\" to re-enable.");
        }
        else
        {
            player.RemoveProperty(EventAnnouncementsOptOut);
            player.SendMessage("[WorldEvents] Event announcements enabled.");
        }
    }
}
