using ACE.Entity.Enum;
using ACE.Server.Managers;

namespace Overtinked;

// After chaos mutates imbues/slayer/mana/spells, align icon underlay + UiEffects with retail-style cues so clients show correct glow/frame.
internal static class ChaosAppearance
{
    static readonly ImbuedEffectType[] ImbueUnderlayPriority =
    {
        ImbuedEffectType.CripplingBlow,
        ImbuedEffectType.CriticalStrike,
        ImbuedEffectType.ArmorRending,
        ImbuedEffectType.AcidRending,
        ImbuedEffectType.BludgeonRending,
        ImbuedEffectType.ColdRending,
        ImbuedEffectType.ElectricRending,
        ImbuedEffectType.FireRending,
        ImbuedEffectType.NetherRending,
        ImbuedEffectType.PierceRending,
        ImbuedEffectType.SlashRending,
    };

    const ImbuedEffectType DefenseFlags =
        ImbuedEffectType.MeleeDefense | ImbuedEffectType.MissileDefense | ImbuedEffectType.MagicDefense;

    internal static void Apply(WorldObject target, Settings? settings)
    {
        if (target == null)
            return;

        SyncIconUnderlay(target);
        SyncUiEffects(target);
        if (settings != null)
            HemorrhageWeaponVisual.ApplyIfHemorrhageWeapon(settings, target);
        target.CalculateObjDesc();
    }

    static void SyncIconUnderlay(WorldObject target)
    {
        ImbuedEffectType combined = RecipeManager.GetImbuedEffects(target);

        foreach (ImbuedEffectType kind in ImbueUnderlayPriority)
        {
            if ((combined & kind) == 0)
                continue;

            if (RecipeManager.IconUnderlay.TryGetValue(kind, out uint did))
            {
                target.IconUnderlayId = did;
                return;
            }
        }

    }

    static void SyncUiEffects(WorldObject target)
    {
        int ui = target.GetProperty(PropertyInt.UiEffects) ?? 0;
        ImbuedEffectType imb = RecipeManager.GetImbuedEffects(target);

        ui |= RendUiFromImbued(imb);

        if ((imb & (DefenseFlags | ImbuedEffectType.ArmorRending | ImbuedEffectType.CripplingBlow | ImbuedEffectType.CriticalStrike)) != 0
            && (imb & ChaosFailureEffects.AllRendingFlags) == 0)
        {
            ui |= (int)UiEffects.Magical;
        }

        if (target.SlayerCreatureType != null)
            ui |= (int)UiEffects.Nether;

        if ((target.ItemMaxMana ?? 0) > 0)
            ui |= (int)UiEffects.Magical;

        DamageType? dt = (DamageType?)target.GetProperty(PropertyInt.DamageType);
        if (dt.HasValue)
            ui |= RendUiFromDamageType(dt.Value);

        target.SetProperty(PropertyInt.UiEffects, ui);
    }

    static int RendUiFromImbued(ImbuedEffectType imb)
    {
        int bits = 0;
        if ((imb & ImbuedEffectType.AcidRending) != 0)
            bits |= (int)UiEffects.Acid;
        if ((imb & ImbuedEffectType.FireRending) != 0)
            bits |= (int)UiEffects.Fire;
        if ((imb & ImbuedEffectType.ColdRending) != 0)
            bits |= (int)UiEffects.Frost;
        if ((imb & ImbuedEffectType.ElectricRending) != 0)
            bits |= (int)UiEffects.Lightning;
        if ((imb & ImbuedEffectType.NetherRending) != 0)
            bits |= (int)UiEffects.Nether;
        return bits;
    }

    static int RendUiFromDamageType(DamageType dt)
    {
        return dt switch
        {
            DamageType.Acid => (int)UiEffects.Acid,
            DamageType.Fire => (int)UiEffects.Fire,
            DamageType.Cold => (int)UiEffects.Frost,
            DamageType.Electric => (int)UiEffects.Lightning,
            DamageType.Nether => (int)UiEffects.Nether,
            _ => 0,
        };
    }
}
