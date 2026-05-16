namespace Empower.Healing;

/// <summary>
/// Perk types that can appear on an Anointed Healing Kit.
/// </summary>
public enum AnointedPerk
{
    OmniHeal = 0,
    Regeneration = 1,
    AutoSelf = 2,
    Efficiency = 3,
    CriticalSurge = 4,
    Cleansing = 5,
    ReactiveBarrier = 6,
    Boon = 7,
}

/// <summary>
/// Perk storage property IDs. Each FakeBool indicates the perk's presence on a kit.
/// PerkValue is stored on a corresponding FakeFloat.
/// </summary>
public static class AnointedKitPropertyIds
{
    // FakeBool flags — one per perk. These indicate the perk IS present on this kit.
    public const uint Perk_OmniHeal = 40150;
    public const uint Perk_Regeneration = 40151;
    public const uint Perk_AutoSelf = 40152;
    public const uint Perk_Efficiency = 40153;
    public const uint Perk_CriticalSurge = 40154;
    public const uint Perk_Cleansing = 40155;
    public const uint Perk_ReactiveBarrier = 40156;
    public const uint Perk_Boon = 40157;

    // FakeFloat — stores the rolled perk value (e.g., splash %, HoT %, DR rating)
    public const uint Value_OmniHeal = 40160;
    public const uint Value_Regeneration = 40161;
    public const uint Value_Efficiency = 40163;
    public const uint Value_CriticalSurge = 40164;
    public const uint Value_Cleansing = 40165;
    public const uint Value_ReactiveBarrier = 40166;
    public const uint Value_Boon = 40167;

    // PropertyInt — stores the loot tier the kit rolled at (0–7 for T1–T8)
    public const uint KitTier = 40170;

    public static uint PerkFlagProperty(AnointedPerk perk) => perk switch
    {
        AnointedPerk.OmniHeal => Perk_OmniHeal,
        AnointedPerk.Regeneration => Perk_Regeneration,
        AnointedPerk.AutoSelf => Perk_AutoSelf,
        AnointedPerk.Efficiency => Perk_Efficiency,
        AnointedPerk.CriticalSurge => Perk_CriticalSurge,
        AnointedPerk.Cleansing => Perk_Cleansing,
        AnointedPerk.ReactiveBarrier => Perk_ReactiveBarrier,
        AnointedPerk.Boon => Perk_Boon,
        _ => 0,
    };

    public static uint PerkValueProperty(AnointedPerk perk) => perk switch
    {
        AnointedPerk.OmniHeal => Value_OmniHeal,
        AnointedPerk.Regeneration => Value_Regeneration,
        AnointedPerk.Efficiency => Value_Efficiency,
        AnointedPerk.CriticalSurge => Value_CriticalSurge,
        AnointedPerk.Cleansing => Value_Cleansing,
        AnointedPerk.ReactiveBarrier => Value_ReactiveBarrier,
        AnointedPerk.Boon => Value_Boon,
        _ => 0,
    };

    /// <summary>All perk flag property IDs.</summary>
    public static readonly uint[] AllPerkFlags = new[]
    {
        Perk_OmniHeal, Perk_Regeneration, Perk_AutoSelf, Perk_Efficiency,
        Perk_CriticalSurge, Perk_Cleansing, Perk_ReactiveBarrier, Perk_Boon,
    };
}