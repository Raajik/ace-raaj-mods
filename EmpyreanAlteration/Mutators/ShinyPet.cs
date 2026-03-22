namespace EmpyreanAlteration.Mutators;

public class ShinyPet : Mutator
{
    public override bool CheckMutatesLoot(HashSet<Mutation> mutations, TreasureDeath profile, TreasureRoll roll, WorldObject? item = null)
    {
        return true;
    }

    public override bool TryMutateLoot(HashSet<Mutation> mutations, TreasureDeath profile, TreasureRoll roll, WorldObject item)
    {
        if (item is not PetDevice petDevice)
            return false;

        petDevice.Name = "Shiny " + petDevice.Name;
        petDevice.MaxStructure = 250;

        petDevice.GearCrit = 100;

        var actionChain = new ActionChain();
        actionChain.AddDelaySeconds(3.0f);
        actionChain.AddAction(item, () =>
        {
            if (item.Container is not Corpse corpse)
                return;

            if (PlayerManager.FindByGuid(corpse.KillerId ?? 0) is not Player player)
                return;

            if (item is not PetDevice delayedPet)
                return;

            var livingType = corpse.GetProperty(FakeInt.CorpseLivingWCID);
            if (livingType is null)
                return;

            var weenie = DatabaseManager.World.GetCachedWeenie((uint)livingType);
            if (weenie is null)
                return;

            player.DoWorldBroadcast($"A shiny {weenie.GetName()} has dropped from a {corpse.Name} killed by {player.Name}!!", ChatMessageType.WorldBroadcast);
            delayedPet.PetClass = livingType;
            delayedPet.Structure = 250;
            delayedPet.CooldownDuration = 5;
            delayedPet.IconId = weenie.GetProperty(PropertyDataId.Icon) ?? delayedPet.IconId;
            delayedPet.RemoveProperty(PropertyInt.SummoningMastery);

            delayedPet.UseRequiresLevel = null;
            delayedPet.UseRequiresSkillLevel = null;
            delayedPet.UseRequiresSkill = null;

            delayedPet.Name = $"Shiny {corpse.Name}";
        });
        actionChain.EnqueueChain();

        return true;
    }

    public override void Start()
    {
    }
}
