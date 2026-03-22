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
        RegisterEnabledPatchCategories();
        SwiftmendHealingKits.RefreshHealerHook(ModC.Harmony, Settings.EnableSwiftmend);
        ApplyWorldOpenSideEffects();
    }

    public override async Task OnWorldOpen()
    {
        Settings = SettingsContainer.Settings ?? new Settings();
        SwiftmendHealingKits.RefreshHealerHook(ModC.Harmony, Settings.EnableSwiftmend);
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
        if (Settings.EnableSwiftmend)
            enabledFeatures.Add(Features.SwiftmendHealingKits);
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

        ModC.RegisterPatchCategories(enabledFeatures.ToArray());
    }

    public override void Stop()
    {
        SwiftmendHealingKits.RemoveHealerHookOnModStop(ModC.Harmony);
        _qolCommandCategoriesRegistered = false;

        base.Stop();

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

        if (__instance.IsOlthoiPlayer)
        {
            __instance.Session.Network.EnqueueSend(new GameEventWeenieError(__instance.Session, WeenieError.OlthoiCanOnlyRecallToLifestone));
            return false;
        }

        if (__instance.PKTimerActive)
        {
            __instance.Session.Network.EnqueueSend(new GameEventWeenieError(__instance.Session, WeenieError.YouHaveBeenInPKBattleTooRecently));
            return false;
        }

        if (__instance.RecallsDisabled)
        {
            __instance.Session.Network.EnqueueSend(new GameEventWeenieError(__instance.Session, WeenieError.ExitTrainingAcademyToUseCommand));
            return false;
        }

        if (__instance.TooBusyToRecall)
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
        "QOL hub (e.g. list mod commands).", "Usage: /qol commands")]
    public static void HandleQol(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        if (parameters.Length == 0)
        {
            player.SendMessage("Usage: /qol commands", ChatMessageType.System);
            return;
        }

        var head = parameters[0].Trim().ToLowerInvariant();
        if (head == "commands")
        {
            ModCommandsList.SendList(player, session);
            return;
        }

        player.SendMessage($"Unknown /qol subcommand '{head}'. Try: commands.", ChatMessageType.System);
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
}

