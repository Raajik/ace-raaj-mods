namespace QOL;

[HarmonyPatchCategory(nameof(Features.TownNetworkToll))]
internal static class TownNetworkToll
{
    // ── Arcanum Mage Names ─────────────────────────────────────────────────
    static readonly string[] MageNames =
    {
        "Master Adren", "Zahir al-Sura", "Kento Shino", "Elize of Lytelthorpe",
        "Baelin the Wise", "Sorceress Janna", "Ismet the Unseen", "Hideo Yamato",
        "Archmage Prynne", "Sister Valerane", "Brother Maric", "Vizier Kadhir",
        "Mistress Sayo", "Alchemist Torin", "High Mage Selene", "Kendrick the Red",
        "Oryn of Cragstone", "Master Wen-Lo", "Falstaff the Elder", "Arcanist Vael",
        "Scribe Elara", "Magus Rathburn", "Inquisitor Calix", "Dame Isolde",
        "Rasha bint-Zayd", "Lorekeeper Thistle", "Master Kaelen", "Adept Sora",
        "High Arcanist Malakai", "Warden Elias", "Magister Vorne", "Apprentice Keiji",
        "Elder Faolan", "Sorceress Myra", "Archivist Zephyr", "Master Reynard",
        "Sylas the Steady", "Kora of Hebe", "Magistrate Thorne", "High Enchanter Nox",
        "Pious Julian", "Seer Anisa", "Grand Vizier Jameel", "Master Ryochi",
        "Alchemilla the Pure", "Justin Time", "Portia Lyne", "Phil Terscarab",
        "Manny Fold", "Lev T. Tate",
    };

    // ── Flavor Messages ────────────────────────────────────────────────────
    static readonly string[] FlavorMessages =
    {
        // Professional / Official
        "Your payment of [Cost] [Item] has been received. The Arcanum thanks you for keeping the lines of travel open.",
        "Transaction successful. Your [Cost] [Item] donation directly funds the stabilization of this rift. Safe travels!",
        "On behalf of the Portal Authority, we thank you for the [Cost] [Item]. The Town Network is yours to use.",
        "The ley lines are hungry today. Thank you for the [Cost] [Item] to keep them sated.",
        // Lore / Reagent Focused
        "I've converted your [Cost] [Item] into fresh focus-dust. You may proceed through the portal now.",
        "The Arcanum was running low on reagents; your [Cost] [Item] couldn't have come at a better time!",
        "It takes a lot of mana to fold space. Your [Cost] [Item] covers the catalyst costs perfectly.",
        "Silver Scarabs aren't cheap! Thanks for the [Cost] [Item]—it keeps the portal glows blue instead of... well, fire-red.",
        // Slightly Eccentric / Tired
        "I've been holding this rift open for six hours. Your [Cost] [Item] is the only thing keeping me awake. Move along!",
        "Don't mind the whistling sound in the portal; your [Cost] [Item] covers the basic safety insurance, so you should be fine.",
        "Fine, fine! Take the portal. The [Cost] [Item] is going straight into my research fund anyway.",
        "You donate [Cost] [Item]. Please try not to sneeze while inside the stream—it messes with the coordinates.",
        // Short & Sweet
        "Received [Cost] [Item]. The path is clear. Good luck out there!",
        "Your continued support for the Arcanum is appreciated. [Cost] [Item] deducted.",
        "Payment processed: [Cost] [Item]. Don't forget to bind at a Lifestone!",
        // Maintenance & Bureaucracy
        "Processing... Payment of [Cost] [Item] accepted. Please wait for the portal to cycle before stepping through.",
        "Your [Cost] [Item] has been filed under Infrastructure Upkeep. The Arcanum values your cooperation.",
        "Registration of [Cost] [Item] complete. The Town Network remains synchronized thanks to your contribution.",
        "The Ministry of Transit thanks you for the [Cost] [Item]. Keep your arms and legs inside the portal stream at all times.",
        "I've logged your [Cost] [Item]. It's a small price to pay to avoid a run-in with a Drudge, isn't it?",
        "Your [Cost] [Item] covers the logistical overhead for this transit. The rift is now locked to your signature.",
        "Payment confirmed. The Arcanum reminds you that we are not responsible for items lost during teleportation.",
        "A fair exchange! [Cost] [Item] for a journey that would take a week on foot.",
        "Excellent. This [Cost] [Item] will go toward the new portal focus they're building in Al-Jalima.",
        "Receipt generated for [Cost] [Item]. Thank you for supporting Dereth's most reliable travel method.",
        // Arcane Science
        "The static buildup is intense today! Your [Cost] [Item] helps us ground the excess energy safely.",
        "With this [Cost] [Item], I can finally stabilize the harmonic resonance of this gate. You may pass.",
        "The mana tide is low; your [Cost] [Item] is exactly what I needed to boost the signal.",
        "Don't worry about that purple smoke. The [Cost] [Item] you just paid ensures the filtration system stays active.",
        "Your [Cost] [Item] has been consumed by the portal's anchor. The path is secure for the next few minutes.",
        "Wait for the chime! Okay, [Cost] [Item] received. The spatial rift is now calibrated to your destination.",
        "Quantum entanglement is a costly business. Thank you for the [Cost] [Item] contribution!",
        "I'm injecting your [Cost] [Item] value directly into the focal crystal. Watch your eyes, it's about to get bright.",
        "Maintaining the Town Network is a 24-hour job. Your [Cost] [Item] keeps the candles burning and the portals humming.",
        "The Arcanum's records show you are a frequent traveler. Thank you for the [Cost] [Item] toward our upkeep.",
        // Character & Quirk
        "Is that [Cost] [Item]? Perfect. I was just about to run out of components for the evening shift.",
        "Ugh, my hands are covered in sulfur. Just drop the [Cost] [Item] in the bin there. Thanks!",
        "You're the tenth person this hour! At least your [Cost] [Item] is actually authentic—the last guy tried to pay in lead.",
        "I love my job, but these portals are fickle. Your [Cost] [Item] makes the stress worth it!",
        "Hurry along now! I can't keep the rift open forever, even with your [Cost] [Item] assisting.",
        "Nice to see a friendly face. The [Cost] [Item] is appreciated, traveler. Stay safe out there!",
        "The High Mages are breathing down my neck about efficiency. Your [Cost] [Item] helps our branch's numbers!",
        "I've seen some strange things inside the network. Your [Cost] [Item] helps me pay for the therapy! Just kidding... mostly.",
        "Right then. [Cost] [Item] taken. Try not to leave any lingering magical footprints on the other side.",
        "Your [Cost] [Item] is much appreciated. It's hard work being this magically gifted, you know?",
        // Short & Pithy
        "Access granted. Your [Cost] [Item] has been accepted by the Arcanum.",
        "The toll is paid. [Cost] [Item] received. Safe journey, adventurer!",
        "Infrastructure tax of [Cost] [Item] applied. You are cleared for transport.",
        "Contribution of [Cost] [Item] noted. The portal awaits.",
        "Thank you. Your [Cost] [Item] keeps the world connected. Step through!",
    };

    // ── Free Travel Flavor (poor players) ──────────────────────────────────
    static readonly string[] FreeTravelFlavors =
    {
        "I'll let you through, but just this once. Don't tell anyone and don't forget that this place runs on tapers!",
        "The Arcanum doesn't need to know about this. Go on—just remember who kept the lights on when you're rolling in pyreals.",
        "Shh. Portal's open. Not a word to the Ministry, and if anyone asks, you paid in tapers like everyone else.",
        "Between you and me, the ley lines don't care about your bank account. Step through—but next time, bring tapers.",
        "I'm feeling charitable, and you're feeling broke. One free pass. After that, this place runs on tapers, not goodwill.",
        "Don't make a habit of this. The Arcanum audits these logs, and I can't keep writing 'paid in tapers' forever.",
        "Look, I've got a quota and you've got empty pockets. Go. But tell everyone the Town Network runs on tapers—or I'll deny everything.",
        "One foot in front of the other, straight into the portal. We never had this conversation, and you definitely paid in tapers.",
        "The High Mages would have my head if they knew. Quick, before the next audit—just remember: tapers. Always tapers.",
        "Normally I'd turn you away, but I've been there. One free ride. After this, though? I'm not a charity. This place runs on tapers.",
        "Wink-wink, nudge-nudge, you've got no money and I've got a soft spot. Go. And if anyone asks, you slipped me a handful of tapers.",
        "The rift doesn't discriminate, but the Arcanum sure does. I'll look the other way this time—just don't forget what keeps these portals humming.",
    };

    // ── Payment Result ─────────────────────────────────────────────────────
    readonly record struct PaymentResult(bool Success, long Cost, string ItemName, int AmountTaken, int Remaining);

    // ── Harmony: Portal requirement check ──────────────────────────────────
    [HarmonyPostfix]
    [HarmonyPatch(typeof(Portal), nameof(Portal.CheckUseRequirements), new Type[] { typeof(WorldObject) })]
    public static void PostPortalCheckUseRequirements(WorldObject activator, Portal __instance, ref ActivationResult __result)
    {
        if (S.Settings is not { EnableTownNetworkToll: true })
            return;

        if (activator is not Player player || player.Session?.Network == null || __instance == null)
            return;

        if (!__result.Success)
            return;

        var toll = S.Settings.TownNetworkToll;
        if (!IsTownNetworkPortal(__instance, toll))
            return;

        long fee = ComputeDynamicFee(player, toll);
        var mode = GetPlayerPaymentMode(player);

        if (mode == TollPaymentMode.ComponentsFirst && CanPayWithComponents(player, toll, out _))
            return;

        long bank = GetBankedPyreals(player, toll.BankCashProperty);

        // Free travel for players with less than 50,000 pyreals
        if (bank < 50_000)
            return;

        if (bank >= fee)
            return;

        if (toll.InsufficientFundsMode == TownNetworkInsufficientFundsMode.DrainAll && bank > 0)
            return;

        player.SendMessage($"The Arcanum turns you away: your bank holds {bank:N0} pyreals, but the Town Network toll is {fee:N0}.", ChatMessageType.System);
        __result = new ActivationResult(false);
    }

    // ── Harmony: Debit on portal use ───────────────────────────────────────
    [HarmonyPrefix]
    [HarmonyPatch(typeof(Portal), nameof(Portal.ActOnUse), new Type[] { typeof(WorldObject) })]
    public static void PrePortalActOnUse(WorldObject activator, Portal __instance)
    {
        if (S.Settings is not { EnableTownNetworkToll: true })
            return;

        if (activator is not Player player || __instance == null)
            return;

        var toll = S.Settings.TownNetworkToll;
        if (!IsTownNetworkPortal(__instance, toll))
            return;

        long fee = ComputeDynamicFee(player, toll);
        ProcessPayment(player, fee, toll, "Town Network portal");
    }

    // ── Marketplace Recall Debit ───────────────────────────────────────────
    internal static bool TryDebitMarketplaceRecall(Player player)
    {
        if (S.Settings is not { EnableTownNetworkToll: true })
            return true;

        var toll = S.Settings.TownNetworkToll;
        if (!toll.ChargeMarketplaceRecall)
            return true;

        long fee = ComputeDynamicFee(player, toll);
        return ProcessPayment(player, fee, toll, "marketplace recall");
    }

    // ── Core Payment Logic ─────────────────────────────────────────────────
    static bool ProcessPayment(Player player, long fee, TownNetworkTollSettings toll, string context)
    {
        // Free travel for players with less than 50,000 pyreals in the bank
        long bank = GetBankedPyreals(player, toll.BankCashProperty);
        if (bank < 50_000)
        {
            TryGrantExpensiveConvenience(player);
            SendFreeTravelFlavor(player);
            return true;
        }

        var mode = GetPlayerPaymentMode(player);

        // ComponentsFirst: try components, fall back to cash
        if (mode == TollPaymentMode.ComponentsFirst)
        {
            if (TryPayWithComponents(player, toll, out var compResult))
            {
                SendFlavor(player, compResult);
                RecordTollSpending(player, fee);
                ModManager.Log($"[TownNetworkToll] {player.Name} paid {compResult.AmountTaken} {compResult.ItemName} " +
                    $"(remaining {compResult.Remaining}) for {context}.", ModManager.LogLevel.Info);
                return true;
            }
        }

        // Cash payment (fallback or CashOnly mode)
        if (TryPayWithCash(player, fee, toll, out long charge))
        {
            RecordTollSpending(player, charge);
            SendFlavor(player, new PaymentResult(true, charge, "pyreals", (int)charge, (int)(GetBankedPyreals(player, toll.BankCashProperty))));
            // Show charge diff inline (red for negative)
            long remaining = GetBankedPyreals(player, toll.BankCashProperty);
            string currentStr = remaining >= 1_000_000_000
                ? $"{remaining / 1_000_000_000.0:F1}B"
                : remaining >= 1_000_000
                    ? $"{remaining / 1_000_000.0:F1}M"
                    : remaining >= 1_000
                        ? $"{remaining / 1_000.0:F0}k"
                        : remaining.ToString("N0");
            string chargeStr = charge >= 250_000
                ? $"{(charge / 250_000.0):F2} MMD"
                : $"{charge:N0} pyreals";
            player.SendMessage($"{context} toll: {chargeStr} deducted. Bank: {currentStr} (-{chargeStr})", ChatMessageType.CombatEnemy);
            ModManager.Log($"[TownNetworkToll] {player.Name} paid {charge:N0} pyreals (bank) for {context}. " +
                $"Remaining bank: {GetBankedPyreals(player, toll.BankCashProperty):N0}", ModManager.LogLevel.Info);
            return true;
        }

        // Insufficient funds
        player.SendMessage($"You cannot use the {context}: your bank holds {bank:N0} pyreals, but the Town Network toll is {fee:N0}.", ChatMessageType.System);
        return false;
    }

    // ── Component Payment ──────────────────────────────────────────────────
    static bool CanPayWithComponents(Player player, TownNetworkTollSettings toll, out PaymentResult result)
    {
        result = default;
        if (player?.Inventory == null)
            return false;

        // Check tapers
        int taperCount = CountWcidInInventory(player, toll.TaperWcid);
        if (taperCount > toll.MinTaperThreshold)
            return true;

        // Check scarabs
        foreach (var wcid in toll.ScarabWcids)
        {
            int count = CountWcidInInventory(player, wcid);
            if (count > toll.MinScarabThreshold)
                return true;
        }

        return false;
    }

    static bool TryPayWithComponents(Player player, TownNetworkTollSettings toll, out PaymentResult result)
    {
        result = default;
        if (player?.Inventory == null)
            return false;

        // Gather eligible options
        var eligible = new List<(uint Wcid, string Name, int Count)>();

        int taperCount = CountWcidInInventory(player, toll.TaperWcid);
        if (taperCount > toll.MinTaperThreshold)
            eligible.Add((toll.TaperWcid, "Prismatic Tapers", taperCount));

        foreach (var wcid in toll.ScarabWcids)
        {
            int count = CountWcidInInventory(player, wcid);
            if (count > toll.MinScarabThreshold)
            {
                string name = wcid switch
                {
                    686   => "Copper Scarabs",
                    687   => "Gold Scarabs",
                    688   => "Silver Scarabs",
                    689   => "Iron Scarabs",
                    690   => "Pyreal Scarabs",
                    691   => "Lead Scarabs",
                    7299  => "Diamond Scarabs",
                    8897  => "Platinum Scarabs",
                    37155 => "Mana Scarabs",
                    _     => "Scarabs",
                };
                eligible.Add((wcid, name, count));
            }
        }

        if (eligible.Count == 0)
            return false;

        // Pick one at random
        var choice = eligible[Random.Shared.Next(eligible.Count)];
        int amount;
        int remaining;

        if (choice.Wcid == toll.TaperWcid)
        {
            int pct = Random.Shared.Next(toll.TaperTakePercentMin, toll.TaperTakePercentMax + 1);
            amount = Math.Max(1, (int)Math.Ceiling(choice.Count * pct / 100.0));
            remaining = choice.Count - amount;
            if (remaining < toll.MinTaperThreshold)
            {
                amount = choice.Count - toll.MinTaperThreshold;
                remaining = toll.MinTaperThreshold;
            }
        }
        else
        {
            amount = Math.Max(1, (int)Math.Ceiling(choice.Count * toll.ScarabTakePercent / 100.0));
            remaining = choice.Count - amount;
            if (remaining < toll.MinScarabThreshold)
            {
                amount = choice.Count - toll.MinScarabThreshold;
                remaining = toll.MinScarabThreshold;
            }
        }

        if (amount <= 0)
            return false;

        // Attempt removal
        if (!TryConsumeFromInventory(player, choice.Wcid, amount))
            return false;

        result = new PaymentResult(true, amount, choice.Name, amount, remaining);
        return true;
    }

    // ── Cash Payment ───────────────────────────────────────────────────────
    static bool TryPayWithCash(Player player, long fee, TownNetworkTollSettings toll, out long charge)
    {
        charge = 0;
        long bank = GetBankedPyreals(player, toll.BankCashProperty);

        if (bank >= fee)
        {
            charge = fee;
        }
        else if (toll.InsufficientFundsMode == TownNetworkInsufficientFundsMode.DrainAll && bank > 0)
        {
            charge = bank;
        }
        else
        {
            return false;
        }

        // Debit bank
        long before = GetBankedPyreals(player, toll.BankCashProperty);
        IncBankedPyreals(player, toll.BankCashProperty, -charge);
        long after = GetBankedPyreals(player, toll.BankCashProperty);

        // Diagnostic logging to catch silent failures
        if (after != before - charge)
        {
            ModManager.Log($"[TownNetworkToll] WARNING: Bank debit mismatch for {player.Name}! " +
                $"Before={before}, Charge={charge}, After={after}. Property={toll.BankCashProperty}", ModManager.LogLevel.Warn);
        }

        // Ensure biota persistence
        player.SaveBiotaToDatabase();
        player.UpdateCoinValue();
        return true;
    }

    // ── Fee Computation ────────────────────────────────────────────────────
    internal static long ComputeDynamicFee(Player player, TownNetworkTollSettings t)
    {
        // Seed based on player GUID and a 5-second time window so CheckUseRequirements
        // and ActOnUse (which run milliseconds apart) produce the same fee.
        long seed = player.Guid.Full ^ (DateTime.UtcNow.Ticks / (TimeSpan.TicksPerSecond * 5));
        var rng = new Random((int)(seed & 0x7FFFFFFF));

        long baseFee;
        if (player.Level < 50)
            baseFee = rng.Next((int)t.FeeBelow50Min, (int)t.FeeBelow50Max + 1);
        else if (player.Level <= 100)
            baseFee = rng.Next((int)t.Fee50to100Min, (int)t.Fee50to100Max + 1);
        else
        {
            // High-level: fee is always a whole number of MMD notes (250k each), 1–5 notes
            int mmdNotes = rng.Next(1, 6);
            baseFee = mmdNotes * 250_000;
        }

        // QP discount
        var qp = player.GetProperty(FakeFloat.QuestBonus) ?? 0f;
        double qpD = qp;
        int stepSize = Math.Max(1, t.QpPerThousandForDiscountStep);
        int steps = (int)Math.Floor(qpD / stepSize);
        double mult = 1.0 - steps * t.DiscountPercentPerStep;
        if (mult < 0) mult = 0;

        if (!t.EnableDynamicPricing)
            return (long)Math.Round(baseFee * mult);

        // Economy multiplier removed from VendorLootRotation; LLL handles all economy scaling.
        // Town Network tolls use base fee + level scaling only. Set EnableDynamicPricing=false to disable.
        double economyMult = 1.0;

        // Continuous level scaling: 1.0 at level 1 → LevelScalingMaxMultiplier at level 275
        double levelMult = 1.0 + ((player.Level ?? 1) / 275.0) * (t.LevelScalingMaxMultiplier - 1.0);
        if (levelMult < 1.0) levelMult = 1.0;

        double finalFee = baseFee * economyMult * levelMult * t.BaseLevelMultiplier * mult;
        return (long)Math.Round(finalFee);
    }

    // ── Flavor Messaging ───────────────────────────────────────────────────
    static void SendFlavor(Player player, PaymentResult result)
    {
        if (!result.Success) return;

        var name = MageNames[Random.Shared.Next(MageNames.Length)];
        var msg = FlavorMessages[Random.Shared.Next(FlavorMessages.Length)];

        string costStr;
        string itemName;

        if (result.ItemName == "pyreals" && result.Cost >= 250_000)
        {
            // Show costs in decimal MMDs (250,000 pyreals each) for large amounts
            double mmd = result.Cost / 250_000.0;
            costStr = mmd.ToString("F2");
            itemName = mmd == 1.0 ? "MMD" : "MMDs";
        }
        else
        {
            costStr = result.ItemName == "pyreals"
                ? result.Cost.ToString("N0")
                : result.AmountTaken.ToString("N0");
            itemName = result.ItemName;
        }

        var final = msg
            .Replace("[Name]", name)
            .Replace("[Cost]", costStr)
            .Replace("[Item]", itemName);

        player.SendMessage($"{name} tells you, \"{final}\"", ChatMessageType.System);
    }

    // ── Inventory Helpers ──────────────────────────────────────────────────
    static int CountWcidInInventory(Player player, uint wcid)
    {
        if (player == null) return 0;
        return CountWcidRecursive(player, wcid);
    }

    static int CountWcidRecursive(Container container, uint wcid)
    {
        if (container?.Inventory == null) return 0;
        int total = 0;
        foreach (var item in container.Inventory.Values)
        {
            if (item == null) continue;
            if (item.WeenieClassId == wcid)
                total += item.StackSize ?? 1;
            if (item is Container sub && sub.Inventory?.Count > 0)
                total += CountWcidRecursive(sub, wcid);
        }
        return total;
    }

    static bool TryConsumeFromInventory(Player player, uint wcid, int amount)
    {
        if (player == null || amount <= 0)
            return false;

        return player.TryConsumeFromInventoryWithNetworking(wcid, amount);
    }

    // ── Player Preference ──────────────────────────────────────────────────
    static TollPaymentMode GetPlayerPaymentMode(Player player)
    {
        if (player == null) return TollPaymentMode.ComponentsFirst;
        var profile = PlayerProfileStore.GetOrCreate(player.Guid.Full);
        return profile.TollPaymentMode;
    }

    // ── Bank Helpers ───────────────────────────────────────────────────────
    static long GetBankedPyreals(Player player, int prop) =>
        LeyLineLedgerBankInterop.GetBanked(player, prop);

    static void IncBankedPyreals(Player player, int prop, long delta) =>
        LeyLineLedgerBankInterop.IncBanked(player, prop, delta);

    // ── Portal Matching ────────────────────────────────────────────────────
    internal static bool IsTownNetworkPortal(Portal p, TownNetworkTollSettings t)
    {
        if (p == null) return false;

        switch (t.MatchMode)
        {
            case TownNetworkPortalMatchMode.Substring:
                return SubstringMatch(p, t);
            case TownNetworkPortalMatchMode.WcidList:
                return t.Wcids.Count > 0 && t.Wcids.Contains(p.WeenieClassId);
            case TownNetworkPortalMatchMode.Combined:
                if (SubstringMatch(p, t)) return true;
                if (t.Wcids.Count > 0 && t.Wcids.Contains(p.WeenieClassId)) return true;
                if (t.LandblockIds.Count > 0 && p.Location != null && t.LandblockIds.Contains(p.Location.LandblockId.Landblock)) return true;
                return false;
            default:
                return false;
        }
    }

    static bool SubstringMatch(Portal p, TownNetworkTollSettings t)
    {
        if (string.IsNullOrEmpty(t.NameSubstring)) return false;
        var hay = $"{p.Name} {p.AppraisalPortalDestination}";
        return hay.IndexOf(t.NameSubstring, StringComparison.OrdinalIgnoreCase) >= 0;
    }

    // ── Achievement & Free Travel Helpers ──────────────────────────────────

    static void TryGrantExpensiveConvenience(Player player)
    {
        try
        {
            var asm = AppDomain.CurrentDomain.GetAssemblies()
                .FirstOrDefault(a => a.GetName().Name == "AchievementUnlocked");
            if (asm == null) return;

            var mgr = asm.GetType("AchievementUnlocked.AchievementManager");
            var has = mgr?.GetMethod("HasAchievement", new[] { typeof(Player), typeof(string) });
            var unlock = mgr?.GetMethod("UnlockAchievement", new[] { typeof(Player), typeof(string), typeof(bool) });
            if (has == null || unlock == null) return;

            var hasResult = has.Invoke(null, new object[] { player, "ExpensiveConvenience" });
            if (hasResult is bool b && b) return;
            unlock.Invoke(null, new object[] { player, "ExpensiveConvenience", false });
        }
        catch { /* silently fail if AchievementUnlocked is not present */ }
    }

    static void SendFreeTravelFlavor(Player player)
    {
        var msg = FreeTravelFlavors[Random.Shared.Next(FreeTravelFlavors.Length)];
        var name = MageNames[Random.Shared.Next(MageNames.Length)];
        player.SendMessage($"[{name}] {msg}", ChatMessageType.Tell);
    }

    // ── Generous Benefactor Tracking ───────────────────────────────────────
    static void RecordTollSpending(Player player, long fee)
    {
        if (fee <= 0 || player == null) return;
        var profile = PlayerProfileStore.GetOrCreate(player.Guid.Full);
        profile.TotalTownNetworkTollSpent += fee;
        PlayerProfileStore.Save(player.Guid.Full, profile);
    }

    // ── /tn command: instant Town Network teleport (Generous Benefactor reward) ──
    [CommandHandler("tn", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0,
        "Teleports directly to the Town Network. Requires donating 1,000,000,000 pyreals in tolls." +
        "Usage: /tn")]
    public static void HandleTn(Session session, params string[] parameters)
    {
        var player = session?.Player;
        if (player == null) return;

        const long threshold = 1_000_000_000L;
        var profile = PlayerProfileStore.GetOrCreate(player.Guid.Full);
        if (profile.TotalTownNetworkTollSpent < threshold)
        {
            long remaining = threshold - profile.TotalTownNetworkTollSpent;
            player.SendMessage($"[Town Network] You have donated {profile.TotalTownNetworkTollSpent:N0} pyreals toward the Arcanum. " +
                $"Donate {remaining:N0} more to unlock direct teleport (/tn).", ChatMessageType.System);
            return;
        }

        // Instant teleport to Town Network (central drop point inside dungeon 0x0007)
        var pos = new Position(0x0007010B, 3.36f, -69.93f, 0.005f, -0.712f, 0f, 0f, 0.702f);
        player.Teleport(pos);
        player.SendMessage("The Arcanum recognizes your generosity and opens a direct path to the Town Network.", ChatMessageType.Magic);
    }
}
