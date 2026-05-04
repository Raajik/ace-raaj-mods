namespace Swarmed.Creatures;

using ACE.Entity.Enum;

//[HarmonyPatchCategory(nameof(CreatureEx))]
public class CreatureEx : Creature
{
    public CreatureEx(Biota biota) : base(biota)
    {
        Initialize();
    }
#if REALM
    public CreatureEx(Weenie weenie, ObjectGuid guid, AppliedRuleset ruleset) : base(weenie, guid, ruleset)
#else
    public CreatureEx(Weenie weenie, ObjectGuid guid) : base(weenie, guid)
#endif

    {
        Initialize();
    }
    protected virtual void Initialize()
    {
        // Mark special creatures with a cyan/teal radar dot so they stand out in groups
        RadarColor = ACE.Entity.Enum.RadarColor.Cyan;

        // FakeInt.CreatureExType (10029): required for SpecialCreatureLoot and call-for-help labeling.
        // Weenie templates from factory rolls usually omit this; concrete class name matches CreatureExType enum.
        if (GetType() != typeof(CreatureEx)
            && Enum.TryParse<CreatureExType>(GetType().Name, out var exType)
            && exType != CreatureExType.Unknown)
        {
            SetProperty((PropertyInt)FakeInt.CreatureExType, (int)exType);
        }
    }

    #region Commands
    static CreatureExType[] types = Enum.GetValues<CreatureExType>();
    static string availableTypes = string.Join('\n', types.Select(x => $"  {x.ToString()} - {(int)x}"));
    [CommandHandler("cex", AccessLevel.Developer, CommandHandlerFlag.RequiresWorld)]
    public static void HandleCreateEx(Session session, params string[] parameters)
    {
        if (session?.Player is not Player player)
            return;

        //Check parameters
        if (parameters.Length != 2)
        {
            player.SendMessage($"Available types are: \n{availableTypes}");
            return;
        }

        var name = parameters[0];
        var resolved = Enum.TryParse<CreatureExType>(name, true, out var type);
        if (!resolved && uint.TryParse(name, out var index))
        {
            type = (CreatureExType)index;
            resolved = Enum.IsDefined(type) && type != CreatureExType.Unknown;
        }

        if (!resolved && PatchClass.Settings is { AllowPartialCreatureExTypeMatch: true })
        {
            var matches = types.Where(t => t != CreatureExType.Unknown && t.ToString().Contains(name, StringComparison.OrdinalIgnoreCase)).ToList();
            if (matches.Count == 1)
            {
                type = matches[0];
                resolved = true;
            }
        }

        if (!resolved || !Enum.IsDefined(type) || type == CreatureExType.Unknown)
        {
            player.SendMessage($"Available types are: \n{availableTypes}");
            return;
        }

        var weenie = AdminCommands.GetWeenieForCreate(session, parameters[1]);
        if (weenie is null)
        {
            player.SendMessage($"Provide a valid weenie ID: {parameters[1]}");
            return;
        }

#if REALM
        var creature = type.Create(weenie, GuidManager.NewDynamicGuid(), player.RealmRuleset);
#else
        var creature = type.Create(weenie, GuidManager.NewDynamicGuid());
#endif
        creature.MoveInFrontOf(player);
        creature.EnterWorld();

        player.SendMessage($"{creature.Name} created.");
    }
    #endregion
}
