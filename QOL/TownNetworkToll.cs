namespace QOL;

// Town Network toll: postfix portal checks for funds, prefix ActOnUse debits bank + flavor.
[HarmonyPatchCategory(nameof(Features.TownNetworkToll))]
internal static class TownNetworkToll
{
    static readonly string[] FlavorLines =
    {
        // Professional & Grateful
        "You donate {0} pyreals to the Arcanum. Your contribution ensures the ley lines remain stable for another cycle. Travel safely!",
        "Your payment of {0} pyreals is noted, Traveler. These funds will be immediately diverted to the stabilization of the Town Network.",
        "The Arcanum thanks you for your {0} pyreal patronage. It is through the generosity of adventurers like you that Dereth remains connected.",
        "Transaction of {0} pyreals complete. May your paths be swift and your portals never flicker.",
        "A generous gift of {0} pyreals. We shall inform the High Mages of your continued support for our infrastructure.",
        "The portals hum a bit brighter thanks to your {0} pyreal donation. Your assistance is invaluable.",
        // Cost of Magic
        "You hand over {0} pyreals. The Arcanum will use this to procure the massive quantities of Silver Scarabs required for this network.",
        "Maintaining a permanent rift in space-time isn't cheap! Your {0} pyreals help us keep the rift-bleed under control.",
        "The cost of concentrated Mana infusions is rising, but your {0} pyreals help us maintain the current portal tolls.",
        "Every coin helps us refine the focal points. Your {0} pyreals are a vital investment in arcane stability.",
        "Filtering chaotic energy requires constant upkeep. Thank you for contributing {0} pyreals to the cause.",
        "A wise investment. It is much cheaper to pay {0} pyreals than to walk from Shoushi to Uziz, wouldn't you agree?",
        // Eccentric & Overworked
        "Finally! These {0} pyreals should cover the cost of the reagents I ruined this morning. Oh, and for the portals too!",
        "Do you have any idea how much it costs to keep a portal from collapsing? This {0} pyreal fee is a drop in the bucket, but we thank you.",
        "{0} pyreals for the mages, magic for the masses. Step through quickly before the alignment shifts!",
        "The Arcanum accepts your {0} pyreals. Try not to track any lifestone dust into the hub—it's a nightmare to clean.",
        "Ah, another {0} pyreals for the 'Portal Polish.' The Archmage will be pleased. Or at least, less grumpy.",
        "You pay the {0} pyreal toll. Please ignore any strange flickering or smells of ozone while in transit. It's... mostly normal.",
        // Direct & Brief
        "Your contribution of {0} pyreals has been processed. The Town Network remains at your disposal.",
        "Funds of {0} pyreals received. The portals are primed and ready for your departure.",
        "Thank you, adventurer. Your {0} pyreals have been added to the Network Maintenance Fund.",
        "Payment of {0} pyreals accepted. The Arcanum wishes you a productive journey across Dereth.",
        "The Network thanks you for the {0} pyreals. Go forth and find glory.",
        "Upkeep confirmed. Your {0} pyreals keep the links strong and the travel instant.",
    };

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

        long fee = ComputeEffectiveFee(player, toll);
        long bank = GetBankedPyreals(player, toll.BankCashProperty);

        if (bank >= fee)
            return;

        if (toll.InsufficientFundsMode == TownNetworkInsufficientFundsMode.DrainAll && bank > 0)
            return;

        player.SendMessage($"[QOL] The Arcanum turns you away: your bank holds {bank:N0} pyreals, but the Town Network toll is {fee:N0}.", ChatMessageType.System);
        __result = new ActivationResult(false);
    }

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

        long fee = ComputeEffectiveFee(player, toll);
        long bank = GetBankedPyreals(player, toll.BankCashProperty);

        long charge;
        if (bank >= fee)
            charge = fee;
        else if (toll.InsufficientFundsMode == TownNetworkInsufficientFundsMode.DrainAll && bank > 0)
            charge = bank;
        else
            return;

        IncBankedPyreals(player, toll.BankCashProperty, -charge);
        player.UpdateCoinValue();
        SendFlavor(player, charge);
    }

    internal static bool TryDebitMarketplaceRecall(Player player)
    {
        if (S.Settings is not { EnableTownNetworkToll: true })
            return true;

        var toll = S.Settings.TownNetworkToll;
        if (!toll.ChargeMarketplaceRecall)
            return true;

        long fee = ComputeEffectiveFee(player, toll);
        long bank = GetBankedPyreals(player, toll.BankCashProperty);

        if (bank >= fee)
        {
            IncBankedPyreals(player, toll.BankCashProperty, -fee);
            player.UpdateCoinValue();
            SendFlavor(player, fee);
            return true;
        }

        if (toll.InsufficientFundsMode == TownNetworkInsufficientFundsMode.DrainAll && bank > 0)
        {
            IncBankedPyreals(player, toll.BankCashProperty, -bank);
            player.UpdateCoinValue();
            SendFlavor(player, bank);
            return true;
        }

        player.SendMessage($"[QOL] You cannot recall to the marketplace: your bank holds {bank:N0} pyreals, but the Town Network toll is {fee:N0}.", ChatMessageType.System);
        return false;
    }

    static void SendFlavor(Player player, long chargedAmount)
    {
        var formatted = chargedAmount.ToString("N0");
        var line = FlavorLines[Random.Shared.Next(FlavorLines.Length)];
        player.SendMessage($"[QOL] {string.Format(line, formatted)}", ChatMessageType.System);
    }

    internal static bool IsTownNetworkPortal(Portal p, TownNetworkTollSettings t)
    {
        if (p == null)
            return false;

        switch (t.MatchMode)
        {
            case TownNetworkPortalMatchMode.Substring:
                return SubstringMatch(p, t);
            case TownNetworkPortalMatchMode.WcidList:
                return t.Wcids.Count > 0 && t.Wcids.Contains(p.WeenieClassId);
            case TownNetworkPortalMatchMode.Combined:
                if (SubstringMatch(p, t))
                    return true;
                if (t.Wcids.Count > 0 && t.Wcids.Contains(p.WeenieClassId))
                    return true;
                if (t.LandblockIds.Count > 0 && p.Location != null && t.LandblockIds.Contains(p.Location.LandblockId.Landblock))
                    return true;
                return false;
            default:
                return false;
        }
    }

    static bool SubstringMatch(Portal p, TownNetworkTollSettings t)
    {
        if (string.IsNullOrEmpty(t.NameSubstring))
            return false;

        var hay = $"{p.Name} {p.AppraisalPortalDestination}";
        return hay.IndexOf(t.NameSubstring, StringComparison.OrdinalIgnoreCase) >= 0;
    }

    internal static long ComputeEffectiveFee(Player player, TownNetworkTollSettings t)
    {
        long baseFee = player.Level < t.LevelSplit ? t.FeeBelowLevel : t.FeeAtOrAboveLevel;
        var qp = player.GetProperty(FakeFloat.QuestBonus) ?? 0f;
        double qpD = qp;
        int stepSize = Math.Max(1, t.QpPerThousandForDiscountStep);
        int steps = (int)Math.Floor(qpD / stepSize);
        double mult = 1.0 - steps * t.DiscountPercentPerStep;
        if (mult < 0)
            mult = 0;

        return (long)Math.Round(baseFee * mult);
    }

    static long GetBankedPyreals(Player player, int prop) =>
        player.GetProperty((PropertyInt64)prop) ?? 0L;

    static void IncBankedPyreals(Player player, int prop, long delta)
    {
        var next = GetBankedPyreals(player, prop) + delta;
        player.SetProperty((PropertyInt64)prop, next);
    }
}
