namespace EmpyreanAlteration.Mutators;

public class Slayer : Mutator
{
    CreatureType[] _species = Array.Empty<CreatureType>();

    public override bool CheckMutatesLoot(HashSet<Mutation> mutations, TreasureDeath profile, TreasureRoll roll, WorldObject? item = null)
    {
        if (item is null)
            return false;

        if (item.GetProperty(PropertyInt.SlayerCreatureType) is not null)
            return false;

        return base.CheckMutatesLoot(mutations, profile, roll, item);
    }

    public override bool TryMutateLoot(HashSet<Mutation> mutations, TreasureDeath profile, TreasureRoll roll, WorldObject item)
    {
        if (!AugmentHelper.TryGetRandom(_species, out var type))
            return false;

        var power = PatchClass.Settings.SlayerPower[profile.Tier];

        item.SetProperty(PropertyInt.SlayerCreatureType, (int)type);
        item.SetProperty(PropertyFloat.SlayerDamageBonus, power);

        return true;
    }

    public override void Start()
    {
        var groupName = PatchClass.Settings.Slayers;
        if (!PatchClass.Settings.CreatureTypeGroups.TryGetValue(groupName, out var cTypes))
            cTypes = Enum.GetValues<CreatureType>();

        _species = cTypes.Where(x => x != CreatureType.Invalid && x != CreatureType.Unknown && x != CreatureType.Wall).ToArray();

        if (PatchClass.Settings.Verbose)
            ModManager.Log($"[EmpyreanAlteration.Slayer] Set up bag of {_species.Length} species to add Slayer from.");
    }
}
