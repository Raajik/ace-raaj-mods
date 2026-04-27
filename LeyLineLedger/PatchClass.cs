
namespace LeyLineLedger;

[HarmonyPatch]
public partial class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    public static HarmonyLib.Harmony? Harmony { get; private set; }
    static readonly bool UsePrettyBankFormatting = true;

    static PatchClass()
    {
        // Harmony is set when the mod starts; see Start() override
    }

    // Debit/DirectDeposit must patch from Start() as well as OnWorldOpen(): if the mod loads after the world
    // is already up, OnWorldOpen never runs and vendors still use vanilla CoinValue (inventory only) while
    // /bank reads the banked PropertyInt64 directly.
    public override void Start()
    {
        Harmony = ModC.Harmony;
        base.Start();
        ApplyConditionalHarmonyCategories();
        ValidateConfiguredWeenies();
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
            ModC.Harmony.UnpatchCategory(nameof(SalvageDirectDeposit));
        }
        catch (Exception ex)
        {
            ModManager.Log($"[LeyLineLedger] Unpatch SalvageDirectDeposit before re-apply: {ex.Message}", ModManager.LogLevel.Warn);
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
        {
            ModManager.Log("[LeyLineLedger] Patching Debit category", ModManager.LogLevel.Info);
            ModC.Harmony.PatchCategory(nameof(Debit));
        }

        if (Settings.DirectDeposit)
            ModC.Harmony.PatchCategory(nameof(DirectDeposit));

        if (Settings.DeathBankPyrealPercent > 0)
            ModC.Harmony.PatchCategory(nameof(DeathBankPenalty));

        if (Settings.SalvageBank.Enabled && Settings.SalvageBank.DirectDepositOnSalvage)
            ModC.Harmony.PatchCategory(nameof(SalvageDirectDeposit));

        ModC.Harmony.PatchCategory(nameof(EmoteBankPatches));

        EconomyBalancer.TryApply();
        LootTracker.TryApply();
        PublicExchange.TryApply();
        Lottery.TryApply();
    }

    void ValidateConfiguredWeenies()
    {
        if (!Settings.ValidateWeeniesAtStartup)
            return;

        var missing = new List<(uint Wcid, string Name)>();

        void CheckWcid(uint wcid, string name)
        {
            if (wcid == 0) return;
            if (missing.Exists(m => m.Wcid == wcid)) return;
            if (DatabaseManager.World.GetCachedWeenie(wcid) == null)
                missing.Add((wcid, name));
        }

        if (Settings.Items != null)
        {
            foreach (var item in Settings.Items)
            {
                if (item == null) continue;
                CheckWcid(item.Id, item.Name);
                if (item.VariantWeenieClassIds != null)
                {
                    foreach (uint v in item.VariantWeenieClassIds)
                        CheckWcid(v, $"{item.Name} (variant)");
                }
            }
        }

        if (Settings.Currencies != null)
        {
            foreach (var currency in Settings.Currencies)
            {
                if (currency == null) continue;
                CheckWcid(currency.Id, currency.Name);
            }
        }

        if (Settings.SalvageBank?.DepositRules != null)
        {
            foreach (var rule in Settings.SalvageBank.DepositRules)
            {
                if (rule == null) continue;
                CheckWcid(rule.WeenieClassId, $"{rule.Name} (salvage input)");
                CheckWcid(rule.OutputBagWeenieClassId, $"{rule.Name} (salvage bag)");
                if (rule.AdditionalDepositWeenieClassIds != null)
                {
                    foreach (uint a in rule.AdditionalDepositWeenieClassIds)
                        CheckWcid(a, $"{rule.Name} (alt deposit)");
                }
            }
        }

        CheckWcid(Settings.LuminanceGemWeenieClassId, "Luminance Gem");

        if (missing.Count == 0)
        {
            ModManager.Log("[LeyLineLedger] Startup validation: all configured weenies found.", ModManager.LogLevel.Info);
            return;
        }

        var sb = new StringBuilder();
        sb.AppendLine($"[LeyLineLedger] Startup validation found {missing.Count} missing weenies:");
        foreach (var (wcid, name) in missing)
            sb.AppendLine($"  - WCID {wcid} (Configured name: \"{name}\")");
        sb.Append("Features using these items will degrade gracefully.");
        ModManager.Log(sb.ToString(), ModManager.LogLevel.Warn);
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

        try
        {
            ModC.Harmony.UnpatchCategory(nameof(SalvageDirectDeposit));
        }
        catch
        {
        }

        try
        {
            ModC.Harmony.UnpatchCategory(nameof(EmoteBankPatches));
        }
        catch
        {
        }

        try
        {
            ModC.Harmony.UnpatchCategory(nameof(EconomyBalancer));
        }
        catch
        {
        }

        try
        {
            ModC.Harmony.UnpatchCategory(nameof(LootTracker));
        }
        catch
        {
        }

        PublicExchange.Stop();
        Lottery.Stop();

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

        //No args -> compact summary with diffs; /b list -> detailed view
        if (parameters.Length == 0)
        {
            var (last, current) = BankSnapshotTracker.GetDiff(player.Guid.Full);
            BankSnapshotTracker.MarkViewed(player.Guid.Full);

            long pyreals = current.Pyreals;
            long luminance = current.Luminance;
            long zefs = Settings.AltCurrencyProperty > 0 ? current.AltCurrency : 0;

            long pyrealDiff = last != null ? current.Pyreals - last.Pyreals : 0;
            long lumDiff = last != null ? current.Luminance - last.Luminance : 0;
            long zefDiff = last != null ? current.AltCurrency - last.AltCurrency : 0;

            string pyrealsDisplay = pyreals >= 1_000_000_000
                ? $"{pyreals / 1_000_000_000.0:F1}B"
                : pyreals >= 1_000_000
                    ? $"{pyreals / 1_000_000.0:F1}M"
                    : pyreals >= 1_000
                        ? $"{pyreals / 1_000.0:F0}k"
                        : pyreals.ToString("N0");

            long mmdCount = pyreals / 250000;
            string pyrealLine = $"Pyreals: {pyrealsDisplay}";
            if (mmdCount > 0)
                pyrealLine += $" (~{mmdCount:N0} MMD)";
            pyrealLine += $" ({BankSnapshotTracker.FormatDiff(pyrealDiff)})";
            player.SendMessage(pyrealLine, DiffMessageType(pyrealDiff));

            string lumLine = $"Luminance: {luminance:N0} ({BankSnapshotTracker.FormatDiff(lumDiff)})";
            player.SendMessage(lumLine, DiffMessageType(lumDiff));

            if (zefs > 0 || zefDiff != 0)
            {
                string zefLine = $"Zefs: {zefs:N0} ({BankSnapshotTracker.FormatDiff(zefDiff)})";
                player.SendMessage(zefLine, DiffMessageType(zefDiff));
            }

            var keys = new (string label, int prop)[]
            {
                ("SIK", 40250),
                ("SSK", 40500),
                ("MFK", 40750),
                ("L", 41000)
            };
            foreach (var (label, prop) in keys)
            {
                long banked = current.Keys.GetValueOrDefault(label, 0);
                long keyDiff = last != null ? banked - last.Keys.GetValueOrDefault(label, 0) : 0;
                if (banked > 0 || keyDiff != 0)
                {
                    string keyLine = $"{label}: {banked:N0} ({BankSnapshotTracker.FormatDiff(keyDiff)})";
                    player.SendMessage(keyLine, DiffMessageType(keyDiff));
                }
            }

            long writs = 0;
            var writ = Settings.Items.FirstOrDefault(x => x.Name.Contains("Writ"));
            if (writ != null)
                writs = player.GetBanked(writ.Prop);
            if (writs > 0)
                player.SendMessage($"Writs: {writs:N0}");

            // Show AshCoins in compact view
            var ashCoin = Settings.Items.FirstOrDefault(x => x.Name.Contains("Ash", StringComparison.OrdinalIgnoreCase));
            if (ashCoin != null)
            {
                long ashBanked = player.GetBanked(ashCoin.Prop);
                if (ashBanked > 0)
                    player.SendMessage($"AshCoins: {ashBanked:N0}");
            }

            return;
        }

        if (parameters.Length >= 1 && parameters[0].Equals("list", StringComparison.OrdinalIgnoreCase))
        {
            ShowDetailedBankList(player);
            return;
        }

        static ACE.Entity.Enum.ChatMessageType DiffMessageType(long diff)
        {
            if (diff > 0) return ACE.Entity.Enum.ChatMessageType.CombatSelf;   // green
            if (diff < 0) return ACE.Entity.Enum.ChatMessageType.CombatEnemy;  // red
            return ACE.Entity.Enum.ChatMessageType.System;                     // white
        }

        var verbToken = parameters[0];

        // Shorthand: /b s st | /b s d | /b s r iron 2  ->  same as /bank salvage ...
        if (verbToken.Equals("s", StringComparison.OrdinalIgnoreCase))
        {
            List<string> expanded = new() { "salvage" };
            for (int i = 1; i < parameters.Length; i++)
                expanded.Add(parameters[i]);
            BankSalvage.Handle(session, expanded.ToArray());
            return;
        }

        if (verbToken.Equals("salvage", StringComparison.OrdinalIgnoreCase))
        {
            BankSalvage.Handle(session, parameters);
            return;
        }

        //Deposit shorthand: /bank deposit or /b d  ;  /bank deposit all | /b d a  also banks all stack salvage (SalvageBank)
        if (verbToken.Equals("deposit", StringComparison.OrdinalIgnoreCase) ||
            verbToken.Equals("d", StringComparison.OrdinalIgnoreCase))
        {
            // Always deposit salvage unless explicitly disabled
            bool skipSalvage = parameters.Length >= 2 && 
                (parameters[1].Equals("no", StringComparison.OrdinalIgnoreCase) ||
                 parameters[1].Equals("skip", StringComparison.OrdinalIgnoreCase));

            BankExtensions.DepositAllCash(session);
            BankExtensions.DepositAllLuminance(session);
            BankExtensions.DepositAllItems(session);

            if (!skipSalvage && Settings.SalvageBank is { Enabled: true })
                BankSalvage.Handle(session, new[] { "salvage", "deposit" });

            return;
        }

        //Withdraw shorthand: /bank withdraw pyreals <amount> or /b w p <amount>; luminance gem: withdraw luminance <amount> or w l <amount>
        // Salvage bags: /bank withdraw salvage <material> [bags]  |  /b w s <material> [bags]  -> same as /bank salvage redeem ...
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

            if (parameters.Length >= 3 &&
                (parameters[1].Equals("salvage", StringComparison.OrdinalIgnoreCase) ||
                 parameters[1].Equals("s", StringComparison.OrdinalIgnoreCase)))
            {
                if (Settings.SalvageBank is not { Enabled: true })
                {
                    player.SendMessage("Bank salvage is disabled.");
                    return;
                }

                string[] expanded = new string[parameters.Length];
                expanded[0] = "salvage";
                expanded[1] = "redeem";
                for (int i = 2; i < parameters.Length; i++)
                    expanded[i] = parameters[i];

                BankSalvage.Handle(session, expanded);
                return;
            }

            if (parameters.Length < 3)
            {
                player.SendMessage("Usage: /bank withdraw pyreals <amount> | withdraw luminance <amount> | withdraw salvage <material> [bags]");
                player.SendMessage("  Shorthand: /b w p <amt> | /b w l <amt> | /b w s <material> [bags]  (salvage = bag redeem)");
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
                // Try fuzzy match against bank items
                var matchedItem = FuzzyFindBankItem(currencyToken);
                if (matchedItem != null)
                {
                    var itemAmountToken = parameters[2];
                    if (!int.TryParse(itemAmountToken, out var withdrawQty) || withdrawQty <= 0)
                    {
                        player.SendMessage($"Usage: /b w {currencyToken} <amount> — amount must be a positive number.");
                        return;
                    }

                    var banked = player.GetBanked(matchedItem.Prop);
                    if (banked < withdrawQty)
                    {
                        player.SendMessage($"You only have {banked:N0} {matchedItem.Name} banked (requested {withdrawQty:N0}).");
                        return;
                    }

                    // Try to create the item in inventory
                    var wo = WorldObjectFactory.CreateNewWorldObject(matchedItem.Id);
                    if (wo == null)
                    {
                        player.SendMessage($"Failed to create {matchedItem.Name}.");
                        return;
                    }

                    wo.SetStackSize(withdrawQty);
                    if (!player.TryCreateInInventoryWithNetworking(wo))
                    {
                        player.SendMessage($"Not enough pack space to withdraw {withdrawQty:N0} {matchedItem.Name}.");
                        wo.Destroy();
                        return;
                    }

                    player.IncBanked(matchedItem.Prop, -withdrawQty);
                    player.SendMessage($"Withdrew {withdrawQty:N0} {matchedItem.Name} from bank. {banked - withdrawQty:N0} remaining.");
                    return;
                }

                // Try fuzzy match against salvage materials
                if (Settings.SalvageBank is { Enabled: true })
                {
                    var matchedSalvage = FuzzyFindSalvage(currencyToken);
                    if (matchedSalvage != null)
                    {
                        string[] expanded = new string[parameters.Length + 1];
                        expanded[0] = "salvage";
                        expanded[1] = "redeem";
                        expanded[2] = matchedSalvage.Name;
                        if (parameters.Length >= 3)
                            expanded[3] = parameters[2];

                        BankSalvage.Handle(session, expanded);
                        return;
                    }
                }

                player.SendMessage($"Unknown currency or item '{currencyToken}'. Use /b list to see what you have banked.");
                player.SendMessage("Usage: /bank withdraw pyreals <amount> | withdraw luminance <amount> | withdraw salvage <material> [bags] | withdraw <item> <amount>");
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
            player.SendMessage("Usage: /bank [list | deposit | withdraw pyreals <amount> | withdraw luminance | withdraw salvage <material> [bags] | transfer ...]");
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
            ShowDetailedBankList(player);
        }
    }

    static void ShowDetailedBankList(Player player)
    {
        // Only show items the player actually owns (banked or held)
        var ownedItems = Settings.Items
            .Where(x => x.Id != 20630)
            .Select(x => new { Item = x, Banked = player.GetBanked(x.Prop), Held = player.GetNumInventoryItemsOfWCID(x.Id) })
            .Where(x => x.Banked > 0 || x.Held > 0)
            .ToList();

        var pyrealsBanked = player.GetBanked(Settings.CashProperty);
        var pyrealsHeld = player.GetNumInventoryItemsOfWCID(273) * 1; // pyreal coin
        // Also count pyreal denominations in inventory
        foreach (var currency in Settings.Currencies.Where(c => c.Value > 0 && c.Id != 273))
        {
            pyrealsHeld += player.GetNumInventoryItemsOfWCID(currency.Id) * (int)currency.Value;
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

        // Always show pyreals if configured
        if (pyrealsBanked > 0 || pyrealsHeld > 0)
        {
            sb.Append($"\nPyreals:\n  {pyrealsBanked:N0} banked, {pyrealsHeld:N0} held");
        }

        foreach (var entry in ownedItems)
            sb.Append($"\n{entry.Item.Name}:\n  {entry.Banked:N0} banked, {entry.Held:N0} held");

        if (ownedItems.Count == 0 && pyrealsBanked == 0 && pyrealsHeld == 0)
        {
            sb.Append("\n  (nothing banked yet — deposit items with /bank deposit <name> <amount>)");
        }

        player.SendMessage($"{sb}");
    }

    // Pulls from inventory across canonical Id then VariantWeenieClassIds until 'amount' is satisfied.
    // Uses AllItems() + equipped stacks so nested containers (e.g. key rings) match BetterKeys and /bank deposit all.
    public static int TryDepositIncludingVariants(Player player, BankItem item, int amount)
    {
        if (amount <= 0)
            return 0;

        int remaining = amount;
        int credited = 0;

        foreach (uint wcid in BuildBankItemWcidOrder(item))
        {
            while (remaining > 0)
            {
                WorldObject? stack = FindNextStackForWcid(player, wcid);
                if (stack == null)
                    break;

                int stackSize = (int)(stack.StackSize ?? 1);
                int take = Math.Min(remaining, stackSize);
                if (!TryConsumeStackPortion(player, stack, take))
                    break;

                credited += take;
                remaining -= take;
            }

            if (remaining <= 0)
                break;
        }

        return credited;
    }

    static List<uint> BuildBankItemWcidOrder(BankItem item)
    {
        List<uint> order = new List<uint> { item.Id };
        if (item.VariantWeenieClassIds is not { Count: > 0 })
            return order;

        foreach (uint v in item.VariantWeenieClassIds)
        {
            if (v == 0 || v == item.Id)
                continue;

            if (!order.Contains(v))
                order.Add(v);
        }

        return order;
    }

    static WorldObject? FindNextStackForWcid(Player player, uint wcid)
    {
        foreach (WorldObject wo in player.AllItems())
        {
            if (wo.WeenieClassId == wcid)
                return wo;
        }

        foreach (WorldObject wo in player.GetEquippedObjectsOfWCID(wcid))
            return wo;

        return null;
    }

    static bool TryConsumeStackPortion(Player player, WorldObject stack, int take)
    {
        if (take <= 0)
            return false;

        if (player.TryConsumeFromInventoryWithNetworking(stack, take))
            return true;

        return player.TryConsumeFromEquippedObjectsWithNetworking(stack, take);
    }

    // Stack salvage: StackSize. Single-stack "bags" (e.g. Salved Leather (80)): fill is usually Structure/MaxStructure (caps at 100); NumItemsInMaterial is a fallback; name "(N)" last resort.
    public static int GetSalvageMaterialUnitCount(WorldObject wo)
    {
        if (wo is null)
            return 0;

        int stack = (int)(wo.StackSize ?? 1);
        if (stack > 1)
            return stack;

        if (wo.Structure is ushort strV && strV > 0)
        {
            int s = strV;
            if (wo.MaxStructure is ushort maxCap && maxCap > 0 && s > maxCap)
                s = maxCap;

            if (wo.MaxStructure is ushort maxW && maxW > 1)
                return Math.Max(1, s);

            if (s > 1)
                return s;
        }

        int nim = wo.NumItemsInMaterial ?? 1;
        if (nim > 1)
            return nim;

        int fromName = TryParseSalvageParenCountFromName(wo.Name);
        if (fromName > 0)
            return fromName;

        return 1;
    }

    static int TryParseSalvageParenCountFromName(string? name)
    {
        if (string.IsNullOrEmpty(name))
            return 0;

        Match m = Regex.Match(name, @"\((\d+)\)\s*$");
        return m.Success && int.TryParse(m.Groups[1].Value, out int n) ? n : 0;
    }

    // Stack counts across nested containers (AllItems) and equipped; avoids undercount vs GetNumInventoryItemsOfWCID-only.
    public static int CountBankableWcid(Player player, uint wcid)
    {
        HashSet<uint> seen = new HashSet<uint>();
        int n = 0;

        foreach (WorldObject wo in player.AllItems())
        {
            if (wo.WeenieClassId != wcid)
                continue;

            if (!seen.Add(wo.Guid.Full))
                continue;

            n += GetSalvageMaterialUnitCount(wo);
        }

        foreach (WorldObject wo in player.GetEquippedObjectsOfWCID(wcid))
        {
            if (!seen.Add(wo.Guid.Full))
                continue;

            n += GetSalvageMaterialUnitCount(wo);
        }

        return n;
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
        if (!player.TryCreateItems($"{item.Id} {amount}"))
        {
            player.SendMessage($"The bank tried to dispense {item.Name}, but that item no longer exists in the world. Contact an admin.");
            ModManager.Log($"[LeyLineLedger] Failed to create WCID {item.Id} ({item.Name}) for player {player.Name}. Item missing from world DB.");
            return;
        }

        player.IncBanked(item.Prop, -amount);
        SyncZefsOnChange(player, item, -amount);
        player.SendMessage($"Withdrew {amount} {item.Name}. {player.GetBanked(item.Prop)} banked, {player.GetNumInventoryItemsOfWCID(item.Id)} held");
    }

    public static void HandleDeposit(Player player, BankItem item, int amount)
    {
        int deposited = TryDepositIncludingVariants(player, item, amount);
        if (deposited == amount)
        {
            player.IncBanked(item.Prop, amount);
            SyncZefsOnChange(player, item, amount);
            player.SendMessage($"Deposited {amount:N0} {item.Name}. {player.GetBanked(item.Prop)} banked, {player.GetNumInventoryItemsOfWCID(item.Id):N0} held");
            return;
        }

        player.SendMessage($"Unable to deposit {amount:N0}.  You have {player.GetNumInventoryItemsOfWCID(item.Id):N0} {item.Name} (canonical)");
    }

    static void SyncZefsOnChange(Player player, BankItem item, int delta)
    {
        if (Settings.AltCurrencyValues.TryGetValue(item.Id, out int zefValue))
            player.IncBanked(Settings.AltCurrencyProperty, (long)delta * zefValue);
    }

    /// <summary>
    /// Fuzzy-find a bank item by partial name (e.g. "ashc" → "AshCoin").
    /// </summary>
    static BankItem? FuzzyFindBankItem(string token)
    {
        if (string.IsNullOrWhiteSpace(token))
            return null;

        // Exact match first
        var exact = PatchClass.Settings.Items.FirstOrDefault(x => x.Name.Equals(token, StringComparison.OrdinalIgnoreCase));
        if (exact != null)
            return exact;

        // Starts-with match
        var startsWith = PatchClass.Settings.Items.FirstOrDefault(x => x.Name.StartsWith(token, StringComparison.OrdinalIgnoreCase));
        if (startsWith != null)
            return startsWith;

        // Contains match
        var contains = PatchClass.Settings.Items.FirstOrDefault(x => x.Name.Contains(token, StringComparison.OrdinalIgnoreCase));
        if (contains != null)
            return contains;

        return null;
    }

    /// <summary>
    /// Fuzzy-find a salvage deposit rule by partial material name.
    /// </summary>
    static SalvageDepositRule? FuzzyFindSalvage(string token)
    {
        if (string.IsNullOrWhiteSpace(token) || PatchClass.Settings.SalvageBank?.DepositRules == null)
            return null;

        // Exact match first
        var exact = PatchClass.Settings.SalvageBank.DepositRules.FirstOrDefault(x => x.Name.Equals(token, StringComparison.OrdinalIgnoreCase));
        if (exact != null)
            return exact;

        // Starts-with match
        var startsWith = PatchClass.Settings.SalvageBank.DepositRules.FirstOrDefault(x => x.Name.StartsWith(token, StringComparison.OrdinalIgnoreCase));
        if (startsWith != null)
            return startsWith;

        // Contains match
        var contains = PatchClass.Settings.SalvageBank.DepositRules.FirstOrDefault(x => x.Name.Contains(token, StringComparison.OrdinalIgnoreCase));
        if (contains != null)
            return contains;

        return null;
    }

    /// <summary>
    /// Fuzzy-find an exchangeable salvage bag rule by partial name.
    /// Returns the rule and its index in DepositRules.
    /// </summary>
    static (SalvageDepositRule rule, int index)? FuzzyFindExchangeableSalvage(string token)
    {
        var rules = PatchClass.Settings.SalvageBank?.DepositRules;
        if (string.IsNullOrWhiteSpace(token) || rules == null)
            return null;

        for (int i = 0; i < rules.Count; i++)
        {
            var rule = rules[i];
            if (rule.ExchangeValue <= 0 || rule.OutputBagWeenieClassId == 0)
                continue;

            if (rule.Name.Equals(token, StringComparison.OrdinalIgnoreCase))
                return (rule, i);
        }

        for (int i = 0; i < rules.Count; i++)
        {
            var rule = rules[i];
            if (rule.ExchangeValue <= 0 || rule.OutputBagWeenieClassId == 0)
                continue;

            if (rule.Name.StartsWith(token, StringComparison.OrdinalIgnoreCase))
                return (rule, i);
        }

        for (int i = 0; i < rules.Count; i++)
        {
            var rule = rules[i];
            if (rule.ExchangeValue <= 0 || rule.OutputBagWeenieClassId == 0)
                continue;

            if (rule.Name.Contains(token, StringComparison.OrdinalIgnoreCase))
                return (rule, i);
        }

        return null;
    }

    [CommandHandler("exchange", AccessLevel.Player, CommandHandlerFlag.RequiresWorld)]
    [CommandHandler("ex", AccessLevel.Player, CommandHandlerFlag.RequiresWorld)]
    public static void HandleExchange(Session session, params string[] parameters)
    {
        var player = session.Player;
        if (player == null) return;

        if (!Settings.PublicExchange.Enabled)
        {
            player.SendMessage("Public exchange is disabled.");
            return;
        }

        if (parameters.Length == 0)
        {
            var taxRate = PublicExchange.ComputeTaxRate();
            player.SendMessage("=== Public Exchange ===");
            player.SendMessage($"Current sell tax: {taxRate:P1}");
            player.SendMessage("Commands: /exchange list | /exchange info <item> | /exchange sell <item> <amount> | /exchange buy <item> <amount>");
            return;
        }

        var verb = parameters[0].ToLowerInvariant();

        if (verb == "list")
        {
            var list = PublicExchange.GetExchangeList();
            player.SendMessage("=== Exchange Prices ===");
            foreach (var (name, wcid, buyPrice, sellPrice, poolQty, isStatic) in list)
            {
                var staticTag = isStatic ? " [STATIC]" : "";
                player.SendMessage($"  {name}: pool {poolQty:N0} | buy {buyPrice:N0} | sell {sellPrice:N0}{staticTag}");
            }
            return;
        }

        if (verb == "info" && parameters.Length >= 2)
        {
            var token = parameters[1];

            // Try bank item first
            var item = FuzzyFindBankItem(token);
            if (item != null)
            {
                var basePrice = PublicExchange.GetBasePrice(item.Id);
                var multiplier = PublicExchange.GetPoolDepthMultiplier(item.Id);
                var buyPrice = PublicExchange.GetBuyPrice(item.Id);
                var sellPrice = PublicExchange.GetSellPrice(item.Id);
                var isStatic = PublicExchange.IsStaticPrice(item.Id);

                player.SendMessage($"=== {item.Name} ===");
                player.SendMessage($"  Base price: {basePrice:N0} pyreals");
                player.SendMessage($"  Pool multiplier: {multiplier:F2}x");
                player.SendMessage($"  Buy price: {buyPrice:N0} | Sell price: {sellPrice:N0}");
                if (isStatic)
                    player.SendMessage($"  [STATIC PRICE — not affected by pool depth]");
                return;
            }

            // Try salvage bag
            var salvage = FuzzyFindExchangeableSalvage(token);
            if (salvage != null)
            {
                var (rule, index) = salvage.Value;
                var wcid = rule.OutputBagWeenieClassId;
                var basePrice = PublicExchange.GetBasePrice(wcid);
                var multiplier = PublicExchange.GetPoolDepthMultiplier(wcid);
                var buyPrice = PublicExchange.GetBuyPrice(wcid);
                var sellPrice = PublicExchange.GetSellPrice(wcid);
                var isStatic = PublicExchange.IsStaticPrice(wcid);

                player.SendMessage($"=== {rule.Name} Bag ===");
                player.SendMessage($"  Base price: {basePrice:N0} pyreals per bag");
                player.SendMessage($"  Pool multiplier: {multiplier:F2}x");
                player.SendMessage($"  Buy price: {buyPrice:N0} | Sell price: {sellPrice:N0}");
                if (isStatic)
                    player.SendMessage($"  [STATIC PRICE — not affected by pool depth]");
                return;
            }

            player.SendMessage($"Item '{token}' not found.");
            return;
        }

        if ((verb == "sell" || verb == "s") && parameters.Length >= 3)
        {
            var token = parameters[1];

            // Try bank item first
            var item = FuzzyFindBankItem(token);
            if (item != null)
            {
                if (!long.TryParse(parameters[2], out var amount) || amount <= 0)
                {
                    player.SendMessage("Usage: /exchange sell <item> <amount>");
                    return;
                }

                PublicExchange.SellItem(session, item, amount);
                return;
            }

            // Try salvage bag
            var salvage = FuzzyFindExchangeableSalvage(token);
            if (salvage != null)
            {
                if (!long.TryParse(parameters[2], out var amount) || amount <= 0)
                {
                    player.SendMessage("Usage: /exchange sell <item> <amount>");
                    return;
                }

                PublicExchange.SellSalvageBag(session, salvage.Value.rule, salvage.Value.index, amount);
                return;
            }

            player.SendMessage($"Item '{token}' not found.");
            return;
        }

        if ((verb == "buy" || verb == "b") && parameters.Length >= 3)
        {
            var token = parameters[1];

            // Try bank item first
            var item = FuzzyFindBankItem(token);
            if (item != null)
            {
                if (!long.TryParse(parameters[2], out var amount) || amount <= 0)
                {
                    player.SendMessage("Usage: /exchange buy <item> <amount>");
                    return;
                }

                PublicExchange.BuyItem(session, item, amount);
                return;
            }

            // Try salvage bag
            var salvage = FuzzyFindExchangeableSalvage(token);
            if (salvage != null)
            {
                if (!long.TryParse(parameters[2], out var amount) || amount <= 0)
                {
                    player.SendMessage("Usage: /exchange buy <item> <amount>");
                    return;
                }

                PublicExchange.BuySalvageBag(session, salvage.Value.rule, salvage.Value.index, amount);
                return;
            }

            player.SendMessage($"Item '{token}' not found.");
            return;
        }

        if (verb == "admin" && player.IsAdmin)
        {
            if (parameters.Length < 3)
            {
                player.SendMessage("Usage: /exchange admin seed <item> <qty> | /exchange admin reset <item> | /exchange admin tax");
                return;
            }

            var adminVerb = parameters[1].ToLowerInvariant();

            if (adminVerb == "tax")
            {
                var taxRate = PublicExchange.ComputeTaxRate();
                player.SendMessage($"Current tax rate: {taxRate:P1}");
                return;
            }

            var adminToken = parameters[2];

            // Try bank item first
            var adminItem = FuzzyFindBankItem(adminToken);
            if (adminItem != null)
            {
                if (adminVerb == "seed" && parameters.Length >= 4 && long.TryParse(parameters[3], out var seedQty))
                {
                    PublicExchange.AdminSeed(adminItem.Id, seedQty);
                    player.SendMessage($"Seeded {seedQty:N0} {adminItem.Name} into exchange pool.");
                    return;
                }

                if (adminVerb == "reset")
                {
                    PublicExchange.AdminReset(adminItem.Id);
                    player.SendMessage($"Reset exchange pool for {adminItem.Name}.");
                    return;
                }
            }

            // Try salvage bag
            var adminSalvage = FuzzyFindExchangeableSalvage(adminToken);
            if (adminSalvage != null)
            {
                var (rule, _) = adminSalvage.Value;
                if (adminVerb == "seed" && parameters.Length >= 4 && long.TryParse(parameters[3], out var seedQty))
                {
                    PublicExchange.AdminSeed(rule.OutputBagWeenieClassId, seedQty);
                    player.SendMessage($"Seeded {seedQty:N0} {rule.Name} bag(s) into exchange pool.");
                    return;
                }

                if (adminVerb == "reset")
                {
                    PublicExchange.AdminReset(rule.OutputBagWeenieClassId);
                    player.SendMessage($"Reset exchange pool for {rule.Name} bag(s).");
                    return;
                }
            }

            if (adminItem == null && adminSalvage == null)
            {
                player.SendMessage($"Item '{adminToken}' not found.");
                return;
            }

            player.SendMessage("Usage: /exchange admin seed <item> <qty> | /exchange admin reset <item> | /exchange admin tax");
            return;
        }

        player.SendMessage("Usage: /exchange list | /exchange info <item> | /exchange sell <item> <amount> | /exchange buy <item> <amount>");
    }

    [CommandHandler("lottery", AccessLevel.Player, CommandHandlerFlag.RequiresWorld)]
    public static void HandleLottery(Session session, params string[] parameters)
    {
        var player = session.Player;
        if (player == null) return;

        if (!Settings.Lottery.Enabled)
        {
            player.SendMessage("Lottery is disabled.");
            return;
        }

        if (parameters.Length == 0)
        {
            var pool = Lottery.GetPool();
            var ticketPrice = Lottery.GetTicketPrice();
            var prop = (PropertyInt64)Settings.Lottery.TicketPropertyId;
            var myTickets = player.GetProperty(prop) ?? 0;

            player.SendMessage("=== Weekly Lottery ===");
            player.SendMessage($"  Pool: {pool:N0} pyreals");
            player.SendMessage($"  Ticket price: {ticketPrice:N0} pyreals");
            player.SendMessage($"  Your tickets: {myTickets:N0}");
            player.SendMessage("  /lottery buy <n> — purchase tickets");
            return;
        }

        var verb = parameters[0].ToLowerInvariant();

        if (verb == "buy" || verb == "b")
        {
            if (parameters.Length < 2 || !long.TryParse(parameters[1], out var count) || count <= 0)
            {
                player.SendMessage("Usage: /lottery buy <n>");
                return;
            }

            Lottery.BuyTickets(session, count);
            return;
        }

        if (verb == "draw" && player.IsAdmin)
        {
            Lottery.DrawWinner();
            player.SendMessage("Lottery draw complete. Check server logs.");
            return;
        }

        player.SendMessage("Usage: /lottery | /lottery buy <n>");
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

    /// <summary>
    /// Total pyreals available: banked + physical coin stacks + trade notes + peas.
    /// Use this for vendor auto-conversion and purchasing power checks.
    /// </summary>
    public static long GetTotalPyreals(this Player player)
    {
        long total = player.GetCash();

        foreach (var coinStack in player.GetInventoryItemsOfTypeWeenieType(WeenieType.Coin))
            total += coinStack.Value ?? 0;

        foreach (var o in player.AllItems())
        {
            if (o.WeenieClassName.StartsWith("tradenote", StringComparison.OrdinalIgnoreCase))
                total += o.Value ?? 0;
            else if (PeaPyrealWcids.IsPea(o.WeenieClassId))
                total += PeaPyrealWcids.GetPyrealValue(o);
        }

        return total;
    }

    public static long GetBanked(this Player player, int prop) =>
        AccountBankStore.GetBalance(player, prop);

    public static void IncBanked(this Player player, int prop, long amount) =>
        AccountBankStore.Add(player, prop, amount);

    public static void DepositAllItems(Session session)
    {
        Player player = session.Player;
        if (player is null)
            return;

        if (PatchClass.Settings.Items is not { Count: > 0 })
            return;

        foreach (BankItem item in PatchClass.Settings.Items)
        {
            if (item == null || item.Id == 0)
                continue;

            // Items like MMD are still fine; if you don't want them swept, remove them from Items.
            int totalHeld = PatchClass.CountBankableWcid(player, item.Id);
            if (item.VariantWeenieClassIds is { Count: > 0 })
            {
                foreach (uint wcid in item.VariantWeenieClassIds)
                {
                    if (wcid == 0 || wcid == item.Id)
                        continue;

                    totalHeld += PatchClass.CountBankableWcid(player, wcid);
                }
            }

            if (totalHeld <= 0)
                continue;

            int deposited = PatchClass.TryDepositIncludingVariants(player, item, totalHeld);
            if (deposited <= 0)
                continue;

            player.IncBanked(item.Prop, deposited);
            player.SendMessage($"Deposited {deposited:N0} {item.Name}. {player.GetBanked(item.Prop)} banked, {player.GetNumInventoryItemsOfWCID(item.Id):N0} held");
        }
    }

    public static void DepositAllCash(Session session)
    {
        var player = session.Player;
        if (player is null)
            return;

        // Coin stacks and tradenotes: ACE uses stack Value as total pyreals for that stack (same as AutoLoot coin path).
        // Peas: pyreals = (Value per unit × stack size) via PeaPyrealWcids.
        var cashItems = player.AllItems().Where(x =>
            x.WeenieClassId == Player.coinStackWcid ||
            x.WeenieClassName.StartsWith("tradenote", StringComparison.OrdinalIgnoreCase) ||
            PeaPyrealWcids.IsPea(x.WeenieClassId)).ToList();

        long total = 0;
        var itemCount = 0;

        foreach (var item in cashItems)
        {
            total += PeaPyrealWcids.IsPea(item.WeenieClassId)
                ? PeaPyrealWcids.GetPyrealValue(item)
                : item.Value ?? 0;
            itemCount++;
        }

        foreach (var item in cashItems)
        {
            if (!player.TryRemoveFromInventoryWithNetworking(item.Guid, out var consumed, Player.RemoveFromInventoryAction.ConsumeItem))
            {
                if (consumed != null)
                {
                    total -= PeaPyrealWcids.IsPea(consumed.WeenieClassId)
                        ? PeaPyrealWcids.GetPyrealValue(consumed)
                        : consumed.Value ?? 0;
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

            if (PatchClass.Settings is { AccountWideBank: true })
            {
                sender.IncBanked(cashProp, -amount);
                senderDebited = true;
                sender.UpdateCoinValue();
                AccountBankStore.AddToAccountByOfflineCharacter(targetChar, cashProp, amount);
                ModManager.Log($"[LeyLineLedger] {sender.Name} transferred {amount:N0} pyreals to offline character '{targetName}' (account-wide bank file).", ModManager.LogLevel.Info);
                return true;
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

        if (!player.TryCreateItems($"{singleCurrency.Id} {amount}"))
        {
            player.SendMessage($"The bank tried to dispense {singleCurrency.Name}, but that item no longer exists in the world. Contact an admin.");
            ModManager.Log($"[LeyLineLedger] Failed to create WCID {singleCurrency.Id} ({singleCurrency.Name}) for player {player.Name}. Item missing from world DB.");
            return;
        }

        player.IncCash(-singleCost);
        player.SendMessage($"Withdrew {amount} {singleCurrency.Name} for {singleCost:N0}.  You have {player.GetBanked(PatchClass.Settings.CashProperty):N0} remaining.");
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

        if (!player.TryCreateItems(command))
        {
            player.SendMessage("The bank tried to dispense currency, but one or more items no longer exist in the world. Contact an admin.");
            ModManager.Log($"[LeyLineLedger] Failed to create currency command '{command}' for player {player.Name}. One or more items missing from world DB.");
            return;
        }

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

    [CommandHandler("economy", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld)]
    public static void HandleEconomy(Session session, params string[] parameters)
    {
        if (parameters.Length == 0)
        {
            EconomyBalancer.ShowEconomyReport(session);
            return;
        }

        var arg = parameters[0].ToLowerInvariant();
        switch (arg)
        {
            case "scan":
            case "force":
                EconomyBalancer.RunSupplyScan();
                session.Player.SendMessage("Economy scan complete. Check server logs.");
                break;
            case "loot":
                if (parameters.Length > 1 && parameters[1].Equals("force", StringComparison.OrdinalIgnoreCase))
                {
                    LootTracker.RunLootReport();
                    session.Player.SendMessage("Loot scan complete. Check server logs.");
                }
                else
                {
                    LootTracker.ShowLootReport(session);
                }
                break;
            default:
                session.Player.SendMessage("Usage: /economy | /economy scan | /economy loot");
                break;
        }
    }
}

public enum Transaction
{
    List,
    Give,
    Take,
    //Send,
}
