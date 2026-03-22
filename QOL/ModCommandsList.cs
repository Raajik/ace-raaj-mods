namespace QOL;

public static class ModCommandsList
{
    const int MaxLineLength = 220;

    public static void SendList(Player player, Session session)
    {
        var coreAssembly = typeof(CommandManager).Assembly;
        var entries = CommandManager.GetCommands()
            .Where(info => info is not null && IsModCommand(info, coreAssembly))
            .Where(info => CanUseFromPlayerChat(session, info))
            .Select(FormatLine)
            .OrderBy(t => t.SortKey, StringComparer.OrdinalIgnoreCase)
            .ToList();

        if (entries.Count == 0)
        {
            player.SendMessage("No mod chat commands are available for you right now.", ChatMessageType.System);
            return;
        }

        player.SendMessage($"Mod commands ({entries.Count}):", ChatMessageType.System);
        foreach (var entry in entries)
        {
            foreach (var line in WrapLines(entry.Text))
                player.SendMessage(line, ChatMessageType.System);
        }
    }

    static bool IsModCommand(CommandHandlerInfo info, Assembly coreAssembly)
    {
        if (info.Handler is not Delegate del)
            return false;

        var method = del.Method;
        if (method.DeclaringType is null)
            return false;

        return method.DeclaringType.Assembly != coreAssembly;
    }

    // Mirrors CommandManager.GetCommandHandler session checks, without ParameterCount or sudo.
    static bool CanUseFromPlayerChat(Session session, CommandHandlerInfo info)
    {
        if (session?.Player is not Player player)
            return false;

        var attr = info.Attribute;
        if (attr is null)
            return false;

        if ((attr.Flags & CommandHandlerFlag.ConsoleInvoke) != 0)
            return false;

        if ((attr.Flags & CommandHandlerFlag.RequiresWorld) != 0 && player.CurrentLandblock is null)
            return false;

        var isAdvocate = player.IsAdvocate;
        var isSentinel = player.IsSentinel;
        var isEnvoy = player.IsEnvoy;
        var isArch = player.IsArch;
        var isAdmin = player.IsAdmin;

        if (attr.Access == AccessLevel.Advocate && !(isAdvocate || isSentinel || isEnvoy || isArch || isAdmin)
            || attr.Access == AccessLevel.Sentinel && !(isSentinel || isEnvoy || isArch || isAdmin)
            || attr.Access == AccessLevel.Envoy && !(isEnvoy || isArch || isAdmin)
            || attr.Access == AccessLevel.Developer && !(isArch || isAdmin)
            || attr.Access == AccessLevel.Admin && !isAdmin)
            return false;

        return true;
    }

    static (string SortKey, string Text) FormatLine(CommandHandlerInfo info)
    {
        var del = (Delegate)info.Handler!;
        var asmName = del.Method.DeclaringType!.Assembly.GetName().Name ?? "?";
        var cmd = info.Attribute!.Command;
        var desc = info.Attribute.Description?.Trim();
        if (string.IsNullOrEmpty(desc))
            desc = info.Attribute.Usage?.Trim();
        if (string.IsNullOrEmpty(desc))
            desc = "(no description)";

        desc = desc.Replace("\r\n", " ", StringComparison.Ordinal).Replace("\n", " ", StringComparison.Ordinal);
        var text = $"[{asmName}] /{cmd} — {desc}";
        return (cmd, text);
    }

    static IEnumerable<string> WrapLines(string text)
    {
        if (text.Length <= MaxLineLength)
        {
            yield return text;
            yield break;
        }

        for (var i = 0; i < text.Length; i += MaxLineLength)
        {
            var len = Math.Min(MaxLineLength, text.Length - i);
            var chunk = text.Substring(i, len);
            yield return i == 0 ? chunk : "  " + chunk;
        }
    }
}
