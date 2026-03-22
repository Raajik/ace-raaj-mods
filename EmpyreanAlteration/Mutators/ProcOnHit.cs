namespace EmpyreanAlteration.Mutators;

//ConcurrentBag<
public class ProcOnHit : Mutator
{
    SpellId[] spells = Array.Empty<SpellId>();

    public override bool TryMutateLoot(HashSet<Mutation> mutations, TreasureDeath profile, TreasureRoll roll, WorldObject wo)
    {
        if (!spells.TryGetRandom(out var spellId))
            return false;

        wo.ItemMaxLevel = CloakChance.Roll_ItemMaxLevel(profile);
        wo.WieldDifficulty = wo.ItemMaxLevel switch
        {
            1 => 30,
            2 => 60,
            3 => 00,
            4 => 120,
            5 => 150,
            _ => 150,
        };

        wo.ItemXpStyle = ItemXpStyle.Fixed;
        wo.ItemBaseXp = 1_000_000_000;
        //wo.ItemTotalXp = 0;
        wo.ItemTotalXp = wo.ItemBaseXp;

        wo.IconOverlayId = LootGenerationFactory.IconOverlay_ItemMaxLevel[wo.ItemMaxLevel.Value - 1];

        //Add a set
        //wo.RollEquipmentSet(roll);

        //Use custom set; target filters follow mutator WeenieType / odds rules.
        //SpellId spellId = PatchClass.Settings.UseCustomCloakSpellProcs ? RollProcSpell() : CloakChance.RollProcSpell();
        //wo.SetCloakSpellProc(spellId);
        wo.SetCloakSpellProc(spellId);

        // Odds table is authoritative for proc rate per tier.
        //wo.MaterialType = LootGenerationFactory.GetMaterialType(wo, profile.Tier);
        //wo.Workmanship = WorkmanshipChance.Roll(profile.Tier);
        //if (roll != null && profile.Tier == 8)
        //{
        //    LootGenerationFactory.TryMutateGearRating(wo, profile, roll);
        //}

        //LootGenerationFactory.MutateValue(wo, profile.Tier, roll);
        return true;
    }

    public override void Start()
    {
        //Find group or use default
        var groupName = PatchClass.Settings.ProcOnSpells;
        if (!PatchClass.Settings.SpellGroups.TryGetValue(groupName, out var spellArr) || spellArr is null)
            spells = SpellGroup.Cloak.SetOf();
        else
            spells = spellArr;

        //Could build self target lookup?  Strip invalid spells?

        if (PatchClass.Settings.Verbose)
            ModManager.Log($"Set up bag of {spells.Length} spells to add as ProcOnHit.");
    }
}