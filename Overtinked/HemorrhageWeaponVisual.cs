namespace Overtinked;

// Crippling Blow icon underlay (dark red frame); matches EmpyreanAlteration / AugmentSystem.
internal static class HemorrhageWeaponVisual
{
    internal const uint CripplingBlowIconUnderlay = 0x06003357;

    // Strip elemental-rend UiEffects bits so Hemorrhage can own tint over rend.
    private const int RendishUiMask =
        (int)(UiEffects.Acid | UiEffects.Frost | UiEffects.Lightning | UiEffects.Fire | UiEffects.Nether
            | UiEffects.BoostHealth | UiEffects.BoostStamina);

    internal static void ApplyIfHemorrhageWeapon(Settings? settings, WorldObject item)
    {
        if (settings?.HemorrhageImbue?.Enabled != true)
            return;

        if ((OvertinkedImbueStore.Get(item) & OvertinkedImbueFlags.Hemorrhage) == 0)
            return;

        int ui = item.GetProperty(PropertyInt.UiEffects) ?? 0;
        ui &= ~RendishUiMask;
        // Match secondary weapon imbue cue (CS/CB/AR): blue magical glow, not Fire Rending orange/red.
        ui |= (int)UiEffects.Magical;

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
}
