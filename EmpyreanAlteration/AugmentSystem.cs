namespace EmpyreanAlteration;

public enum Augment
{
    // Function
    ArmorLevel,
    ArmorModVsPierce,
    ArmorModVsSlash,
    ArmorModVsBludgeon,
    ArmorModVsAcid,
    ArmorModVsFire,
    ArmorModVsCold,
    ArmorModVsElectric,

    // Armor
    Steel,
    Alabaster,
    Bronze,
    Marble,
    ArmoredilloHide,
    Ceramic,
    Wool,
    ReedSharkHide,
    Peridot,
    YellowTopaz,
    Zircon,
    // Item
    Pine,
    Gold,
    Linen,
    Leather,
    Moonstone,
    Sandstone,
    Copper,
    Silver,
    Silk,
    // Magic Item
    Sunstone,
    FireOpal,
    BlackOpal,
    Opal,
    GreenGarnet,
    // Weapon
    Iron,
    Mahogany,
    Granite,
    Oak,
    Brass,
    Velvet,
    Emerald,
    WhiteSapphire,
    Aquamarine,
    Jet,
    RedGarnet,
    BlackGarnet,
    ImperialTopaz,
    FetishOfTheDarkIdols,
    // Custom
    RendAll,
    Big,
}

public enum AugmentGroup
{
    Full,
    Armor,
    Item,
    MagicItem,
    Weapon,
}

public static class AugmentHelper
{
    public static Augment[] SetOf(this AugmentGroup type) => type switch
    {
        AugmentGroup.Full => Enum.GetValues<Augment>(),
        AugmentGroup.Armor => new[]
        {
            Augment.Steel,
            Augment.Alabaster,
            Augment.Bronze,
            Augment.Marble,
            Augment.ArmoredilloHide,
            Augment.Ceramic,
            Augment.Wool,
            Augment.ReedSharkHide,
            Augment.Peridot,
            Augment.YellowTopaz,
            Augment.Zircon,
        },
        AugmentGroup.Item => new[]
        {
            Augment.Pine,
            Augment.Gold,
            Augment.Linen,
            Augment.Leather,
            Augment.Moonstone,
            Augment.Sandstone,
            Augment.Copper,
            Augment.Silver,
            Augment.Silk,
        },
        AugmentGroup.MagicItem => new[]
        {
            Augment.Sunstone,
            Augment.FireOpal,
            Augment.BlackOpal,
            Augment.Opal,
            Augment.GreenGarnet,
        },
        AugmentGroup.Weapon => new[]
        {
            Augment.Iron,
            Augment.Mahogany,
            Augment.Granite,
            Augment.Oak,
            Augment.Brass,
            Augment.Velvet,
            Augment.Emerald,
            Augment.WhiteSapphire,
            Augment.Aquamarine,
            Augment.Jet,
            Augment.RedGarnet,
            Augment.BlackGarnet,
            Augment.ImperialTopaz,
            Augment.FetishOfTheDarkIdols
        },
        _ => throw new NotImplementedException(),
    };

    public static bool TryGetRandom<T>(this T[]? array, out T value)
    {
        if (array is null || array.Length == 0)
        {
            value = default!;
            return false;
        }

        value = array[ThreadSafeRandom.Next(0, array.Length)];
        return true;
    }

    /// <summary>
    /// Sets ImbuedEffect and the corresponding IconUnderlay for recognized imbue types.
    /// Defense imbues and NetherRending have no underlay and are left as-is.
    /// </summary>
    static void SetImbuedEffectWithUnderlay(this WorldObject target, ImbuedEffectType effect)
    {
        target.ImbuedEffect = effect;
        if (IconUnderlay.TryGetValue(effect, out var underlay))
            target.IconUnderlayId = underlay;
    }

    public static bool TryAugmentWith(this WorldObject target, Augment augment)
    {
        switch (augment)
        {
            #region armor tinkering
            case Augment.Steel:
                target.ArmorLevel += 20;
                return true;
            case Augment.Alabaster:
                target.ArmorModVsPierce += 0.2f;
                return true;
            case Augment.Bronze:
                target.ArmorModVsSlash += 0.2f;
                return true;
            case Augment.Marble:
                target.ArmorModVsBludgeon += 0.2f;
                return true;
            case Augment.ArmoredilloHide:
                target.ArmorModVsAcid += 0.4f;
                return true;
            case Augment.Ceramic:
                target.ArmorModVsFire += 0.4f;
                return true;
            case Augment.Wool:
                target.ArmorModVsCold += 0.4f;
                return true;
            case Augment.ReedSharkHide:
                target.ArmorModVsElectric += 0.4f;
                return true;
            case Augment.Peridot:
                target.ImbuedEffect = ImbuedEffectType.MeleeDefense;
                return true;
            case Augment.YellowTopaz:
                target.ImbuedEffect = ImbuedEffectType.MissileDefense;
                return true;
            case Augment.Zircon:
                target.ImbuedEffect = ImbuedEffectType.MagicDefense;
                return true;
            #endregion

            #region item tinkering
            case Augment.Pine:
                target.Value = (int?)(target.Value * 0.75f);
                return true;
            case Augment.Gold:
                target.Value = (int?)(target.Value * 1.25f);
                return true;
            case Augment.Linen:
                target.EncumbranceVal = (int?)(target.EncumbranceVal * 0.75f);
                return true;
            case Augment.Leather:
                target.Retained = true;
                return true;
            case Augment.Sandstone:
                target.Retained = false;
                return true;
            case Augment.Moonstone:
                target.ItemMaxMana += 500;
                return true;
            case Augment.Copper:
                if (target.ItemSkillLimit != Skill.MissileDefense || target.ItemSkillLevelLimit == null)
                    return false;
                target.ItemSkillLimit = Skill.MeleeDefense;
                target.ItemSkillLevelLimit = (int)(target.ItemSkillLevelLimit / 0.7f);
                return true;
            case Augment.Silver:
                if (target.ItemSkillLimit != Skill.MeleeDefense || target.ItemSkillLevelLimit == null)
                    return false;
                target.ItemSkillLimit = Skill.MissileDefense;
                target.ItemSkillLevelLimit = (int)(target.ItemSkillLevelLimit * 0.7f);
                return true;
            case Augment.Silk:
                target.ItemAllegianceRankLimit = null;
                target.ItemDifficulty = target.ItemSpellcraft;
                return true;
            #endregion

            #region magic item tinkering
            case Augment.Sunstone:
                target.SetImbuedEffectWithUnderlay(ImbuedEffectType.ArmorRending);
                return true;
            case Augment.FireOpal:
                target.SetImbuedEffectWithUnderlay(ImbuedEffectType.CripplingBlow);
                return true;
            case Augment.BlackOpal:
                target.SetImbuedEffectWithUnderlay(ImbuedEffectType.CriticalStrike);
                return true;
            case Augment.Opal:
                target.ManaConversionMod = (target.ManaConversionMod ?? 0.0f) + 0.01f;
                return true;
            case Augment.GreenGarnet:
                target.ElementalDamageMod = (target.ElementalDamageMod ?? 0.0f) + 0.01f;
                return true;
            #endregion

            #region weapon tinkering
            case Augment.Iron:
                target.Damage += 1;
                return true;
            case Augment.Mahogany:
                target.DamageMod += 0.04f;
                return true;
            case Augment.Granite:
                target.DamageVariance *= 0.8f;
                return true;
            case Augment.Oak:
                target.WeaponTime = Math.Max(0, (target.WeaponTime ?? 0) - 50);
                return true;
            case Augment.Brass:
                target.WeaponDefense += 0.01f;
                return true;
            case Augment.Velvet:
                target.WeaponOffense += 0.01f;
                return true;
            case Augment.Emerald:
                target.SetImbuedEffectWithUnderlay(ImbuedEffectType.AcidRending);
                return true;
            case Augment.WhiteSapphire:
                target.SetImbuedEffectWithUnderlay(ImbuedEffectType.BludgeonRending);
                return true;
            case Augment.Aquamarine:
                target.SetImbuedEffectWithUnderlay(ImbuedEffectType.ColdRending);
                return true;
            case Augment.Jet:
                target.SetImbuedEffectWithUnderlay(ImbuedEffectType.ElectricRending);
                return true;
            case Augment.RedGarnet:
                target.SetImbuedEffectWithUnderlay(ImbuedEffectType.FireRending);
                return true;
            case Augment.BlackGarnet:
                target.SetImbuedEffectWithUnderlay(ImbuedEffectType.PierceRending);
                return true;
            case Augment.ImperialTopaz:
                target.SetImbuedEffectWithUnderlay(ImbuedEffectType.SlashRending);
                return true;
            case Augment.FetishOfTheDarkIdols:
                if (target.ImbuedEffect >= ImbuedEffectType.IgnoreAllArmor)
                    target.ImbuedEffect = ImbuedEffectType.Undef;
                target.ImbuedEffect |= ImbuedEffectType.IgnoreSomeMagicProjectileDamage;
                return true;
            case Augment.RendAll:
                target.ImbuedEffect |= ImbuedEffectType.AcidRending | ImbuedEffectType.ColdRending | ImbuedEffectType.FireRending | ImbuedEffectType.ElectricRending |
                    ImbuedEffectType.BludgeonRending | ImbuedEffectType.PierceRending | ImbuedEffectType.SlashRending | ImbuedEffectType.NetherRending;
                target.IconUnderlayId ??= IconUnderlay[ImbuedEffectType.Undef];
                return true;

            case Augment.Big:
                if (target.ObjScale is null)
                    return false;
                target.ObjScale *= 1.2f;

                if (PlayerManager.GetOnlinePlayer(target.OwnerId ?? 0) is Player player)
                    player.UpdateProperty(target, PropertyFloat.DefaultScale, target.ObjScale, true);

                return true;
            default:
                return false;
                #endregion
        }
    }

    private static readonly Dictionary<ImbuedEffectType, uint> IconUnderlay = new Dictionary<ImbuedEffectType, uint>()
    {
        { ImbuedEffectType.ColdRending,     0x06003353 },
        { ImbuedEffectType.ElectricRending, 0x06003354 },
        { ImbuedEffectType.AcidRending,     0x06003355 },
        { ImbuedEffectType.ArmorRending,    0x06003356 },
        { ImbuedEffectType.CripplingBlow,   0x06003357 },
        { ImbuedEffectType.CriticalStrike,  0x06003358 },
        { ImbuedEffectType.FireRending,     0x06003359 },
        { ImbuedEffectType.BludgeonRending, 0x0600335a },
        { ImbuedEffectType.PierceRending,   0x0600335b },
        { ImbuedEffectType.SlashRending,    0x0600335c },
        { ImbuedEffectType.Undef ,           0x6005B0C },
    };
}
