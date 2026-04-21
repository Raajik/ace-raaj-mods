using System.Collections.Concurrent;

namespace AureatePath;

[HarmonyPatch]
public class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    private const int ENLIGHTENMENT_WCID = 53412;

    static bool _wieldRequirementsPatched;
    static bool _passupSuppressPatched;

    // Captured at start of enlightenment strip (PreRemoveAbility); consumed when perks apply (PreAddPerks) to contribute level/10000 to the shared Loremaster pool (FakeFloat 11012).
    static readonly ConcurrentDictionary<uint, int> _levelBeforeEnlightenmentByGuid = new();

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
            _wieldRequirementsPatched = true;
        }

        ModC.Harmony.PatchCategory(nameof(PassupSuppress));
        _passupSuppressPatched = true;
    }

    public override void Stop()
    {
        if (_wieldRequirementsPatched)
        {
            try
            {
                ModC.Harmony.UnpatchCategory(nameof(WieldRequirements));
            }
            catch (Exception ex)
            {
                ModManager.Log($"[AureatePath] Unpatch WieldRequirements: {ex.Message}", ModManager.LogLevel.Warn);
            }
            finally
            {
                _wieldRequirementsPatched = false;
            }
        }

        if (_passupSuppressPatched)
        {
            try
            {
                ModC.Harmony.UnpatchCategory(nameof(PassupSuppress));
            }
            catch (Exception ex)
            {
                ModManager.Log($"[AureatePath] Unpatch PassupSuppress: {ex.Message}", ModManager.LogLevel.Warn);
            }
            finally
            {
                _passupSuppressPatched = false;
            }
        }

        base.Stop();
    }

    [CommandHandler("enlighten", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0)]
    public static void HandleEnlighten(Session session, params string[] parameters)
    {
        HandleEnlightenCore(session);
    }

    [CommandHandler("enl", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0)]
    public static void HandleEnl(Session session, params string[] parameters)
    {
        HandleEnlightenCore(session);
    }

    static void HandleEnlightenCore(Session session)
    {
        var player = session.Player;
        if (player is null)
            return;

        var s = Settings ?? new Settings();
        if (!VerifyEnlightenmentEligibility(player, s))
            return;

        if (s.EnlightenmentRequiresConfirmation)
        {
            var text = BuildEnlightenmentConfirmText(s);
            if (!player.ConfirmationManager.EnqueueSend(new Confirmation_Enlightenment(player.Guid), text))
                player.SendMessage("You already have a confirmation dialog open.", ChatMessageType.Broadcast);
        }
        else
            Enlightenment.HandleEnlightenment(null, player);
    }

    internal static string BuildEnlightenmentConfirmText(Settings s)
    {
        var parts = new List<string>();
        if (s.RemoveLevel)
            parts.Add("your level will be reset to 1");
        if (s.RemoveAttributes)
            parts.Add("your attributes will be reset");
        if (s.RemoveSkills)
            parts.Add("your skills will be reset");
        if (s.RemoveLuminance)
            parts.Add("your luminance and luminance auras will be removed");
        if (s.RemoveSociety)
            parts.Add("your society standing will be removed");
        if (s.RemoveAetheria)
            parts.Add("your aetheria progress will be reset");

        if (parts.Count == 0)
            return "Do you wish to enlighten?";

        return "If you continue, " + string.Join(", ", parts) + ". Do you wish to enlighten?";
    }

    internal static bool VerifyEnlightenmentEligibility(Player player, Settings s)
    {
        long requiredLevel = (long)s.LevelReq + (long)player.Enlightenment * s.LevelReqPerEnlightenment;
        if (player.Level < requiredLevel)
        {
            player.Session?.Network.EnqueueSend(new GameMessageSystemChat($"You must be level {requiredLevel} for enlightenment.", ChatMessageType.Broadcast));
            return false;
        }

        if (s.EnableHighEnlightenmentQuestBonusRequirement
            && player.Enlightenment >= s.HighEnlightenmentQuestBonusFromCompletedCount)
        {
            var stepsPastGate = player.Enlightenment - (s.HighEnlightenmentQuestBonusFromCompletedCount - 1);
            var requiredQb = s.HighEnlightenmentQuestBonusBase + s.HighEnlightenmentQuestBonusPerStep * stepsPastGate;
            var qb = player.GetProperty(FakeFloat.QuestBonus) ?? 0f;
            if (qb < requiredQb)
            {
                var nextOrdinal = player.Enlightenment + 1;
                player.Session?.Network.EnqueueSend(new GameMessageSystemChat(
                    $"You must have at least {requiredQb:0.##} total quest bonus (QB) for your {nextOrdinal}{OrdinalSuffix(nextOrdinal)} enlightenment (you have {qb:0.##} QB).",
                    ChatMessageType.Broadcast));
                return false;
            }
        }

        var lumGateIndex = Math.Max(1, s.LumAugRequirementFromEnlightenment) - 1;
        if (s.RequireAllLuminanceAuras && player.Enlightenment >= lumGateIndex && !TryEvaluateLumAugs(player, s, out var lumSum, out var lumReq))
        {
            player.Session?.Network.EnqueueSend(new GameMessageSystemChat($"You must have all luminance auras for enlightenment.", ChatMessageType.Broadcast));
            if (s.ShowLumAugVerificationCounts)
                player.SendMessage($"Luminance aura tier total: {lumSum:N0} (required {lumReq:N0}).");
            return false;
        }

        var societyGateIndex = Math.Max(1, s.SocietyMasterRequirementFromEnlightenment) - 1;
        if (s.RequireSocietyMaster && player.Enlightenment >= societyGateIndex && !Enlightenment.VerifySocietyMaster(player))
        {
            player.Session?.Network.EnqueueSend(new GameMessageSystemChat($"You must be a Master of one of the Societies of Dereth for enlightenment.", ChatMessageType.Broadcast));
            return false;
        }

        if (player.GetFreeInventorySlots() < 25)
        {
            player.Session?.Network.EnqueueSend(new GameMessageSystemChat($"You must have at least 25 free inventory slots in your main pack for enlightenment.", ChatMessageType.Broadcast));
            return false;
        }

        if (s.MaxEnlightenments > 0 && player.Enlightenment >= s.MaxEnlightenments)
        {
            player.Session?.Network.EnqueueSend(new GameMessageSystemChat($"You have already reached the maximum enlightenment level!", ChatMessageType.Broadcast));
            return false;
        }

        return true;
    }

    static string OrdinalSuffix(int n)
    {
        var mod100 = n % 100;
        if (mod100 >= 11 && mod100 <= 13)
            return "th";
        return (n % 10) switch
        {
            1 => "st",
            2 => "nd",
            3 => "rd",
            _ => "th",
        };
    }

    static void ApplyBonuses(Player player)
    {
        if (Settings is not { } s)
            return;

        //PRESUMES NO OTHER BONUSES TO SET PROPS
        //Custom props
        if (s.IntAugments != null)
        {
            foreach (var prop in s.IntAugments)
            {
                var value = player.Enlightenment * prop.Value;
                player.UpdateProperty(player, prop.Key, value, true);
                player.SendMessage($"You've been awarded {value} {prop.Key}");
            }
        }

        if (s.FloatAugments != null)
        {
            foreach (var prop in s.FloatAugments)
            {
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

        if (player?.Guid != null)
            _levelBeforeEnlightenmentByGuid[player.Guid.Full] = player.Level ?? 1;

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
            if (Settings is not { } objS || !objS.AllowEnlightenmentViaEnlightenmentObject)
                return true;

            if (activator is not Player player)
                return true;

            if (player.Session is null)
                return true;

            __result = new ActivationResult(new GameEventCommunicationTransientString(player.Session, $"Sneaking in the 'ol enlightenment here."));
            Enlightenment.HandleEnlightenment(activator, player);
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

        var g = player.Guid.Full;
        if (_levelBeforeEnlightenmentByGuid.TryRemove(g, out var capLevel))
        {
            var delta = capLevel / 10000f;
            if (delta > 0f)
            {
                var cur = (float)(player.GetProperty(SharedXpPoolIds.EnlightenmentPoolBonus) ?? 0f);
                player.SetProperty(SharedXpPoolIds.EnlightenmentPoolBonus, cur + delta);
            }
        }

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

        // Max lum (checked arithmetic so huge Enlightenment * Per does not wrap silently)
        if (player.MaximumLuminance is not null)
        {
            long maxLuminance;
            try
            {
                checked
                {
                    maxLuminance = s.MaxLumBase + s.MaxLumPerEnlightenment * (long)player.Enlightenment;
                }
            }
            catch (OverflowException)
            {
                maxLuminance = long.MaxValue;
            }

            player.MaximumLuminance = maxLuminance;
            player.SendMessage($"Your luminance is now {maxLuminance}");

            player.UpdateProperty(player, PropertyInt64.MaximumLuminance, maxLuminance);
        }

        PassupSuppress.RegisterWindow(player, s);

        return false;
    }

    [HarmonyPrefix]
    [HarmonyPatch(typeof(Enlightenment), nameof(Enlightenment.VerifyRequirements), new Type[] { typeof(Player) })]
    public static bool PreVerifyRequirements(Player player, ref Enlightenment __instance, ref bool __result)
    {
        __result = true;

        if (Settings is not { } s)
            return true;

        __result = VerifyEnlightenmentEligibility(player, s);
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

