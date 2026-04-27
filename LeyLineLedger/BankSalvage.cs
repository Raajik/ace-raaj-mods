using ACE.Database;
using System.Globalization;
using System.Reflection;
using static ACE.Server.WorldObjects.Player;

namespace LeyLineLedger;

public static class BankSalvage
{
    public static void Handle(Session session, string[] parameters)
    {
        Player? player = session.Player;
        if (player is null)
            return;

        Settings? settings = PatchClass.Settings;
        if (settings?.SalvageBank.Enabled != true)
        {
            player.SendMessage("Bank salvage is disabled.");
            return;
        }

        MaybePurgeLegacyPooledSalvage(player, settings.SalvageBank);

        if (parameters.Length < 2 || string.IsNullOrEmpty(parameters[1]))
        {
            // Default to status when no subcommand
            if (settings.SalvageBank.Enabled)
            {
                SendStatus(player, settings.SalvageBank);
                return;
            }
            player.SendMessage("Usage: /bank salvage status | deposit | withdraw <material> [bags] | debug");
            player.SendMessage("  Shorthand: /b s st | /b s d | /b s w <material> [bags]");
            player.SendMessage("  Withdraw: /bank salvage withdraw <material> [bags] - spawns clean bags, debits bank.");
            return;
        }

        string sub = NormalizeSalvageSubcommand(parameters[1]);
        if (sub.Equals("debug", StringComparison.OrdinalIgnoreCase))
        {
            ToggleSalvageStatusWcids(player, settings.SalvageBank);
            return;
        }

        if (sub.Equals("status", StringComparison.OrdinalIgnoreCase))
        {
            SendStatus(player, settings.SalvageBank);
            return;
        }

if (sub.Equals("deposit", StringComparison.OrdinalIgnoreCase) ||
            sub.Equals("all", StringComparison.OrdinalIgnoreCase))
        {
            DepositAll(player, settings);
            return;
        }

        // Withdraw-style: spawns clean bags like /cisalvage, debits bank
        // TODO: Interface with Candeth Keep salvage quest NPCs for quest completion
        if (sub.Equals("withdraw", StringComparison.OrdinalIgnoreCase) ||
            sub.Equals("w", StringComparison.OrdinalIgnoreCase))
        {
            WithdrawBags(session, parameters, settings);
            return;
        }

        // Legacy: redeem deprecated in favor of withdraw
        if (sub.Equals("redeem", StringComparison.OrdinalIgnoreCase))
        {
            RedeemBags(session, parameters, settings);
            return;
        }

        player.SendMessage("Usage: /bank salvage status | deposit | redeem ...");
    }

    // Maps short tokens from /b s <token> ... (same as full words for /bank salvage ...).
    static string NormalizeSalvageSubcommand(string token)
    {
        if (string.IsNullOrEmpty(token))
            return "status";
        if (token.Equals("r", StringComparison.OrdinalIgnoreCase))
            return "redeem";
        if (token.Equals("d", StringComparison.OrdinalIgnoreCase))
            return "deposit";
        if (token.Equals("w", StringComparison.OrdinalIgnoreCase))
            return "withdraw";
        if (token.Equals("st", StringComparison.OrdinalIgnoreCase) || token.Equals("?", StringComparison.OrdinalIgnoreCase))
            return "status";
        if (token.Equals("db", StringComparison.OrdinalIgnoreCase) || token.Equals("wcids", StringComparison.OrdinalIgnoreCase))
            return "debug";
        return token;
    }

    static void ToggleSalvageStatusWcids(Player player, SalvageBankSettings sb)
    {
        if (sb.SalvageStatusWcidsTogglePropertyId <= 0)
        {
            player.SendMessage("Salvage WCID toggle is not configured (set SalvageBank.SalvageStatusWcidsTogglePropertyId to an unused PropertyInt). Admins can still use ShowWcidsInSalvageStatus.");
            return;
        }

        int cur = player.GetProperty((PropertyInt)sb.SalvageStatusWcidsTogglePropertyId) ?? 0;
        int next = cur != 0 ? 0 : 1;
        player.SetProperty((PropertyInt)sb.SalvageStatusWcidsTogglePropertyId, next);
        player.SendMessage(next != 0
            ? "Salvage bank status will show WCIDs in addition to names."
            : "Salvage bank status will show names only (WCIDs hidden).");
    }

    static bool ShouldShowSalvageWcids(Player player, SalvageBankSettings sb)
    {
        if (sb.ShowWcidsInSalvageStatus)
            return true;
        if (sb.SalvageStatusWcidsTogglePropertyId <= 0)
            return false;
        return (player.GetProperty((PropertyInt)sb.SalvageStatusWcidsTogglePropertyId) ?? 0) != 0;
    }

    static string? TryGetCachedWeenieName(uint wcid)
    {
        if (wcid == 0)
            return null;

        try
        {
            Weenie? w = DatabaseManager.World.GetCachedWeenie(wcid);
            return w?.GetName();
        }
        catch
        {
            return null;
        }
    }

    // Settings.json often puts the label under "// Name" -> NameDoc; plain "Name" may be empty.
    static string GetDepositRuleDisplayName(SalvageDepositRule rule)
    {
        if (!string.IsNullOrWhiteSpace(rule.Name))
            return rule.Name.Trim();

        if (!string.IsNullOrWhiteSpace(rule.NameDoc) &&
            !rule.NameDoc.Equals("Display name for messages.", StringComparison.Ordinal))
            return rule.NameDoc.Trim();

        return TryGetCachedWeenieName(rule.WeenieClassId)?.Trim() ?? "";
    }

    static string? _overtinkedEffectMethod;

    static string GetDynamicEffect(SalvageDepositRule rule)
    {
        var name = GetDepositRuleDisplayName(rule);
        if (string.IsNullOrWhiteSpace(name)) return rule.Effect;

        // Try Overtinked.SalvageEffectApplier.GetMaterialEffect via reflection
        if (_overtinkedEffectMethod == null)
        {
            _overtinkedEffectMethod = "";
            try
            {
                var asm = AppDomain.CurrentDomain.GetAssemblies()
                    .FirstOrDefault(a => string.Equals(a.GetName().Name, "Overtinked", StringComparison.Ordinal));
                var t = asm?.GetType("Overtinked.SalvageEffectApplier");
                var mi = t?.GetMethod("GetMaterialEffect", BindingFlags.Public | BindingFlags.Static, null, new[] { typeof(string) }, null);
                if (mi != null)
                {
                    var result = mi.Invoke(null, new object[] { name });
                    if (result is string s && !string.IsNullOrWhiteSpace(s))
                        return s;
                }
            }
            catch { }
        }
        else if (_overtinkedEffectMethod == "")
        {
            // Already tried and failed, use static effect
        }

        return rule.Effect;
    }

    static string FormatSalvageBagUnitsLine(long units, int unitsPerBag, SalvageDepositRule rule, bool showWcid)
    {
        string nameBase = GetDepositRuleDisplayName(rule);
        if (string.IsNullOrEmpty(nameBase))
            nameBase = $"WCID {rule.WeenieClassId}";
        string compact = CompactSalvageMaterialNameForDeposit(nameBase);
        if (string.IsNullOrEmpty(compact))
            compact = $"WCID {rule.WeenieClassId}";

        string amount = FormatSalvageAsBagFraction(units, unitsPerBag);
        string line;
        if (showWcid)
            line = $"  {amount} {compact} [WCID {rule.WeenieClassId}]";
        else
            line = $"  {amount} {compact}";

        var effect = GetDynamicEffect(rule);
        if (!string.IsNullOrWhiteSpace(effect))
            line += $", {effect.Trim()}";

        if (!string.IsNullOrWhiteSpace(rule.Description))
            line += $" — {rule.Description.Trim()}";

        return line;
    }

    static string FormatSalvageAsBagFraction(long units, int unitsPerBag)
    {
        if (unitsPerBag <= 0)
            return $"{units:N0} units";

        decimal bags = (decimal)units / unitsPerBag;
        return bags.ToString("F2", CultureInfo.InvariantCulture);
    }

    static void SendStatus(Player player, SalvageBankSettings sb)
    {
        bool showWcid = ShouldShowSalvageWcids(player, sb);
        int unitsPerBag = sb.Redeem.UnitsPerBag;

        IReadOnlyList<SalvageDepositRule> rules = sb.DepositRules;

        // Read all balances and group by category
        var entries = new List<(int ruleIndex, long units, SalvageSkillCategory category)>();
        for (int i = 0; i < rules.Count; i++)
        {
            int prop = ResolveMaterialBankProperty(sb, i, rules[i]);
            long u = player.GetBanked(prop);
            entries.Add((i, u, rules[i].Category));
        }

        // Define category display order
        var categoryOrder = new[]
        {
            SalvageSkillCategory.ArmorTinkering,
            SalvageSkillCategory.WeaponTinkering,
            SalvageSkillCategory.ItemTinkering,
            SalvageSkillCategory.MagicItemTinkering,
            SalvageSkillCategory.Special,
            SalvageSkillCategory.Useless,
        };

        var byCategory = entries
            .GroupBy(e => e.category)
            .ToDictionary(g => g.Key, g => g.OrderBy(e => GetDepositRuleDisplayName(rules[e.ruleIndex]), StringComparer.OrdinalIgnoreCase).ToList());

        player.SendMessage(unitsPerBag > 0
            ? "Banked salvage (amounts are bag-sized units; redeem uses whole bags only):"
            : "Banked salvage (by material):");

        foreach (var cat in categoryOrder)
        {
            if (!byCategory.TryGetValue(cat, out var list)) continue;

            string header = cat switch
            {
                SalvageSkillCategory.ArmorTinkering => "[Armor Tinkering]",
                SalvageSkillCategory.WeaponTinkering => "[Weapon Tinkering]",
                SalvageSkillCategory.ItemTinkering => "[Item Tinkering]",
                SalvageSkillCategory.MagicItemTinkering => "[Magic Item Tinkering]",
                SalvageSkillCategory.Special => "[Special]",
                SalvageSkillCategory.Useless => "[Useless --]",
                _ => $"[{cat}]",
            };
            player.SendMessage(header);

            foreach (var (ruleIndex, units, _) in list)
            {
                SalvageDepositRule rule = rules[ruleIndex];
                player.SendMessage(FormatSalvageBagUnitsLine(units, unitsPerBag, rule, showWcid));
            }
        }
    }

    static void MaybePurgeLegacyPooledSalvage(Player player, SalvageBankSettings sb)
    {
        int propId = sb.LegacyPooledSalvagePropertyToClear;
        if (propId <= 0)
            return;

        long v = player.GetBanked(propId);
        if (v <= 0)
            return;

        player.IncBanked(propId, -v);
        player.SendMessage($"Obsolete pooled salvage removed ({v:N0} units). Banking is per material only.");
    }

    static void RedeemBags(Session session, string[] parameters, Settings settings)
    {
        Player? player = session.Player;
        if (player is null)
            return;

        SalvageBankSettings sb = settings.SalvageBank;
        SalvageRedeemSettings r = sb.Redeem;
        if (!r.Enabled)
        {
            player.SendMessage("Salvage bag redemption is disabled.");
            return;
        }

        if (r.UnitsPerBag <= 0)
        {
            player.SendMessage("Salvage redeem: UnitsPerBag must be positive in LeyLineLedger settings.");
            return;
        }

        if (parameters.Length < 3)
        {
            player.SendMessage("Usage: /bank salvage redeem <material name or WCID> [bags]");
            return;
        }

        string token = parameters[2];

        int? ruleIndex = TryResolveDepositRuleIndex(sb.DepositRules, token);
        if (ruleIndex is null)
        {
            player.SendMessage($"No deposit rule matches \"{token}\". Use a stack salvage WCID or part of the material name (see /bank salvage status).");
            return;
        }

        int ri = ruleIndex.Value;
        SalvageDepositRule rule = sb.DepositRules[ri];
        int bankProp = ResolveMaterialBankProperty(sb, ri, rule);
        long banked = player.GetBanked(bankProp);
        long maxBags = banked / r.UnitsPerBag;
        if (maxBags <= 0)
        {
            player.SendMessage($"You need at least {r.UnitsPerBag:N0} banked units for that material ({banked:N0} banked).");
            return;
        }

        int wantBags = 1;
        if (parameters.Length >= 4)
        {
            if (!int.TryParse(parameters[3], out wantBags) || wantBags < 1)
            {
                player.SendMessage("Usage: /bank salvage redeem <material or WCID> [bags]  — bags must be a positive integer.");
                return;
            }
        }

        uint bagWcid = rule.OutputBagWeenieClassId != 0 ? rule.OutputBagWeenieClassId : rule.WeenieClassId;
        if (bagWcid == 0)
        {
            player.SendMessage("Salvage redeem: this deposit rule needs a non-zero WeenieClassId or OutputBagWeenieClassId.");
            return;
        }

        int bags = (int)Math.Min(maxBags, wantBags);
        int done = RedeemBagLoop(player, sb, bankProp, r, bagWcid, bags, rule);
        if (done > 0)
        {
            string matLabel = GetDepositRuleDisplayName(rule);
            if (string.IsNullOrEmpty(matLabel))
                matLabel = "material";
            player.SendMessage($"Redeemed {done} bag(s) for {matLabel} ({done * r.UnitsPerBag:N0} units). Remaining for this material: {player.GetBanked(bankProp):N0}.");
        }
    }

    // When redeeming into the same WCID as the deposited stack salvage, set StackSize or Structure to UnitsPerBag. Dedicated "full bag" weenies (e.g. 29576) only get Workmanship.
    static void ApplyRedeemedSalvageShape(WorldObject bag, int units, SalvageRedeemSettings r, bool outputIsDepositMaterial)
    {
        if (units <= 0)
            units = 1;

        if (!outputIsDepositMaterial)
        {
            if (r.OutputWorkmanship is >= 1 and <= 10)
                bag.Workmanship = r.OutputWorkmanship;
            return;
        }

        if (r.OutputWorkmanship is >= 1 and <= 10)
            bag.Workmanship = r.OutputWorkmanship;

        ushort maxStack = bag.MaxStackSize ?? 0;
        if (maxStack > 1)
        {
            bag.StackSize = (ushort)Math.Min(units, maxStack);
            return;
        }

        ushort maxStructure = bag.MaxStructure ?? 0;
        if (maxStructure > 0)
        {
            bag.Structure = (ushort)Math.Min(units, maxStructure);
            return;
        }
    }

    static int RedeemBagLoop(Player player, SalvageBankSettings sb, int bankProp, SalvageRedeemSettings r, uint bagWcid, int bags, SalvageDepositRule? materialRule)
    {
        bool outputMatchesDepositMaterial = materialRule is not null
            && materialRule.WeenieClassId != 0
            && bagWcid == materialRule.WeenieClassId;

        int done = 0;
        for (int i = 0; i < bags; i++)
        {
            WorldObject? bag = WorldObjectFactory.CreateNewWorldObject(bagWcid);
            if (bag == null)
            {
                player.SendMessage($"Could not create salvage bag (WCID {bagWcid}). Check world DB.");
                ModManager.Log($"[LeyLineLedger] Failed to create salvage bag WCID {bagWcid}. Item missing from world DB.");
                break;
            }

            ApplyRedeemedSalvageShape(bag, r.UnitsPerBag, r, outputMatchesDepositMaterial);

            // Must use TryCreateInInventoryWithNetworking so the client receives GameMessageCreateObject; TryAddToInventory alone can leave the item server-only.
            if (!player.TryCreateInInventoryWithNetworking(bag))
            {
                bag.Destroy();
                if (done == 0)
                    player.SendMessage("Your inventory cannot hold a salvage bag. Make space and try again.");
                else
                    player.SendMessage($"Inventory full after {done} bag(s). Remaining banked units: {player.GetBanked(bankProp):N0}.");
                break;
            }

            player.IncBanked(bankProp, -r.UnitsPerBag);
            done++;
        }

        return done;
    }

    static int? TryResolveDepositRuleIndex(IReadOnlyList<SalvageDepositRule> rules, string token)
    {
        if (rules.Count == 0)
            return null;

        if (uint.TryParse(token, out uint wcid))
        {
            for (int i = 0; i < rules.Count; i++)
            {
                if (rules[i].WeenieClassId == wcid)
                    return i;
            }
        }

        string t = token.Trim();
        for (int i = 0; i < rules.Count; i++)
        {
            string label = GetDepositRuleDisplayName(rules[i]);
            if (label.Length > 0 && label.Contains(t, StringComparison.OrdinalIgnoreCase))
                return i;
        }

        return null;
    }

    static int? TryResolveDepositRuleIndexByWcid(IReadOnlyList<SalvageDepositRule> rules, uint wcid)
    {
        if (rules.Count == 0 || wcid == 0)
            return null;

        for (int i = 0; i < rules.Count; i++)
        {
            foreach (uint id in GetDepositSourceWcids(rules[i]))
            {
                if (id == wcid)
                    return i;
            }
        }

        return null;
    }

    // RecipeManager.CreateItem: bank matching salvage stacks using the same rules as /bank salvage deposit.
    public static void TryInstantDepositFromRecipeCreate(Player player, WorldObject created)
    {
        if (player is null || created is null)
            return;

        Settings? settings = PatchClass.Settings;
        if (settings?.SalvageBank.Enabled != true || !settings.SalvageBank.DirectDepositOnSalvage)
            return;

        SalvageBankSettings sb = settings.SalvageBank;
        if (sb.DepositRules.Count == 0)
            return;

        if (player.FindObject(created.Guid.Full, SearchLocations.MyInventory) is null)
            return;

        int? ruleIndex = TryResolveDepositRuleIndexByWcid(sb.DepositRules, created.WeenieClassId);
        if (ruleIndex is null)
            return;

        SalvageDepositRule rule = sb.DepositRules[ruleIndex.Value];
        if (rule.WeenieClassId == 0 || rule.UnitsPerItem <= 0)
            return;

        int units = PatchClass.GetSalvageMaterialUnitCount(created);
        if (units <= 0)
            return;

        MaybePurgeLegacyPooledSalvage(player, sb);

        if (!player.TryConsumeFromInventoryWithNetworking(created, units))
            return;

        int prop = ResolveMaterialBankProperty(sb, ruleIndex.Value, rule);
        long add = (long)units * rule.UnitsPerItem;
        player.IncBanked(prop, add);

        string label = GetLabelForSalvageBankProperty(sb, prop);
        if (string.IsNullOrEmpty(label))
            label = GetDepositRuleDisplayName(rule);
        if (string.IsNullOrEmpty(label))
            label = $"WCID {rule.WeenieClassId}";
        string compact = CompactSalvageMaterialNameForDeposit(label);
        List<(long amount, string name)> items = new() { (add, compact) };
        player.SendMessage($"Banked {FormatDepositedSalvageSummary(items, sb.Redeem.UnitsPerBag)} (/bank salvage status).");
    }

    static int ResolveMaterialBankProperty(SalvageBankSettings sb, int ruleIndex, SalvageDepositRule rule)
    {
        if (rule.BankProperty != 0)
            return rule.BankProperty;
        return sb.FirstMaterialBankPropertyId + ruleIndex;
    }

    static List<uint> GetDepositSourceWcids(SalvageDepositRule rule)
    {
        List<uint> list = new();
        void Add(uint w)
        {
            if (w == 0)
                return;
            if (!list.Contains(w))
                list.Add(w);
        }

        Add(rule.WeenieClassId);
        if (rule.OutputBagWeenieClassId != 0 && rule.OutputBagWeenieClassId != rule.WeenieClassId)
            Add(rule.OutputBagWeenieClassId);
        if (rule.AdditionalDepositWeenieClassIds is { Count: > 0 })
        {
            foreach (uint v in rule.AdditionalDepositWeenieClassIds)
                Add(v);
        }

        return list;
    }

    static int CountBankableForDepositRule(Player player, SalvageDepositRule rule)
    {
        int n = 0;
        foreach (uint wcid in GetDepositSourceWcids(rule))
            n += PatchClass.CountBankableWcid(player, wcid);
        return n;
    }

    static int TryRemoveSalvageForDepositRule(Player player, SalvageDepositRule rule, int maxRemove)
    {
        if (maxRemove <= 0)
            return 0;

        int removed = 0;
        foreach (uint wcid in GetDepositSourceWcids(rule))
        {
            if (removed >= maxRemove)
                break;
            int need = maxRemove - removed;
            removed += TryRemoveWcidFromInventory(player, wcid, need);
        }

        return removed;
    }

    static void DepositAll(Player player, Settings settings)
    {
        SalvageBankSettings sb = settings.SalvageBank;
        Dictionary<int, long> credits = new();
        for (int i = 0; i < sb.DepositRules.Count; i++)
        {
            SalvageDepositRule rule = sb.DepositRules[i];
            if (rule.WeenieClassId == 0 || rule.UnitsPerItem <= 0)
                continue;

            int available = CountBankableForDepositRule(player, rule);
            if (available <= 0)
                continue;

            int removed = TryRemoveSalvageForDepositRule(player, rule, available);
            if (removed <= 0)
                continue;

            int prop = ResolveMaterialBankProperty(sb, i, rule);
            long add = (long)removed * rule.UnitsPerItem;
            credits.TryGetValue(prop, out long cur);
            credits[prop] = cur + add;
        }

        if (credits.Count == 0)
        {
            player.SendMessage("No items matched salvage deposit rules (configure LeyLineLedger SalvageBank.DepositRules).");
            return;
        }

        foreach (KeyValuePair<int, long> kv in credits)
            player.IncBanked(kv.Key, kv.Value);

        List<(long amount, string name)> items = new();
        foreach (KeyValuePair<int, long> kv in credits)
        {
            string label = GetLabelForSalvageBankProperty(sb, kv.Key);
            if (string.IsNullOrEmpty(label))
                label = $"property {kv.Key}";
            string compact = CompactSalvageMaterialNameForDeposit(label);
            items.Add((kv.Value, compact));
        }

        player.SendMessage($"Deposited {FormatDepositedSalvageSummary(items, sb.Redeem.UnitsPerBag)}. Use /bank salvage status to review.");

        TryGrantSalvageHoarder(player, sb);
    }

    static void TryGrantSalvageHoarder(Player player, SalvageBankSettings sb)
    {
        try
        {
            long totalBags = 0;
            for (int i = 0; i < sb.DepositRules.Count; i++)
            {
                int prop = ResolveMaterialBankProperty(sb, i, sb.DepositRules[i]);
                long units = player.GetBanked(prop);
                totalBags += units / sb.Redeem.UnitsPerBag;
            }

            if (totalBags < 50) return;

            var asm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.GetName().Name == "AchievementUnlocked");
            if (asm == null) return;

            var mgr = asm.GetType("AchievementUnlocked.AchievementManager");
            var has = mgr?.GetMethod("HasAchievement", new[] { typeof(Player), typeof(string) });
            var unlock = mgr?.GetMethod("UnlockAchievement", new[] { typeof(Player), typeof(string), typeof(bool) });
            if (has == null || unlock == null) return;

            var hasResult = has.Invoke(null, new object[] { player, "SalvageHoarder" });
            if (hasResult is bool b && b) return;

            unlock.Invoke(null, new object[] { player, "SalvageHoarder", false });
        }
        catch { /* silently fail if AchievementUnlocked is not present */ }
    }

    static string CompactSalvageMaterialNameForDeposit(string displayName)
    {
        string s = displayName.Trim();
        const string prefix = "Salvaged ";
        if (s.StartsWith(prefix, StringComparison.OrdinalIgnoreCase))
            return s.Substring(prefix.Length).Trim();
        return s;
    }

    static string FormatDepositedSalvageSummary(IReadOnlyList<(long amount, string name)> items, int unitsPerBag)
    {
        if (items.Count == 0)
            return "";

        List<string> parts = new(items.Count);
        foreach ((long amount, string name) in items)
        {
            string qty = unitsPerBag > 0
                ? ((decimal)amount / unitsPerBag).ToString("F2", CultureInfo.InvariantCulture)
                : amount.ToString("N0", CultureInfo.InvariantCulture);
            parts.Add($"{qty} {name}");
        }

        if (parts.Count == 1)
            return parts[0];
        if (parts.Count == 2)
            return $"{parts[0]} and {parts[1]}";

        return string.Join(", ", parts.GetRange(0, parts.Count - 1)) + ", and " + parts[^1];
    }

    static string GetLabelForSalvageBankProperty(SalvageBankSettings sb, int bankProperty)
    {
        for (int i = 0; i < sb.DepositRules.Count; i++)
        {
            SalvageDepositRule rule = sb.DepositRules[i];
            if (ResolveMaterialBankProperty(sb, i, rule) == bankProperty)
                return GetDepositRuleDisplayName(rule);
        }

        return "";
    }

    static int TryRemoveWcidFromInventory(Player player, uint wcid, int maxRemove)
    {
        if (maxRemove <= 0)
            return 0;

        int removed = 0;
        while (removed < maxRemove)
        {
            WorldObject? stack = null;
            foreach (WorldObject wo in player.AllItems())
            {
                if (wo.WeenieClassId == wcid)
                {
                    stack = wo;
                    break;
                }
            }

            if (stack is null)
            {
                foreach (WorldObject wo in player.GetEquippedObjectsOfWCID(wcid))
                {
                    stack = wo;
                    break;
                }
            }

            if (stack is null)
                break;

            int unitsOnObject = PatchClass.GetSalvageMaterialUnitCount(stack);
            int take = Math.Min(maxRemove - removed, unitsOnObject);
            if (player.TryConsumeFromInventoryWithNetworking(stack, take))
            {
                removed += take;
                continue;
            }

            if (player.TryConsumeFromEquippedObjectsWithNetworking(stack, take))
            {
                removed += take;
                continue;
            }

            break;
        }

        return removed;
    }

    static void CreateCleanBag(Session session, string[] parameters)
    {
        Player? player = session.Player;
        if (player is null)
            return;

        if (parameters.Length < 3)
        {
            player.SendMessage("Usage: /bank salvage create <material> - spawns clean W10 bag.");
            player.SendMessage("Example: /bank salvage create iron");
            return;
        }

        string materialToken = parameters[2];

        if (!Enum.TryParse(materialToken, true, out MaterialType materialType))
        {
            player.SendMessage($"Unknown material: {materialToken}");
            return;
        }

        if (!Player.MaterialSalvage.TryGetValue((int)materialType, out int wcid) || wcid == 0)
        {
            player.SendMessage($"Unknown material: {materialToken}");
            return;
        }

        WorldObject? bag = WorldObjectFactory.CreateNewWorldObject((uint)wcid);
        if (bag == null)
        {
            player.SendMessage($"Could not create salvage bag (WCID {wcid}). Check world DB.");
            ModManager.Log($"[LeyLineLedger] Failed to create salvage bag WCID {wcid}. Item missing from world DB.");
            return;
        }

        bag.Name = "Salvage (100)";
        bag.Structure = 100;
        bag.ItemWorkmanship = 100;
        bag.NumItemsInMaterial = 10;

        if (!player.TryCreateInInventoryWithNetworking(bag))
        {
            bag.Destroy();
            player.SendMessage("No inventory space.");
            return;
        }

        player.SendMessage($"Created clean W10 bag of {materialToken} (/bank salvage create {materialToken})");
    }

    static void WithdrawBags(Session session, string[] parameters, Settings settings)
    {
        Player? player = session.Player;
        if (player is null)
            return;

        SalvageBankSettings sb = settings.SalvageBank;
        int unitsPerBag = sb.Redeem.UnitsPerBag;
        if (unitsPerBag <= 0)
        {
            player.SendMessage("Salvage withdraw: UnitsPerBag must be positive in settings.");
            return;
        }

        if (parameters.Length < 3)
        {
            player.SendMessage("Usage: /bank salvage withdraw <material> [bags]");
            player.SendMessage("Example: /bank salvage withdraw steel 2  ->  creates 2 W10 steel bags");
            player.SendMessage("Tip: Use 555 for 5 bags, 5555 for 5 bags (only uses what's available).");
            return;
        }

        string materialToken = parameters[2];
        int? ruleIndex = TryResolveDepositRuleIndex(sb.DepositRules, materialToken);
        if (ruleIndex is null)
        {
            player.SendMessage($"Unknown material: {materialToken}. Use material name (e.g. steel, iron).");
            return;
        }

        int ri = ruleIndex.Value;
        SalvageDepositRule rule = sb.DepositRules[ri];
        int bankProp = ResolveMaterialBankProperty(sb, ri, rule);
        long banked = player.GetBanked(bankProp);

        // Error: below minimum for even 1 bag
        if (banked < unitsPerBag)
        {
            player.SendMessage($"You need at least {unitsPerBag:N0} banked units of {materialToken} to withdraw. (You have {banked:N0} banked).");
            return;
        }

        // Calculate max withdraw
        long maxBags = banked / unitsPerBag;

        int wantBags = 1;
        if (parameters.Length >= 4)
        {
            if (!int.TryParse(parameters[3], out wantBags) || wantBags < 1)
            {
                player.SendMessage("Usage: /bank salvage withdraw <material> [bags] - bags must be a positive integer.");
                return;
            }
        }

        // Cap to available, allow requesting more
        int bags = (int)Math.Min(maxBags, wantBags);
        
        // Check if player requested more than available
        string warning = "";
        if (wantBags > maxBags)
        {
            warning = $" Withdrawing all usable {materialToken} ({maxBags} bag(s)).";
        }

        // Spawn clean bags like CISalvage
        int done = SpawnCleanBags(player, rule, bags);

        if (done > 0)
        {
            long debited = done * unitsPerBag;
            player.IncBanked(bankProp, -debited);
            string label = GetDepositRuleDisplayName(rule);
            player.SendMessage($"Withdrew {done} W10 {label} bag(s) ({debited:N0} units). Remaining: {player.GetBanked(bankProp):N0}.{warning}");
        }
    }

    static int SpawnCleanBags(Player player, SalvageDepositRule rule, int bags)
    {
        uint wcid = rule.WeenieClassId;
        if (wcid == 0)
            return 0;

        int done = 0;
        for (int i = 0; i < bags; i++)
        {
            WorldObject? bag = WorldObjectFactory.CreateNewWorldObject((uint)wcid);
            if (bag == null)
            {
                player.SendMessage($"Could not create salvage bag (WCID {wcid}). Check world DB.");
                ModManager.Log($"[LeyLineLedger] Failed to create salvage bag WCID {wcid}. Item missing from world DB.");
                break;
            }

            bag.Name = "Salvage (100)";
            bag.Structure = 100;
            bag.ItemWorkmanship = 100;
            bag.NumItemsInMaterial = 10;

            if (!player.TryCreateInInventoryWithNetworking(bag))
            {
                bag.Destroy();
                break;
            }
            done++;
        }

        return done;
    }

    // ── Retroactive achievement check on login ─────────────────────────────

    [HarmonyPostfix]
    [HarmonyPatch(typeof(Player), nameof(Player.PlayerEnterWorld))]
    public static void PostPlayerEnterWorldSalvageHoarder(Player __instance)
    {
        if (__instance is null) return;
        var s = PatchClass.Settings;
        if (s?.SalvageBank.Enabled != true) return;
        TryGrantSalvageHoarder(__instance, s.SalvageBank);
    }
}
