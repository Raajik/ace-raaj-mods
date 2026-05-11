using MotionTable = ACE.DatLoader.FileTypes.MotionTable;

namespace QOL;

// Marketplace recall + max specialized credits use manual Harmony.Patch in OnStartSuccess so AccessTools can bind
// private methods (e.g. GetTotalSpecializedCredits) and we do not run during BasicMod.PatchAllUncategorized before Init().

public class PatchClass(BasicMod mod, string settingsName = "Settings.json") : BasicPatch<Settings>(mod, settingsName)
{
    static bool _qolCommandCategoriesRegistered;

    public override async Task OnStartSuccess()
    {
        await base.OnStartSuccess();
        ApplyCoreManualHarmonyPatches();
    }

    void ApplyCoreManualHarmonyPatches()
    {
        Harmony harmony = ModC.Harmony;
        try
        {
            MethodInfo? tele = AccessTools.Method(typeof(Player), "HandleActionTeleToMarketPlace");
            if (tele != null)
                harmony.Patch(tele, prefix: new HarmonyMethod(typeof(PatchClass), nameof(PreHandleActionTeleToMarketPlace)));
            else
                ModManager.Log("QOL: Player.HandleActionTeleToMarketPlace not found; marketplace recall patch skipped.", ModManager.LogLevel.Warn);

            MethodInfo? spec = AccessTools.Method(typeof(SkillAlterationDevice), "GetTotalSpecializedCredits", new Type[] { typeof(Player) });
            if (spec != null)
                harmony.Patch(spec, postfix: new HarmonyMethod(typeof(PatchClass), nameof(PostGetTotalSpecializedCredits)));
            else
                ModManager.Log("QOL: SkillAlterationDevice.GetTotalSpecializedCredits(Player) not found; max-spec patch skipped.", ModManager.LogLevel.Warn);

            if (Settings?.EnableFacilityHub == true)
                FacilityHubPortal.ApplyHarmony(harmony);
        }
        catch (Exception ex)
        {
            ModManager.Log($"QOL: core Harmony patches failed: {ex.Message}", ModManager.LogLevel.Error);
        }
    }

    public override void Start()
    {
        base.Start();
        Settings = SettingsContainer.Settings ?? new Settings();
        FacilityHubPortal.CachedSettings = Settings;

        var modDir = Path.GetDirectoryName(typeof(PatchClass).Assembly.Location);
        if (string.IsNullOrEmpty(modDir))
            modDir = Path.Combine(ModManager.ModPath, "QOL");

        PlayerProfileStore.Initialize(
            QolDataPaths.InModData("PlayerProfiles.json"),
            Path.Combine(modDir, "PlayerProfiles.json"));
        Stackable.Initialize(modDir, Settings.Stackable);
        XpTracker.Initialize(
            QolDataPaths.InModData("xp-tracker"),
            Path.Combine(modDir, "xp-tracker"));

        RegisterEnabledPatchCategories();
        ApplyWorldOpenSideEffects();
        AutoBuff.TryApply();
    }

    public override async Task OnWorldOpen()
    {
        Settings = SettingsContainer.Settings ?? new Settings();
        FacilityHubPortal.CachedSettings = Settings;
        ApplyWorldOpenSideEffects();
    }

    // Augmentation caps and fellowship globals must run from Start() as well as OnWorldOpen(): if the mod loads
    // after the world is already up, OnWorldOpen never runs and those stay at ACE defaults while Harmony patches
    // (registered in Start via RegisterEnabledPatchCategories) are already active.
    void ApplyWorldOpenSideEffects()
    {
        if (Settings.EnableAugmentations)
            Augmentations.OverrideCaps();

        if (Settings.EnableFellowships)
            Fellowships.SetFellowshipSettings();
    }

    // Runs on cold load and on mod hot-reload (OnWorldOpen does not), so category-gated patches stay in sync with Settings.json.
    private void RegisterEnabledPatchCategories()
    {
        if (!_qolCommandCategoriesRegistered)
        {
            ModC.RegisterCommands(Enum.GetValues<Features>().Cast<Features>().ToArray());
            _qolCommandCategoriesRegistered = true;
        }

        var enabledFeatures = new List<Features>();

        if (Settings.EnableAnimations)
            enabledFeatures.Add(Features.Animations);
        if (Settings.EnableAugmentations)
            enabledFeatures.Add(Features.Augmentations);
        if (Settings.EnableDefaults)
            enabledFeatures.Add(Features.Defaults);
        if (Settings.EnableFellowships)
            enabledFeatures.Add(Features.Fellowships);
        if (Settings.EnablePermanentObjects)
            enabledFeatures.Add(Features.PermanentObjects);
        if (Settings.EnableRecklessness)
            enabledFeatures.Add(Features.Recklessness);
        if (Settings.EnableTailoring)
            enabledFeatures.Add(Features.Tailoring);
        if (Settings.EnableVendorsBuyEverything)
            enabledFeatures.Add(Features.VendorsBuyEverything);
        if (Settings.EnableQuestgiverAuras)
            enabledFeatures.Add(Features.QuestgiverAuras);
        if (Settings.EnableStackable)
            enabledFeatures.Add(Features.Stackable);
        if (Settings.EnablePetAttackSelected)
            enabledFeatures.Add(Features.PetAttackSelected);
        if (Settings.EnablePetMessageDamage)
            enabledFeatures.Add(Features.PetMessageDamage);
        if (Settings.EnablePetStow)
            enabledFeatures.Add(Features.PetStow);
        if (Settings.EnableSummonCreatureAsPet)
            enabledFeatures.Add(Features.SummonCreatureAsPet);
        if (Settings.EnablePetSummonMultiple)
            enabledFeatures.Add(Features.PetSummonMultiple);
        if (Settings.EnablePetEx)
            enabledFeatures.Add(Features.PetEx);
        if (Settings.EnablePetExShareDamage && Settings.EnablePetEx)
            enabledFeatures.Add(Features.PetExShareDamage);
        if (Settings.EnablePortalsStripNoRecall)
            enabledFeatures.Add(Features.PortalsStripNoRecall);
        if (Settings.EnableBypassPortalRestrictions)
            enabledFeatures.Add(Features.BypassPortalRestrictions);
        if (Settings.EnableTownNetworkToll)
            enabledFeatures.Add(Features.TownNetworkToll);
        if (Settings.EnableFullKillXpPerDamager)
            enabledFeatures.Add(Features.FullKillXpPerDamager);
        // Legacy GiveNpcSingleFromStack migrated to NpcStackTurnIn; either old or new enablement works.
        if (Settings.EnableNpcStackTurnIn || Settings.EnableGiveNpcSingleFromStack)
            enabledFeatures.Add(Features.NpcStackTurnIn);

        if (Settings.EnableKillXpMessage)
            enabledFeatures.Add(Features.KillXpMessage);

        if (Settings.EnableBundleGive)
            enabledFeatures.Add(Features.BundleGive);

        if (Settings.EnableNoDeathDrops)
            enabledFeatures.Add(Features.NoDeathDrops);

        if (Settings.EnablePetKillSummary)
            enabledFeatures.Add(Features.PetKillSummary);

        if (Settings.EnableXpTracker)
            enabledFeatures.Add(Features.XpTracker);

        if (Settings.EnableAutoBuff)
            enabledFeatures.Add(Features.AutoBuff);

        if (Settings.EnableFacilityHub)
            enabledFeatures.Add(Features.FacilityHub);

        if (Settings.EnableDpsDetailed)
            enabledFeatures.Add(Features.DpsDetailed);

        ModC.RegisterPatchCategories(enabledFeatures.ToArray());
    }

    public override void Stop()
    {
        _qolCommandCategoriesRegistered = false;

        base.Stop();

        AutoBuff.Stop();

        if (ModC.State == ModState.Running)
        {
            if (Settings.EnableFellowships)
                Fellowships.RestoreFellowSettings();
        }
    }

    public static bool PreHandleActionTeleToMarketPlace(Player __instance)
    {
        if (__instance?.Session?.Network == null)
            return false;

        if (!TownNetworkToll.TryDebitMarketplaceRecall(__instance))
            return false;

        bool bypass = Settings?.EnableBypassPortalRestrictions == true;
        var bypassSettings = Settings?.BypassPortalRestrictions;

        if (__instance.IsOlthoiPlayer && !(bypass && bypassSettings?.BypassOlthoiRecall == true))
        {
            __instance.Session.Network.EnqueueSend(new GameEventWeenieError(__instance.Session, WeenieError.OlthoiCanOnlyRecallToLifestone));
            return false;
        }

        if (__instance.PKTimerActive && !(bypass && bypassSettings?.BypassPKTimerRecall == true))
        {
            __instance.Session.Network.EnqueueSend(new GameEventWeenieError(__instance.Session, WeenieError.YouHaveBeenInPKBattleTooRecently));
            return false;
        }

        if (__instance.RecallsDisabled && !(bypass && bypassSettings?.BypassDungeonRecall == true))
        {
            __instance.Session.Network.EnqueueSend(new GameEventWeenieError(__instance.Session, WeenieError.ExitTrainingAcademyToUseCommand));
            return false;
        }

        if (__instance.TooBusyToRecall && !(bypass && bypassSettings?.BypassBusyRecall == true))
        {
            __instance.Session.Network.EnqueueSend(new GameEventWeenieError(__instance.Session, WeenieError.YoureTooBusy));
            return false;
        }

        if (__instance.CombatMode != CombatMode.NonCombat)
        {
            // this should be handled by a different thing, probably a function that forces player into peacemode
            var updateCombatMode = new GameMessagePrivateUpdatePropertyInt(__instance, PropertyInt.CombatMode, (int)CombatMode.NonCombat);
            __instance.SetCombatMode(CombatMode.NonCombat);
            __instance.Session.Network.EnqueueSend(updateCombatMode);
        }

        __instance.EnqueueBroadcast(new GameMessageSystemChat($"{__instance.Name} is recalling to the marketplace.", ChatMessageType.Recall), WorldObject.LocalBroadcastRange, ChatMessageType.Recall);

        __instance.SendMotionAsCommands(MotionCommand.MarketplaceRecall, MotionStance.NonCombat);

        var startPos = new Position(__instance.Location);

        // Use authoritative motion-table animation length (retail was ~18.4s)
        ActionChain mpChain = new ActionChain();
        var animLength = DatManager.PortalDat.ReadFromDat<MotionTable>(__instance.MotionTableId).GetAnimationLength(MotionCommand.MarketplaceRecall);
        mpChain.AddDelaySeconds(animLength);
        //mpChain.AddDelaySeconds(14);

        //resolve player
        var player = PlayerManager.FindByGuid(__instance.Guid) as Player;
        if (player is null)
            return false;

        // Then do teleport
        __instance.IsBusy = true;
        mpChain.AddAction(__instance, () =>
        {
            player.IsBusy = false;
            var endPos = new Position(player.Location);
            if (startPos.SquaredDistanceTo(endPos) > Player.RecallMoveThresholdSq)
            {
                player.Session.Network.EnqueueSend(new GameEventWeenieError(player.Session, WeenieError.YouHaveMovedTooFar));
                return;
            }

#if REALM
            player.Teleport(Player.MarketplaceDrop.AsInstancedPosition(player.Location.Instance));
#else
            player.Teleport(Player.MarketplaceDrop);
#endif
        });

        // Set the chain to run
        mpChain.EnqueueChain();

        return false;
    }

    // Fakes having more credits invested (instance method on SkillAlterationDevice; ACE keeps it private — resolve via AccessTools in ApplyCoreManualHarmonyPatches).
    public static void PostGetTotalSpecializedCredits(SkillAlterationDevice __instance, Player player, ref int __result)
    {
        if (Settings == null)
            return;
        __result = Math.Max(0, __result + (70 - Settings.MaxSpecCredits));
    }

    [CommandHandler("qol", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, -1,
        "QOL hub. Usage: /qol commands | killxp [off|xp|percent|default] | toll [components|cashonly] | vendor [rotate]. See also: /xp tracker | /xp spend", "")]
    public static void HandleQol(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (parameters.Length == 0)
        {
            player.SendMessage("Usage: /qol commands | killxp [off|xp|percent|default] | toll [components|cashonly]", ChatMessageType.System);
            return;
        }

        var head = parameters[0].Trim().ToLowerInvariant();

        if (head == "commands")
        {
            ModCommandsList.SendList(player, session);
            return;
        }

        if (head == "killxp")
        {
            HandleKillXpSub(player, parameters.Length > 1 ? parameters[1] : null);
            return;
        }

        if (head == "toll")
        {
            HandleTollSub(player, parameters.Length > 1 ? parameters[1] : null);
            return;
        }


        player.SendMessage($"Unknown /qol subcommand '{head}'. Try: commands, killxp, toll, vendor rotate.", ChatMessageType.System);
    }

    static void HandleKillXpSub(Player player, string? arg)
    {
        uint guid = player.Guid.Full;

        if (arg == null)
        {
            KillXpMessage.PlayerPrefs.TryGetValue(guid, out var cur);
            string desc = cur switch
            {
                KillXpDisplayMode.Off     => "OFF",
                KillXpDisplayMode.Raw     => "xp (raw)",
                KillXpDisplayMode.Percent => "percent",
                _                         => "server default",
            };
            player.SendMessage($"Kill XP display: {desc}. Use /qol killxp off|xp|percent|default.", ChatMessageType.System);
            return;
        }

        KillXpDisplayMode? newMode = arg.Trim().ToLowerInvariant() switch
        {
            "off"          => KillXpDisplayMode.Off,
            "xp" or "raw"  => KillXpDisplayMode.Raw,
            "percent"      => KillXpDisplayMode.Percent,
            "default"      => KillXpDisplayMode.ServerDefault,
            _              => null,
        };

        if (newMode == null)
        {
            player.SendMessage("Usage: /qol killxp [off|xp|percent|default]", ChatMessageType.System);
            return;
        }

        KillXpMessage.PlayerPrefs[guid] = newMode.Value;
        var profile = PlayerProfileStore.GetOrCreate(guid);
        profile.KillXpMode = newMode.Value;
        PlayerProfileStore.Save(guid, profile);

        string label = newMode.Value switch
        {
            KillXpDisplayMode.Off     => "OFF — kill XP hidden",
            KillXpDisplayMode.Raw     => "xp — e.g. (48 xp)",
            KillXpDisplayMode.Percent => "percent — e.g. (0.003%)",
            _                         => "server default",
        };
        player.SendMessage($"Kill XP display: {label}.", ChatMessageType.System);
    }

    static void HandleTollSub(Player player, string? arg)
    {
        uint guid = player.Guid.Full;

        if (arg == null)
        {
            var profile = PlayerProfileStore.GetOrCreate(guid);
            string desc = profile.TollPaymentMode switch
            {
                TollPaymentMode.ComponentsFirst => "components first",
                TollPaymentMode.CashOnly        => "cash only",
                _                               => "components first",
            };
            player.SendMessage($"Town Network toll payment mode: {desc}. Use /qol toll components|cashonly.", ChatMessageType.System);
            return;
        }

        TollPaymentMode? newMode = arg.Trim().ToLowerInvariant() switch
        {
            "components" or "comp" or "default" => TollPaymentMode.ComponentsFirst,
            "cash" or "cashonly" or "money"     => TollPaymentMode.CashOnly,
            _                                   => null,
        };

        if (newMode == null)
        {
            player.SendMessage("Usage: /qol toll [components|cashonly]", ChatMessageType.System);
            return;
        }

        var profile2 = PlayerProfileStore.GetOrCreate(guid);
        profile2.TollPaymentMode = newMode.Value;
        PlayerProfileStore.Save(guid, profile2);

        string label = newMode.Value switch
        {
            TollPaymentMode.ComponentsFirst => "components first (try spell components before cash)",
            TollPaymentMode.CashOnly        => "cash only (always pay with pyreals)",
            _                               => "unknown",
        };
        player.SendMessage($"Town Network toll payment mode: {label}.", ChatMessageType.System);
    }

    [CommandHandler("setlum", AccessLevel.Player, CommandHandlerFlag.RequiresWorld, 0, "Sets luminance to the max if unlocked")]
    public static void HandleSetProperty(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (player.MaximumLuminance is not null && S.Settings?.Defaults != null && S.Settings.Defaults.Int64Defaults.TryGetValue(PropertyInt64.MaximumLuminance, out var value))
        {
            player.MaximumLuminance = value;
            player.SendMessage($"Your luminance is now {value}");

            player.UpdateProperty(player, PropertyInt64.MaximumLuminance, value);
        }
        else
            player.SendMessage($"Your luminance was already the max or a max is not set.");
    }

    [CommandHandler("wipe", AccessLevel.Admin, CommandHandlerFlag.RequiresWorld, 1,
        "Wipe all non-admin character progress. Usage: /wipe data")]
    public static void HandleWipe(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (parameters.Length == 0)
        {
            player.SendMessage("Usage: /wipe data -- wipes all non-admin progress (achievements, quest points, bank balances).");
            return;
        }

        var head = parameters[0].Trim().ToLowerInvariant();
        if (head == "data")
        {
            WipeProgress.HandleCommand(player);
        }
        else
        {
            player.SendMessage("Unknown /wipe subcommand. Use: /wipe data");
        }
    }

    [CommandHandler("buffs", AccessLevel.Player, CommandHandlerFlag.RequiresWorld)]
    public static void HandleBuffs(Session session, params string[] parameters)
    {
        var player = session.Player;
        if (player == null) return;

        if (!Settings.AutoBuff.Enabled)
        {
            player.SendMessage("Auto-buff is disabled.");
            return;
        }

        if (parameters.Length == 0)
        {
            // Immediate cast on target or self
            var target = player.AttackTarget as Player;
            AutoBuff.CastBuffs(player, target);
            return;
        }

        var verb = parameters[0].ToLowerInvariant();

        if (verb == "auto")
        {
            if (parameters.Length >= 2 && parameters[1].Equals("off", StringComparison.OrdinalIgnoreCase))
            {
                AutoBuff.SetAutoBuffEnabled(player, false);
                player.SendMessage("Auto-buff disabled.");
                return;
            }

            if (parameters.Length >= 2 && parameters[1].Equals("all", StringComparison.OrdinalIgnoreCase))
            {
                if (parameters.Length >= 3 && parameters[2].Equals("off", StringComparison.OrdinalIgnoreCase))
                {
                    AutoBuff.SetAutoBuffEnabled(player, false);
                    player.SendMessage("Auto-buff disabled.");
                    return;
                }

                AutoBuff.SetAutoBuffEnabled(player, true);
                player.SendMessage("Auto-buff: ON (timer recast for all eligible buffs).");
                return;
            }

            var current = AutoBuff.IsAutoBuffEnabled(player);
            AutoBuff.SetAutoBuffEnabled(player, !current);
            player.SendMessage($"Auto-buff: {(!current ? "ON" : "OFF")}.");
            return;
        }

        if (verb == "status")
        {
            var enabled = AutoBuff.IsAutoBuffEnabled(player);
            var buffs = AutoBuff.GetBestBuffs(player);
            player.SendMessage("=== Auto-Buff Status ===");
            player.SendMessage($"  Auto-recast: {(enabled ? "ON" : "OFF")}");
            player.SendMessage($"  Eligible buffs: {buffs.Count}");
            if (buffs.Count > 0)
            {
                foreach (var spell in buffs.OrderBy(s => s.School.ToString()).ThenBy(s => s.Name))
                {
                    var entry = player.EnchantmentManager.GetEnchantment(spell.Id);
                    string status;
                    if (entry == null)
                        status = "inactive";
                    else if (entry.Duration < 0)
                        status = "permanent";
                    else
                    {
                        var remaining = entry.Duration + entry.StartTime;
                        status = $"{remaining:F0}s remaining";
                    }
                    player.SendMessage($"  [{spell.School}] {spell.Name} (Lv{spell.Level}) -- {status}");
                }
            }
            return;
        }

        player.SendMessage("Usage: /buffs | /buffs auto | /buffs auto all | /buffs auto all off | /buffs auto off | /buffs status");
    }
}

