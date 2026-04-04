
namespace LeyLineLedger;

[HarmonyPatch]
public partial class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    static readonly bool UsePrettyBankFormatting = true;

    // Debit/DirectDeposit must patch from Start() as well as OnWorldOpen(): if the mod loads after the world
    // is already up, OnWorldOpen never runs and vendors still use vanilla CoinValue (inventory only) while
    // /bank reads the banked PropertyInt64 directly.
    public override void Start()
    {
        base.Start();
        ApplyConditionalHarmonyCategories();
    }

    public override async Task OnWorldOpen()
    {
        ApplyConditionalHarmonyCategories();
    }

    void ApplyConditionalHarmonyCategories()
    {
        try
        {
            ModC.Harmony.UnpatchCategory(nameof(Debit));
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Unpatch Debit before re-apply: {ex.Message}", ModManager.LogLevel.Warn);
        }

        try
        {
            ModC.Harmony.UnpatchCategory(nameof(DirectDeposit));
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Unpatch DirectDeposit before re-apply: {ex.Message}", ModManager.LogLevel.Warn);
        }

        try
        {
            ModC.Harmony.UnpatchCategory(nameof(DeathBankPenalty));
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Unpatch DeathBankPenalty before re-apply: {ex.Message}", ModManager.LogLevel.Warn);
        }

        try
        {
            Settings = SettingsContainer.Settings ?? new Settings();
        }
        catch
        {
            Settings ??= new Settings();
        }

        if (Settings.VendorsUseBank)
            ModC.Harmony.PatchCategory(nameof(Debit));

        if (Settings.DirectDeposit)
            ModC.Harmony.PatchCategory(nameof(DirectDeposit));

        if (Settings.DeathBankPyrealPercent > 0)
            ModC.Harmony.PatchCategory(nameof(DeathBankPenalty));
    }

    public override void Stop()
    {
        try
        {
            ModC.Harmony.UnpatchCategory(nameof(Debit));
        }
        catch
        {
        }

        try
        {
            ModC.Harmony.UnpatchCategory(nameof(DirectDeposit));
        }
        catch
        {
        }

        try
        {
            ModC.Harmony.UnpatchCategory(nameof(DeathBankPenalty));
        }
        catch
        {
        }

        base.Stop();
    }

    static string Currencies => string.Join(", ", Settings.Currencies.Select(x => x.Name));
    static string Commands => string.Join(", ", Enum.GetNames<Transaction>());

    [CommandHandler("bank", AccessLevel.Player, CommandHandlerFlag.RequiresWorld)]
    [CommandHandler("b", AccessLevel.Player, CommandHandlerFlag.RequiresWorld)]
    public static void HandleBank(Session session, params string[] parameters)
    {
        var player = session.Player;
        if (player is null)
            return;

        //No args or explicit list -> show summary
        if (parameters.Length == 0 || parameters[0].Equals("list", StringComparison.OrdinalIgnoreCase))
        {
            var cash = player.GetBanked(Settings.CashProperty);
            var lum = player.GetBanked(Settings.LuminanceProperty);

            var mmdItem = Settings.Items.FirstOrDefault(x => x.Id == 20630);
            var mmdCount = mmdItem is not null ? player.GetBanked(mmdItem.Prop) : 0;

            var bankItems = Settings.Items.Where(x => x.Id != 20630).ToList();

            var sbSummary = new StringBuilder();
            if (UsePrettyBankFormatting)
            {
                sbSummary.AppendLine("==== Bank Summary ====");
            }
            else
            {
                sbSummary.Append("Bank summary:");
            }

            sbSummary.Append("\nPyreals: ");
            sbSummary.Append($"{cash:N0}");
            if (mmdCount > 0)
                sbSummary.Append($" ({mmdCount:N0} MMD)");

            sbSummary.Append($"\nLuminance: {lum:N0}");

            if (bankItems.Count > 0)
            {
                sbSummary.Append("\nItems:");
                foreach (var item in bankItems)
                    sbSummary.Append($"\n{item.Name}: {player.GetBanked(item.Prop)} banked, {player.GetNumInventoryItemsOfWCID(item.Id)} held");
            }

            player.SendMessage($"{sbSummary}");
            return;
        }

        var verbToken = parameters[0];

        //Deposit shorthand: /bank deposit or /b d
        if (verbToken.Equals("deposit", StringComparison.OrdinalIgnoreCase) ||
            verbToken.Equals("d", StringComparison.OrdinalIgnoreCase))
        {
            BankExtensions.DepositAllCash(session);
            BankExtensions.DepositAllLuminance(session);

            return;
        }

        //Withdraw shorthand: /bank withdraw pyreals <amount> or /b w p <amount>; luminance gem: withdraw luminance <amount> or w l <amount>
        if (verbToken.Equals("withdraw", StringComparison.OrdinalIgnoreCase) ||
            verbToken.Equals("w", StringComparison.OrdinalIgnoreCase))
        {
            // /bank withdraw all  or  /b w a  -> withdraw all pyreals
            if (parameters.Length == 2 &&
                (parameters[1].Equals("all", StringComparison.OrdinalIgnoreCase) ||
                 parameters[1].Equals("a", StringComparison.OrdinalIgnoreCase)))
            {
                var total = player.GetBanked(Settings.CashProperty);
                if (total <= 0)
                {
                    player.SendMessage("You have no pyreals banked to withdraw.");
                    return;
                }

                BankExtensions.WithdrawPyreals(session, total);
                return;
            }

            if (parameters.Length < 3)
            {
                player.SendMessage("Usage: /bank withdraw pyreals <amount> | withdraw luminance <amount> | shorthand /b w p <amt> | /b w l <amt>");
                return;
            }

            var currencyToken = parameters[1];
            if (currencyToken.Equals("luminance", StringComparison.OrdinalIgnoreCase) ||
                currencyToken.Equals("l", StringComparison.OrdinalIgnoreCase))
            {
                BankExtensions.WithdrawLuminanceGem(session, parameters[2]);
                return;
            }

            if (!currencyToken.Equals("pyreals", StringComparison.OrdinalIgnoreCase) &&
                !currencyToken.Equals("p", StringComparison.OrdinalIgnoreCase))
            {
                player.SendMessage("Usage: /bank withdraw pyreals <amount> | withdraw luminance <amount> | shorthand /b w p <amt> | /b w l <amt>");
                return;
            }

            var amountToken = parameters[2];

            // /bank withdraw pyreals all  or  /b w p a  -> withdraw all pyreals
            if (amountToken.Equals("all", StringComparison.OrdinalIgnoreCase) ||
                amountToken.Equals("a", StringComparison.OrdinalIgnoreCase))
            {
                var total = player.GetBanked(Settings.CashProperty);
                if (total <= 0)
                {
                    player.SendMessage("You have no pyreals banked to withdraw.");
                    return;
                }

                BankExtensions.WithdrawPyreals(session, total);
                return;
            }

            //Forward to withdraw logic for pyreals (uses Settings.Currencies entry named \"Pyreal\")
            BankExtensions.WithdrawCurrency(session, "Pyreal", amountToken);
            return;
        }

        //Transfer: /bank transfer pyreals <amount> <targetName> or /b t p <amount> <targetName>
        if (verbToken.Equals("transfer", StringComparison.OrdinalIgnoreCase) ||
            verbToken.Equals("t", StringComparison.OrdinalIgnoreCase))
        {
            if (parameters.Length < 4)
            {
                player.SendMessage("Usage: /bank transfer pyreals <amount> <character name>");
                return;
            }

            var currencyToken = parameters[1];
            if (!currencyToken.Equals("pyreals", StringComparison.OrdinalIgnoreCase) &&
                !currencyToken.Equals("p", StringComparison.OrdinalIgnoreCase))
            {
                player.SendMessage("Usage: /bank transfer pyreals <amount> <character name>");
                return;
            }

            var amountToken = parameters[2];
            var targetName = string.Join(" ", parameters.Skip(3)).Trim();
            if (string.IsNullOrWhiteSpace(targetName))
            {
                player.SendMessage("Specify the target character name.");
                return;
            }

            BankExtensions.TransferPyreals(session, amountToken, targetName);
            return;
        }

        //Fallback to legacy item-based List/Give/Take handling
        if (!parameters.TryParseCommand(out var verb, out var name, out var amount, out var wildcardAmount))
        {
            player.SendMessage("Usage: /bank [list | deposit | withdraw pyreals <amount> | withdraw luminance <amount> | transfer ...]");
            return;
        }

        if (verb == Transaction.Give || verb == Transaction.Take)
        {
            if (string.IsNullOrWhiteSpace(name))
            {
                player.SendMessage("Specify the name of the item to transact with.");
                return;
            }

            var query = int.TryParse(name, out var wcid) ?
                Settings.Items.Where(x => x.Id == wcid) :
                Settings.Items.Where(x => x.Name.StartsWith(name, StringComparison.OrdinalIgnoreCase));

            var item = query.FirstOrDefault();
            if (item is null)
            {
                player.SendMessage($"Unable to find matching item: {name}");
                return;
            }

            if (wildcardAmount || Settings.ExcessSetToMax)
            {
                var held = verb == Transaction.Give ? player.GetNumInventoryItemsOfWCID(item.Id) : (int)player.GetBanked(item.Prop);
                amount = Math.Min(amount, held);
            }

            if (verb == Transaction.Take)
                HandleWithdraw(player, item, amount);
            else
                HandleDeposit(player, item, amount);

            return;
        }

        if (verb == Transaction.List)
        {
            var bankItems = Settings.Items.Where(x => x.Id != 20630).ToList();

            if (bankItems.Count == 0)
            {
                player.SendMessage("No banked items are configured.");
                return;
            }

            var sb = new StringBuilder();
            if (UsePrettyBankFormatting)
            {
                sb.AppendLine("==== Banked Items ====");
            }
            else
            {
                sb.Append("\nBanked items:");
            }

            foreach (var item in bankItems)
                sb.Append($"\n{item.Name}:\n  {player.GetBanked(item.Prop)} banked, {player.GetNumInventoryItemsOfWCID(item.Id)} held");

            player.SendMessage($"{sb}");
        }
    }

    //Take items from the vault
    public static void HandleWithdraw(Player player, BankItem item, int amount)
    {
        var banked = player.GetBanked(item.Prop);

        if (banked < amount)
        {
            player.SendMessage($"Unable to withdraw {amount}.  You have {banked} {item.Name}");
            return;
        }

        //See if you can create items using the /ci approach
        if (player.TryCreateItems($"{item.Id} {amount}"))
        {
            player.IncBanked(item.Prop, -amount);
            player.SendMessage($"Withdrew {amount} {item.Name}. {player.GetBanked(item.Prop)} banked, {player.GetNumInventoryItemsOfWCID(item.Id)} held");
        }
    }

    public static void HandleDeposit(Player player, BankItem item, int amount)
    {
        if (player.TryTakeItems(item.Id, amount))
        {
            player.IncBanked(item.Prop, amount);
            player.SendMessage($"Deposited {amount:N0} {item.Name}. {player.GetBanked(item.Prop)} banked, {player.GetNumInventoryItemsOfWCID(item.Id):N0} held");
            return;
        }

        player.SendMessage($"Unable to deposit {amount:N0}.  You have {player.GetNumInventoryItemsOfWCID(item.Id):N0} {item.Name}");
    }
}

public static class BankExtensions
{
    public static long GetCash(this Player player) => player.GetBanked(PatchClass.Settings.CashProperty);
    public static void IncCash(this Player player, long amount)
    {
        player.IncBanked(PatchClass.Settings.CashProperty, amount);
        player.UpdateCoinValue();
    }

    public static long GetBanked(this Player player, int prop) =>
        player.GetProperty((PropertyInt64)prop) ?? 0;
    public static void IncBanked(this Player player, int prop, long amount) =>
        player.SetProperty((PropertyInt64)prop, player.GetBanked(prop) + amount);

    public static void DepositAllCash(Session session)
    {
        var player = session.Player;
        if (player is null)
            return;

        var cashItems = player.AllItems().Where(x => x.WeenieClassId == Player.coinStackWcid || x.WeenieClassName.StartsWith("tradenote"));
        long total = 0;
        var itemCount = 0;

        foreach (var item in cashItems)
        {
            total += item.Value ?? 0;
            itemCount++;
        }

        foreach (var item in cashItems)
        {
            if (!player.TryRemoveFromInventoryWithNetworking(item.Guid, out var consumed, Player.RemoveFromInventoryAction.ConsumeItem))
            {
                if (consumed != null)
                {
                    total -= consumed.Value ?? 0;
                    itemCount--;
                }
            }
        }

        if (itemCount <= 0 || total <= 0)
        {
            player.SendMessage("You have no currency items to deposit.");
            return;
        }

        player.IncCash(total);
        player.SendMessage($"Deposited {itemCount} currency items for {total:N0}.  You have {player.GetBanked(PatchClass.Settings.CashProperty):N0}.");
    }

    public static void DepositAllLuminance(Session session)
    {
        var player = session.Player;
        if (player is null)
            return;

        var available = player.AvailableLuminance ?? 0;
        if (available <= 0)
        {
            player.SendMessage("You have no luminance to store.");
            return;
        }

        if (player.SpendLuminance(available))
        {
            long lum = available > long.MaxValue ? long.MaxValue : (long)available;
            player.IncBanked(PatchClass.Settings.LuminanceProperty, lum);
            player.SendMessage($"Stored {available} luminance.  You now have {player.GetBanked(PatchClass.Settings.LuminanceProperty):N0}.");
        }
    }

    public static void TransferPyreals(Session session, string amountToken, string targetName)
    {
        var player = session.Player;
        if (player is null)
            return;

        long amount;
        if (amountToken.Equals("all", StringComparison.OrdinalIgnoreCase) ||
            amountToken.Equals("a", StringComparison.OrdinalIgnoreCase))
        {
            amount = player.GetBanked(PatchClass.Settings.CashProperty);
            if (amount <= 0)
            {
                player.SendMessage("You have no pyreals banked to transfer.");
                return;
            }
        }
        else if (!long.TryParse(amountToken, out amount) || amount <= 0)
        {
            player.SendMessage("Specify a positive amount or \"all\" to transfer.");
            return;
        }

        long stored = player.GetBanked(PatchClass.Settings.CashProperty);
        if (stored < amount)
        {
            player.SendMessage($"Insufficient funds: {amount:N0} > {stored:N0}");
            return;
        }

        var target = PlayerManager.GetOnlinePlayer(targetName);
        if (target is not null)
        {
            if (target.Guid == player.Guid)
            {
                player.SendMessage("You cannot transfer to yourself.");
                return;
            }

            player.IncBanked(PatchClass.Settings.CashProperty, -amount);
            target.IncBanked(PatchClass.Settings.CashProperty, amount);
            target.UpdateCoinValue();

            player.SendMessage($"Transferred {amount:N0} pyreals to {target.Name}. You have {player.GetBanked(PatchClass.Settings.CashProperty):N0} banked.");
            target.SendMessage($"{player.Name} has transferred {amount:N0} pyreals to you. You have {target.GetBanked(PatchClass.Settings.CashProperty):N0} banked.");
            return;
        }

        if (!TryTransferPyrealsToOfflinePlayer(player, amount, targetName.Trim(), out var offlineError))
        {
            player.SendMessage(offlineError ?? "Transfer failed.");
            return;
        }

        player.SendMessage($"Transferred {amount:N0} pyreals to {targetName.Trim()}. They are offline; the balance will update when they next log in. You have {player.GetBanked(PatchClass.Settings.CashProperty):N0} banked.");
    }

    // Credits an offline character's banked pyreals (shard BiotaPropertiesInt64). Debits sender before SaveChanges; refunds on DB failure.
    static bool TryTransferPyrealsToOfflinePlayer(Player sender, long amount, string targetName, out string? error)
    {
        error = null;
        var cashProp = PatchClass.Settings.CashProperty;
        var propU = (ushort)cashProp;
        bool senderDebited = false;

        try
        {
            using var context = new ShardDbContext();
            var key = targetName.ToLowerInvariant();

            var targetChar = context.Character.FirstOrDefault(c =>
                !c.IsDeleted && c.Name.ToLower() == key);

            if (targetChar is null)
            {
                error = "No matching character was found for that name.";
                return false;
            }

            if (targetChar.Id == sender.Character.Id)
            {
                error = "You cannot transfer to yourself.";
                return false;
            }

            var row = context.BiotaPropertiesInt64.FirstOrDefault(p =>
                p.ObjectId == targetChar.Id && p.Type == propU);

            var newBalance = (row?.Value ?? 0L) + amount;
            if (row is null)
            {
                context.BiotaPropertiesInt64.Add(new BiotaPropertiesInt64
                {
                    ObjectId = targetChar.Id,
                    Type = propU,
                    Value = newBalance,
                });
            }
            else
            {
                row.Value = newBalance;
            }

            sender.IncBanked(cashProp, -amount);
            senderDebited = true;
            sender.UpdateCoinValue();

            context.SaveChanges();
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Offline pyreal transfer failed: {ex}", ModManager.LogLevel.Error);
            error = "Transfer failed (database error). Your balance was not changed.";
            if (senderDebited)
            {
                try
                {
                    sender.IncBanked(cashProp, amount);
                    sender.UpdateCoinValue();
                }
                catch (Exception refundEx)
                {
                    ModManager.Log($"[LeyLineLedger] Offline transfer refund failed: {refundEx}", ModManager.LogLevel.Error);
                }
            }

            return false;
        }
        ModManager.Log($"[LeyLineLedger] {sender.Name} transferred {amount:N0} pyreals to offline character '{targetName}'.", ModManager.LogLevel.Info);
        return true;
    }

    public static void WithdrawCurrency(Session session, string currencyName, string amountToken)
    {
        var player = session.Player;
        if (player is null)
            return;

        if (!int.TryParse(amountToken, out var amount) || amount <= 0)
        {
            player.SendMessage("Specify a positive amount to withdraw.");
            return;
        }

        //Special case: withdrawing pyreals turns a total pyreal amount into the best trade-note mix
        if (currencyName.Equals("Pyreal", StringComparison.OrdinalIgnoreCase))
        {
            BankExtensions.WithdrawPyreals(session, amount);
            return;
        }

        var singleCurrency = PatchClass.Settings.Currencies.Where(x => x.Name.Equals(currencyName, StringComparison.OrdinalIgnoreCase)).FirstOrDefault();
        if (singleCurrency is null)
        {
            player.SendMessage($"Unable to find currency: {currencyName}");
            return;
        }

        long singleCost = (long)amount * singleCurrency.Value;
        long singleStored = player.GetBanked(PatchClass.Settings.CashProperty);

        if (singleStored < singleCost)
        {
            player.SendMessage($"Insufficient funds: {singleCost:N0} > {singleStored:N0}");
            return;
        }

        if (player.TryCreateItems($"{singleCurrency.Id} {amount}"))
        {
            player.IncCash(-singleCost);
            player.SendMessage($"Withdrew {amount} {singleCurrency.Name} for {singleCost:N0}.  You have {player.GetBanked(PatchClass.Settings.CashProperty):N0} remaining.");
        }
        else
        {
            player.SendMessage($"Failed to withdraw {amount} {singleCurrency.Name} for {singleCost:N0}.  You have {player.GetBanked(PatchClass.Settings.CashProperty):N0} remaining.");
        }
    }

    public static void WithdrawLuminanceGem(Session session, string amountToken)
    {
        var player = session.Player;
        if (player is null)
            return;

        var settings = PatchClass.Settings;
        if (settings.LuminanceGemWeenieClassId == 0)
        {
            player.SendMessage("Luminance gem withdrawal is disabled (LuminanceGemWeenieClassId is 0).");
            return;
        }

        long amount;
        if (amountToken.Equals("all", StringComparison.OrdinalIgnoreCase) ||
            amountToken.Equals("a", StringComparison.OrdinalIgnoreCase))
        {
            amount = player.GetBanked(settings.LuminanceProperty);
            if (amount <= 0)
            {
                player.SendMessage("You have no banked luminance to withdraw.");
                return;
            }
        }
        else if (!long.TryParse(amountToken, out amount) || amount <= 0)
        {
            player.SendMessage("Specify a positive amount or \"all\" to withdraw banked luminance into a gem.");
            return;
        }

        long banked = player.GetBanked(settings.LuminanceProperty);
        if (banked < amount)
        {
            player.SendMessage($"Insufficient banked luminance: {amount:N0} > {banked:N0}.");
            return;
        }

        var obj = WorldObjectFactory.CreateNewWorldObject(settings.LuminanceGemWeenieClassId);
        if (obj is not Gem gem)
        {
            player.SendMessage("LuminanceGemWeenieClassId must be a Gem-type weenie. Change it in LeyLineLedger Settings.json.");
            ModManager.Log($"[LeyLineLedger] LuminanceGemWeenieClassId {settings.LuminanceGemWeenieClassId} created {obj?.GetType().Name ?? "null"}.", ModManager.LogLevel.Error);
            return;
        }

        try
        {
            gem.MaxStackSize = 1;
            gem.StackSize = 1;
        }
        catch
        {
        }

        gem.SetProperty((PropertyInt64)settings.LuminanceGemStoredAmountProperty, amount);

        if (!player.TryCreateInInventoryWithNetworking(gem))
        {
            player.SendMessage("You do not have enough pack space to withdraw a luminance gem.");
            return;
        }

        player.IncBanked(settings.LuminanceProperty, -amount);
        player.SendMessage($"Withdrew {amount:N0} banked luminance into a gem. Banked luminance: {player.GetBanked(settings.LuminanceProperty):N0}.");
    }

    public static void WithdrawPyreals(Session session, long totalPyreals)
    {
        var player = session.Player;
        if (player is null)
            return;

        if (totalPyreals <= 0)
        {
            player.SendMessage("Specify a positive amount to withdraw.");
            return;
        }

        long stored = player.GetBanked(PatchClass.Settings.CashProperty);

        if (stored < totalPyreals)
        {
            player.SendMessage($"Insufficient funds: {totalPyreals:N0} > {stored:N0}");
            return;
        }

        var currencies = PatchClass.Settings.Currencies
            .Where(x => x.Value > 0)
            .OrderByDescending(x => x.Value)
            .ToList();

        var parts = new List<string>();
        long remaining = totalPyreals;

        foreach (var curr in currencies)
        {
            int count = (int)(remaining / curr.Value);
            if (count <= 0)
                continue;

            parts.Add($"{curr.Id} {count}");
            remaining -= (long)count * curr.Value;
        }

        if (parts.Count == 0)
        {
            player.SendMessage("Unable to form a withdrawal with the available currency denominations.");
            return;
        }

        var command = string.Join(" ", parts);

        if (player.TryCreateItems(command))
        {
            player.IncCash(-totalPyreals);

            var breakdown = string.Join(", ", parts.Select(p =>
            {
                var tokens = p.Split(' ');
                if (tokens.Length != 2)
                    return p;

                if (!uint.TryParse(tokens[0], out var id) || !int.TryParse(tokens[1], out var count))
                    return p;

                var curr = PatchClass.Settings.Currencies.FirstOrDefault(c => c.Id == id);
                var name = curr is not null ? curr.Name : id.ToString();
                long value = curr is not null ? (long)curr.Value * count : 0;

                return value > 0
                    ? $"{count} {name} ({value:N0})"
                    : $"{count} {name}";
            }));

            player.SendMessage($"Withdrew {totalPyreals:N0} pyreals as: {breakdown}.  You have {player.GetBanked(PatchClass.Settings.CashProperty):N0} remaining.");
        }
        else
        {
            player.SendMessage($"Failed to withdraw {totalPyreals:N0} pyreals.  You have {player.GetBanked(PatchClass.Settings.CashProperty):N0} remaining.");
        }
    }

    //Parsing
    static readonly string[] USAGES = new string[] {
        $@"(?<verb>{Transaction.List})$",
        //First check amount first cause I suck with regex
        $@"(?<verb>{Transaction.Give}|{Transaction.Take}) (?<name>.+)\s+(?<amount>(\*|\d+))$",
        $@"(?<verb>{Transaction.Give}|{Transaction.Take}) (?<name>.+)$",
        // /cash doesn't have named item
        $@"(?<verb>{Transaction.Give})$",
    };
    //Join usages in a regex pattern
    static string Pattern => string.Join("|", USAGES.Select(x => $"({x})"));
    static Regex CommandRegex = new(Pattern, RegexOptions.IgnoreCase | RegexOptions.Compiled);

    public static bool TryParseCommand(this string[] parameters, out Transaction verb, out string name, out int amount, out bool wildcardAmount)
    {
        //Set defaults
        amount = 1;
        verb = 0;
        name = string.Empty;
        wildcardAmount = false;

        //Debugger.Break();
        //Check for valid command
        var match = CommandRegex.Match(string.Join(" ", parameters));
        if (!match.Success)
            return false;

        //Parse verb
        if (!Enum.TryParse(match.Groups["verb"].Value, true, out verb))
            return false;

        //Set name
        name = match.Groups["name"].Value;

        //Parse amount if available
        if (int.TryParse(match.Groups["amount"].Value, out var parsedAmount))
            amount = parsedAmount;
        else if (match.Groups["amount"].Value == "*")
        {
            amount = int.MaxValue;
            wildcardAmount = true;
        }

        return true;
    }

    //Support for spaces in names
    public static string ParseName(this string[] param, int skip = 1, int atEnd = 0) => param.Length - skip - atEnd > 0 ?
        string.Join(" ", param.Skip(skip).Take(param.Length - atEnd - skip)) : "";

    //Parse quantity from last parameter supporting wildcards
    public static bool TryParseAmount(this string[] param, out int amount, int max = int.MaxValue)
    {
        var last = param.LastOrDefault() ?? "";

        //Default to 1
        amount = 1;

        bool success = true;

        //Check for wildcards/other handling
        if (last == "*")
            amount = int.MaxValue;
        else if (int.TryParse(last, out var parsedAmount))
            amount = parsedAmount;
        //Amount was not parsed
        else
            success = false;

        //Wildcards will always use the max value, parsed ints will use the setting
        if (PatchClass.Settings.ExcessSetToMax || last == "*")
            amount = Math.Min(max, amount);

        return success;
    }
}

public enum Transaction
{
    List,
    Give,
    Take,
    //Send,
}
