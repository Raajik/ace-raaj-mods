namespace Overtinked;

// Crippling Blow / Fire Opal family: dark red frame underlay + red Fire glow (not blue Magical).
// Clears all client UiEffects bits so Hemorrhage wins over rend / defense / other mods that OR glow later.
internal static class HemorrhageWeaponVisual
{
    internal const uint CripplingBlowIconUnderlay = 0x06003357;

    internal const int AllUiEffectsGlowMask =
        (int)(UiEffects.Magical | UiEffects.Poisoned | UiEffects.BoostHealth | UiEffects.BoostMana | UiEffects.BoostStamina
            | UiEffects.Fire | UiEffects.Lightning | UiEffects.Frost | UiEffects.Acid
            | UiEffects.Bludgeoning | UiEffects.Slashing | UiEffects.Piercing | UiEffects.Nether);

    [ThreadStatic]
    private static int _applyDepth;

    internal static bool IsApplyingVisual => _applyDepth > 0;

    internal static void ApplyIfHemorrhageWeapon(Settings? settings, WorldObject item)
    {
        if (settings?.HemorrhageImbue?.Enabled != true)
            return;

        if ((OvertinkedImbueStore.Get(item) & OvertinkedImbueFlags.Hemorrhage) == 0)
            return;

        int desiredUi = (int)UiEffects.Fire;

        _applyDepth++;
        try
        {
            int ui = item.GetProperty(PropertyInt.UiEffects) ?? 0;
            ui &= ~AllUiEffectsGlowMask;
            ui |= desiredUi;

            item.IconUnderlayId = CripplingBlowIconUnderlay;
            item.SetProperty(PropertyInt.UiEffects, ui);
            item.CalculateObjDesc();
            try
            {
                item.EnqueueBroadcastUpdateObject();
            }
            catch
            {
                // Non-broadcast contexts: appearance still updated server-side.
            }
        }
        finally
        {
            _applyDepth--;
        }
    }

    internal static bool HasHemorrhageWeaponLook(WorldObject item)
    {
        if (item == null)
            return false;

        int ui = item.GetProperty(PropertyInt.UiEffects) ?? 0;
        if ((ui & AllUiEffectsGlowMask) != (int)UiEffects.Fire)
            return false;

        return (item.IconUnderlayId ?? 0) == CripplingBlowIconUnderlay;
    }
}
