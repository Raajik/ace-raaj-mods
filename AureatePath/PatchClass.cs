
namespace AureatePath;

[HarmonyPatch]
public class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    private const int ENLIGHTENMENT_WCID = 53412;

    public override async Task OnWorldOpen()
    {
        var cfg = SettingsContainer.Settings ?? new Settings();
        Settings = cfg;

        var deadline = DateTime.UtcNow.AddMinutes(10);
        while (WorldManager.WorldStatus != WorldManager.WorldStatusState.Open)
        {
            if (DateTime.UtcNow > deadline)
            {
                ModManager.Log("[AureatePath] OnWorldOpen: world did not reach Open within 10 minutes; continuing anyway.", ModManager.LogLevel.Warn);
                break;
            }

            await Task.Delay(1000);
        }

        if (cfg.PatchWieldRequirements)
        {
            ModC.Harmony.PatchCategory(nameof(WieldRequirements));
        }
    }

    [CommandHandler("newlum", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0)]
    public static void HandleMeta(Session session, params string[] parameters)
    {
        var player = session.Player;
        if (player is null)
            return;

        if (player.GetProperty(FakeBool.UsingNewLuminance) ?? false)
        {
            player.SendMessage($"You're already using the new enlightenment system.");
            return;
        }

        var oldEnlightenment = player.Enlightenment;
        player.Enlightenment = 0;

        for (var i = 0; i < oldEnlightenment; i++)
            Enlightenment.AddPerks(null, player);

        player.SendMessage($"You're on the new system with {oldEnlightenment} enlightenments.");
        player.SetProperty(FakeBool.UsingNewLuminance, true);
    }

    [CommandHandler("fixee", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0)]
    public static void HandleFix(Session session, params string[] parameters)
    {
        if (session.Player is not Player p)
            return;

        ApplyBonuses(p);
    }

    static void ApplyBonuses(Player player)
    {
        if (Settings is not { } s)
            return;

        //PRESUMES NO OTHER BONUSES TO SET PROPS
        var e = player.Enlightenment;

        //Custom props
        if (s.IntAugments != null)
        {
            foreach (var prop in s.IntAugments)
            {
                var current = player.GetProperty(prop.Key) ?? 0;
                //var value = prop.Key.ToString().StartsWith("Lum") ? player.Enlightenment * prop.Value : current + prop.Value;
                var value = player.Enlightenment * prop.Value;
                player.UpdateProperty(player, prop.Key, value, true);
                player.SendMessage($"You've been awarded {value} {prop.Key}");
            }
        }

        if (s.FloatAugments != null)
        {
            foreach (var prop in s.FloatAugments)
            {
                var current = player.GetProperty(prop.Key) ?? 0;
                //var value = prop.Key.ToString().StartsWith("Lum") ? player.Enlightenment * prop.Value : current + prop.Value;
                var value = player.Enlightenment * prop.Value;
                player.UpdateProperty(player, prop.Key, value, true);
                player.SendMessage($"You've been awarded {value} {prop.Key}");
            }
        }

        //Bonuses enabled with Expansion
        if (s.SkillAugments != null)
        {
            foreach (var prop in s.SkillAugments)
            {
                var value = prop.Value * player.Enlightenment;
                player.SetBonus(prop.Key, value);
                player.SendUpdated(prop.Key);
                player.SendMessage($"You've been awarded {value} {prop.Key}");
            }
        }

        if (s.AttributeAugments != null)
        {
            foreach (var prop in s.AttributeAugments)
            {
                var value = prop.Value * player.Enlightenment;
                player.SetBonus(prop.Key, value);
                player.SendUpdated(prop.Key);
                player.SendMessage($"You've been awarded {value} {prop.Key}");
            }
        }

        if (s.VitalAugments != null)
        {
            foreach (var prop in s.VitalAugments)
            {
                var value = prop.Value * player.Enlightenment;
                player.SetBonus(prop.Key, value);
                player.SendUpdated(prop.Key);
                player.SendMessage($"You've been awarded {value} {prop.Key}");
            }
        }
    }


    [HarmonyPrefix]
    [HarmonyPatch(typeof(Enlightenment), nameof(Enlightenment.RemoveAbility), new Type[] { typeof(Player) })]
    public static bool PreRemoveAbility(Player player, ref Enlightenment __instance)
    {
        if (Settings is not { } s)
            return true;

        if (s.RemoveSociety)
            Enlightenment.RemoveSociety(player);
        if (s.RemoveLuminance)
            Enlightenment.RemoveLuminance(player);
        if (s.RemoveAetheria)
            Enlightenment.RemoveAetheria(player);
        if (s.RemoveAttributes)
            Enlightenment.RemoveAttributes(player);
        if (s.RemoveSkills)
            Enlightenment.RemoveSkills(player);
        if (s.RemoveLevel)
            Enlightenment.RemoveLevel(player);

        return false;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(WorldObject), nameof(WorldObject.CheckUseRequirements), new Type[] { typeof(WorldObject) })]
    public static bool PreCheckUseRequirements(WorldObject activator, ref WorldObject __instance, ref ActivationResult __result)
    {
        //Handle activator custom
        if (__instance.WeenieClassId == ENLIGHTENMENT_WCID)
        {
            if (activator is not Player player)
                __result = new ActivationResult(true);
            //else if (player.Level < Settings.LevelReq)
            //{
            //    __result = new ActivationResult(new GameEventCommunicationTransientString(player.Session, "You do not meet the requiremenets for Enlightenment."));

            //    player.SendMessage($"Requirements:\n" +
            //        $"Over level {Settings.LevelReq}\n" +
            //        $"Under {Settings.MaxEnlightenments} enlightenments\n" +
            //        $"Require Society Master? {Settings.RequireSocietyMaster}\n" +
            //        $"All luminance? {Settings.RequireAllLuminanceAuras}");
            //}
            else
            {
                if (player.Session != null)
                    __result = new ActivationResult(new GameEventCommunicationTransientString(player.Session, $"Sneaking in the 'ol enlightenment here."));
                else
                    __result = new ActivationResult(true);

                Enlightenment.HandleEnlightenment(activator, player);
            }
            return false;
        }

        //Return true to execute original
        return true;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Enlightenment), nameof(Enlightenment.AddPerks), new Type[] { typeof(WorldObject), typeof(Player) })]
    public static bool PreAddPerks(WorldObject npc, Player player, ref Enlightenment __instance)
    {
        if (Settings is not { } s)
            return true;

        player.Enlightenment += 1;
        player.Session?.Network.EnqueueSend(new GameMessagePrivateUpdatePropertyInt(player, PropertyInt.Enlightenment, player.Enlightenment));

        // Vanilla broadcast is skipped (return false below); show personal lines unless operator opts out.
        if (!s.SkipNormalBroadcast)
        {
            player.SendMessage("You have become enlightened and view the world with new eyes.", ChatMessageType.Broadcast);
            player.SendMessage("Your available skill credits have been adjusted.", ChatMessageType.Broadcast);
            player.SendMessage("You have risen to a higher tier of enlightenment!", ChatMessageType.Broadcast);
        }

        var lvl = "";

        // add title
        switch (player.Enlightenment)
        {
            case 1:
                player.AddTitle(CharacterTitle.Awakened);
                lvl = "1st";
                break;
            case 2:
                player.AddTitle(CharacterTitle.Enlightened);
                lvl = "2nd";
                break;
            case 3:
                player.AddTitle(CharacterTitle.Illuminated);
                lvl = "3rd";
                break;
            case 4:
                player.AddTitle(CharacterTitle.Transcended);
                lvl = "4th";
                break;
            case 5:
                player.AddTitle(CharacterTitle.CosmicConscious);
                lvl = "5th";
                break;
            default:
                lvl = $"{player.Enlightenment}th";
                break;
        }

        if (!s.SkipResetCertificate && npc is not null)
            player.GiveFromEmote(npc, Enlightenment.AttributeResetCertificate, 1);

        var msg = $"{player.Name} has achieved the {lvl} level of Enlightenment!";
        PlayerManager.BroadcastToAll(new GameMessageSystemChat(msg, ChatMessageType.WorldBroadcast));
        PlayerManager.LogBroadcastChat(Channel.AllBroadcast, null, msg);


        //Custom props
        ApplyBonuses(player);

        // Credits (interval <= 0 would divide by zero; skip grant and warn once)
        if (s.SkillCreditInterval > 0)
        {
            var creditsOwed = player.Enlightenment / s.SkillCreditInterval * s.SkillCreditAmount;
            player.AddSkillCredits(creditsOwed);
            player.SendMessage($"You've been awarded {creditsOwed} skill credits.");
        }
        else
            player.SendMessage("Skill credit interval is not configured (> 0); no skill credits granted this enlightenment.");

        //Max lum
        if (player.MaximumLuminance is not null)
        {
            var maxLuminance = s.MaxLumBase + s.MaxLumPerEnlightenment * player.Enlightenment;
            player.MaximumLuminance = maxLuminance;
            player.SendMessage($"Your luminance is now {maxLuminance}");

            player.UpdateProperty(player, PropertyInt64.MaximumLuminance, maxLuminance);
        }

        return false;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Enlightenment), nameof(Enlightenment.VerifyRequirements), new Type[] { typeof(Player) })]
    public static bool PreVerifyRequirements(Player player, ref Enlightenment __instance, ref bool __result)
    {
        __result = true;

        if (Settings is not { } s)
            return true;

        if (player.Level < s.LevelReq)
        {
            player.Session?.Network.EnqueueSend(new GameMessageSystemChat($"You must be level {s.LevelReq} for enlightenment.", ChatMessageType.Broadcast));
            __result = false;
        }
        else if (s.RequireAllLuminanceAuras && !TryEvaluateLumAugs(player, s, out var lumSum, out var lumReq))
        {
            player.Session?.Network.EnqueueSend(new GameMessageSystemChat($"You must have all luminance auras for enlightenment.", ChatMessageType.Broadcast));
            if (s.ShowLumAugVerificationCounts)
                player.SendMessage($"Luminance aura tier total: {lumSum:N0} (required {lumReq:N0}).");
            __result = false;
        }

        else if (s.RequireSocietyMaster && !Enlightenment.VerifySocietyMaster(player))
        {
            player.Session?.Network.EnqueueSend(new GameMessageSystemChat($"You must be a Master of one of the Societies of Dereth for enlightenment.", ChatMessageType.Broadcast));
            __result = false;
        }

        else if (player.GetFreeInventorySlots() < 25)
        {
            player.Session?.Network.EnqueueSend(new GameMessageSystemChat($"You must have at least 25 free inventory slots in your main pack for enlightenment.", ChatMessageType.Broadcast));
            __result = false;
        }

        else if (player.Enlightenment >= s.MaxEnlightenments)
        {
            player.Session?.Network.EnqueueSend(new GameMessageSystemChat($"You have already reached the maximum enlightenment level!", ChatMessageType.Broadcast));
            __result = false;
        }

        return false;
    }

    // Sums configured luminance augmentation tiers (not “total luminance spent”); pass requires sum >= BaseLumAugmentationsRequired + Enlightenment * LumAugmentationsRequiredPerEnlightenment.
    static readonly Func<Player, int>[] LumAugmentationCreditContributors =
    {
        p => p.LumAugAllSkills,
        p => p.LumAugSurgeChanceRating,
        p => p.LumAugCritDamageRating,
        p => p.LumAugCritReductionRating,
        p => p.LumAugDamageRating,
        p => p.LumAugDamageReductionRating,
        p => p.LumAugItemManaUsage,
        p => p.LumAugItemManaGain,
        p => p.LumAugHealingRating,
        p => p.LumAugSkilledCraft,
        p => p.LumAugSkilledSpec,
    };

    public static bool VerifyLumAugs(Player player) =>
        Settings is not { } s ? false : TryEvaluateLumAugs(player, s, out _, out _);

    static bool TryEvaluateLumAugs(Player player, Settings s, out int sum, out int required)
    {
        sum = 0;
        long reqLong = (long)s.BaseLumAugmentationsRequired + (long)player.Enlightenment * s.LumAugmentationsRequiredPerEnlightenment;
        required = reqLong > int.MaxValue ? int.MaxValue : (int)reqLong;

        foreach (var part in LumAugmentationCreditContributors)
        {
            int v = part(player);
            if (s.RequireMinimumPerLumAugContributor && v < s.LumAugMinimumPerContributor)
                return false;

            sum += v;
        }

        return sum >= required;
    }
}

