namespace Overtinked;

// Strips weaker quest/fixed stats before applying the matching stock imbue (RecipeManager TryMutate dataIds).
// See ACE WorldObject_Weapon: Biting Strike = CriticalFrequency; quest resistance cleaving = ResistanceModifierType + ResistanceModifier; Armor Cleaving section uses IgnoreArmor.
internal static class LesserImbueUpgrade
{
    internal static void ApplyStrips(WorldObject target, ImbuedEffectType applying, bool enabled)
    {
        if (!enabled || target == null)
            return;

        switch (applying)
        {
            case ImbuedEffectType.ArmorRending:
                target.RemoveProperty(PropertyFloat.IgnoreArmor);
                break;
            case ImbuedEffectType.CriticalStrike:
                target.RemoveProperty(PropertyFloat.CriticalFrequency);
                break;
            case ImbuedEffectType.CripplingBlow:
                target.RemoveProperty(PropertyFloat.CriticalMultiplier);
                break;
            case ImbuedEffectType.AcidRending:
                ClearResistanceCleavingIfMatch(target, DamageType.Acid);
                break;
            case ImbuedEffectType.BludgeonRending:
                ClearResistanceCleavingIfMatch(target, DamageType.Bludgeon);
                break;
            case ImbuedEffectType.ColdRending:
                ClearResistanceCleavingIfMatch(target, DamageType.Cold);
                break;
            case ImbuedEffectType.ElectricRending:
                ClearResistanceCleavingIfMatch(target, DamageType.Electric);
                break;
            case ImbuedEffectType.FireRending:
                ClearResistanceCleavingIfMatch(target, DamageType.Fire);
                break;
            case ImbuedEffectType.PierceRending:
                ClearResistanceCleavingIfMatch(target, DamageType.Pierce);
                break;
            case ImbuedEffectType.SlashRending:
                ClearResistanceCleavingIfMatch(target, DamageType.Slash);
                break;
        }
    }

    static void ClearResistanceCleavingIfMatch(WorldObject target, DamageType damageType)
    {
        int? raw = target.GetProperty(PropertyInt.ResistanceModifierType);
        if (raw == null)
            return;
        if ((DamageType)raw.Value != damageType)
            return;
        target.RemoveProperty(PropertyInt.ResistanceModifierType);
        target.RemoveProperty(PropertyFloat.ResistanceModifier);
    }
}
