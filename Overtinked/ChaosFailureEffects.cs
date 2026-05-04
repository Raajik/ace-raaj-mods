namespace Overtinked;

/// <summary>
/// Context-aware chaotic positive failure effects for Overtinked Phase 3.
/// Effects are weighted based on what the player was trying to tinker.
/// </summary>
public static class ChaosFailureEffects
{
    // ── Message Pools ───────────────────────────────────────────────────

    private static readonly string[] OverchargeMessages = new[]
    {
        "The salvage reacts violently, OVERCHARGING your {0}!",
        "Chaos amplifies the effect beyond all expectation! Your {0} surges with power!",
        "The tinker fails... but the wild magic overcharges your {0} instead!",
        "A misfire of epic proportions! Your {0} absorbs FAR more than intended!",
    };

    private static readonly string[] CascadeMessages = new[]
    {
        "The tinker cascades, blessing your {0} with unexpected power!",
        "Chaos splinters — your {0} gains a secondary blessing!",
        "The salvage shatters unpredictably, drenching your {0} in bonus energy!",
        "A wild resonance! Your {0} hums with doubled fortune!",
    };

    private static readonly string[] ManaSurgeMessages = new[]
    {
        "A wild mana surge courses through your {0}!",
        "The failed tinker unleashes a mana storm — your {0} overflows with power!",
        "Arcane energy erupts! Your {0} is bathed in raw mana!",
        "The chaos feeds your {0} a torrent of magical essence!",
    };

    private static readonly string[] WorkmanshipRefinementMessages = new[]
    {
        "The strain smooths your {0}'s imperfections, refining its workmanship!",
        "Chaos polishes rather than breaks — your {0} becomes easier to work!",
        "The failed tinker tempers your {0}, making future tinkers easier!",
        "Against all odds, your {0} emerges simpler and more pliable than before!",
    };

    private static readonly string[] TinkerRewindMessages = new[]
    {
        "A temporal echo rewinds the damage to your {0}!",
        "The chaos folds back on itself — your {0} forgets some of its past abuse!",
        "Reality hiccups! Your {0}'s tinker count unwinds!",
        "A strange reversal! Your {0} sheds layers of previous modification!",
    };

    private static readonly string[] CapExpansionMessages = new[]
    {
        "The chaos unlocks hidden potential in your {0}!",
        "Your {0} stretches beyond its original limits!",
        "The failed tinker breaks a seal — your {0} can endure MORE!",
        "Reality warps around your {0}, expanding what it can become!",
    };

    private static readonly string[] SpellWhisperMessages = new[]
    {
        "The chaos whispers a secret spell into your {0}!",
        "A forgotten enchantment awakens within your {0}!",
        "The failed tinker opens a rift — your {0} catches a stray blessing!",
        "Reality frays, and your {0} steals a spell from the ether!",
    };

    private static readonly string[] HowDidYouEvenMessages = new[]
    {
        "HOW DID YOU EVEN DO THAT?! Your {0} has been catastrophically blessed!",
        "Reality itself facepalms. Your {0} is now a glorious disaster!",
        "The chaos gods are HOWLING with laughter! Your {0} is a masterpiece of failure!",
        "By all that is holy... HOW?! Your {0} defies every law of tinkering!",
    };

    private static readonly string[] AccidentalSuccessMessages = new[]
    {
        "The chaos laughs at your failure and grants the imbue anyway!",
        "Reality glitches — your {0} catches the imbue you wanted by accident!",
        "The salvage misfires... directly into the exact effect you were aiming for!",
        "A happy accident! Your {0} gains the power you sought!",
    };

    private static readonly string[] BonusImbueMessages = new[]
    {
        "The chaos is generous today! Your {0} gets the imbue you wanted AND a bonus!",
        "A double blessing! Your {0} surges with unexpected dual power!",
        "The misfire cascades into a twin imbue! Your {0} is doubly blessed!",
        "Fortune favors the clumsy! Your {0} gains two imbues at once!",
    };

    private static readonly string[] SlayerMessages = new[]
    {
        "The chaos brands your {0} as a slayer of {1}!",
        "A hunter's mark appears on your {0}! It yearns for {1} blood!",
        "Your {0} whispers with hatred for {1}!",
        "The failed tinker awakens a primal vendetta in your {0} against {1}!",
    };

    private static readonly string[] LightAsAFeatherMessages = new[]
    {
        "Your {0} becomes light as a feather!",
        "The chaos strips all weight from your {0}!",
        "Gravity loosens its grip — your {0} weighs almost nothing!",
        "Your {0} floats in your hand, utterly weightless!",
    };

    private static readonly string[] BlessedBurdenMessages = new[]
    {
        "The gods bless your {0} with strength, but demand a heavy tribute!",
        "Your {0} is imbued with divine might — and divine weight!",
        "A sacred bargain: your {0} grants prodigal strength, but grows impossibly heavy!",
        "The chaos giveth strength, and the chaos taketh away... in burden!",
    };

    private static readonly string[] DamageShuffleMessages = new[]
    {
        "The chaos reshuffles your {0}'s damage potential!",
        "A wild fluctuation! Your {0}'s damage output shifts unpredictably!",
        "The failed tinker reroutes power — your {0} gains a different kind of strength!",
        "Chaos rewrites your {0}'s offensive capabilities!",
    };

    // ── Spell / Slayer Data ─────────────────────────────────────────────

    // Item-spellbook entries must be valid SpellId values (Spell.Init rejects bad ids).
    private static readonly int[] WhisperSpellIds = new[]
    {
        (int)SpellId.ArmorSelf1,
        (int)SpellId.Impenetrability1,
        (int)SpellId.FireProtectionSelf1,
        (int)SpellId.BloodDrinkerSelf1,
        (int)SpellId.SwiftKillerSelf1,
        (int)SpellId.StrengthSelf1,
        (int)SpellId.ArmorSelf3,
        (int)SpellId.Impenetrability3,
        (int)SpellId.ArmorSelf5,
        (int)SpellId.Impenetrability5,
    };

    private static readonly int ProdigalStrengthSpellId = 4324; // StrengthOther8

    private static readonly CreatureType[] SlayerTypes = (CreatureType[])Enum.GetValues(typeof(CreatureType));

    private static readonly (string EffectKind, int Min, int Max)[] CascadeBonuses = new[]
    {
        ("ArmorLevel", 5, 20),
        ("DamageMod", 1, 3),
        ("WeaponDefense", 1, 3),
        ("WeaponOffense", 1, 3),
        ("ArmorModVsSlash", 1, 3),
        ("ArmorModVsPierce", 1, 3),
        ("ArmorModVsBludgeon", 1, 3),
        ("ArmorModVsFire", 1, 3),
        ("ArmorModVsCold", 1, 3),
        ("ArmorModVsAcid", 1, 3),
        ("ArmorModVsElectric", 1, 3),
    };

    private static readonly ImbuedEffectType[] AllImbueEffects = new[]
    {
        ImbuedEffectType.AcidRending, ImbuedEffectType.BludgeonRending, ImbuedEffectType.ColdRending,
        ImbuedEffectType.ElectricRending, ImbuedEffectType.FireRending, ImbuedEffectType.NetherRending,
        ImbuedEffectType.PierceRending, ImbuedEffectType.SlashRending,
        ImbuedEffectType.ArmorRending, ImbuedEffectType.CripplingBlow, ImbuedEffectType.CriticalStrike,
        ImbuedEffectType.MeleeDefense, ImbuedEffectType.MissileDefense, ImbuedEffectType.MagicDefense,
    };

    internal static readonly ImbuedEffectType AllRendingFlags =
        ImbuedEffectType.AcidRending | ImbuedEffectType.BludgeonRending | ImbuedEffectType.ColdRending |
        ImbuedEffectType.ElectricRending | ImbuedEffectType.FireRending | ImbuedEffectType.NetherRending |
        ImbuedEffectType.PierceRending | ImbuedEffectType.SlashRending;

    // ── Main Entry Point ────────────────────────────────────────────────

    public static void ApplyContextualChaos(Player player, WorldObject target, SalvageTinkerRule? rule, Settings settings, uint wcid)
    {
        string itemName = target.NameWithMaterial ?? "item";

        try
        {
            // Rare universal catastrophic blessing: 1% chance for any failure
            if (Random.Shared.NextDouble() < 0.01)
            {
                ApplyHowDidYouEven(player, target, settings, itemName);
                return;
            }

            // Determine context
            bool isImbue = ImbueSalvageWcids.IsImbueSalvage(wcid, settings);
            bool isCustomImbue = false;
            if (!isImbue && settings.HemorrhageImbue?.SalvageWcids?.Contains(wcid) == true) isCustomImbue = true;
            if (!isImbue && settings.CleavingImbue?.SalvageWcids?.Contains(wcid) == true) isCustomImbue = true;
            if (!isImbue && settings.NetherRendingImbue?.SalvageWcids?.Contains(wcid) == true) isCustomImbue = true;
            if (!isImbue && settings.ShatterImbue?.SalvageWcids?.Contains(wcid) == true) isCustomImbue = true;

            string effectKind = rule?.EffectKind ?? "";
            bool isDamageTinker = effectKind is "Damage" or "DamageMod" or "ElementalDamageMod";
            bool isArmorModTinker = effectKind.StartsWith("ArmorModVs");
            bool isArmorLevelTinker = effectKind == "ArmorLevel";

            double roll = Random.Shared.NextDouble();

            // Route to context-specific pool
            if (isImbue || isCustomImbue)
            {
                ApplyImbueChaos(player, target, settings, wcid, itemName, roll);
            }
            else if (isDamageTinker)
            {
                ApplyDamageChaos(player, target, rule!, settings, itemName, roll);
            }
            else if (isArmorModTinker || isArmorLevelTinker)
            {
                ApplyArmorChaos(player, target, rule, settings, itemName, roll);
            }
            else
            {
                ApplyGenericChaos(player, target, rule, settings, itemName, roll);
            }
        }
        finally
        {
            if (player != null && target != null)
                ChaosAppearance.Apply(target, settings);
        }
    }

    // ── Imbue-Specific Chaos ────────────────────────────────────────────

    static void ApplyImbueChaos(Player player, WorldObject target, Settings settings, uint wcid, string itemName, double roll)
    {
        if (roll < 0.25)
            ApplyAccidentalImbueSuccess(player, target, wcid, itemName);
        else if (roll < 0.45)
            ApplyBonusImbue(player, target, wcid, itemName);
        else if (roll < 0.60)
            ApplySlayer(player, target, itemName);
        else if (roll < 0.75)
        {
            var overchargeRule = new SalvageTinkerRule { EffectKind = "DamageMod", FixedValue = 5 };
            if (!IsDamageEffectApplicable(target, overchargeRule.EffectKind))
            {
                var validImbue = ImbueSalvageWcids.GetImbueForWcid(wcid);
                var fallbacks = new List<Action>();
                if (validImbue != null)
                {
                    fallbacks.Add(() => ApplyAccidentalImbueSuccess(player, target, wcid, itemName));
                    fallbacks.Add(() => ApplyBonusImbue(player, target, wcid, itemName));
                }
                fallbacks.Add(() => ApplySlayer(player, target, itemName));
                fallbacks.Add(() => ApplyManaSurge(player, target, itemName, settings));
                fallbacks.Add(() => ApplyLightAsAFeather(player, target, itemName));

                var chosen = fallbacks[Random.Shared.Next(fallbacks.Count)];
                chosen();

                player.SendMessage($"[Overtinked] The chaos tries to overcharge your {itemName}'s damage, but it has no damage potential! The energy discharges as something else instead!", ChatMessageType.Craft);
                return;
            }
            ApplyOvercharge(player, target, overchargeRule, itemName, settings);
        }
        else if (roll < 0.85)
            ApplyManaSurge(player, target, itemName, settings);
        else if (roll < 0.93)
            ApplyLightAsAFeather(player, target, itemName);
        else
            ApplySpellWhisper(player, target, itemName, settings);
    }

    static void ApplyAccidentalImbueSuccess(Player player, WorldObject target, uint wcid, string itemName)
    {
        var imbue = ImbueSalvageWcids.GetImbueForWcid(wcid);
        if (imbue == null)
        {
            // Custom imbue (Hemorrhage, Cleaving, Nether, Shatter) — fallback to bonus slayer
            ApplySlayer(player, target, itemName);
            return;
        }

        ApplyImbueEffect(target, imbue.Value);

        string msg = string.Format(Random.Shared.GetItems(AccidentalSuccessMessages, 1)[0], itemName);
        player.SendMessage($"[Overtinked] {msg} Your {itemName} gains {imbue.Value}!", ChatMessageType.Craft);
    }

    static void ApplyBonusImbue(Player player, WorldObject target, uint wcid, string itemName)
    {
        var wanted = ImbueSalvageWcids.GetImbueForWcid(wcid);
        if (wanted == null)
        {
            ApplySlayer(player, target, itemName);
            return;
        }

        // Apply wanted imbue
        ApplyImbueEffect(target, wanted.Value);

        // Apply random valid extra imbue (different from wanted)
        var extra = GetRandomValidImbue(target, wanted.Value);
        if (extra.HasValue)
            ApplyImbueEffect(target, extra.Value);

        string extraName = extra.HasValue ? extra.Value.ToString() : "nothing extra";
        string msg = string.Format(Random.Shared.GetItems(BonusImbueMessages, 1)[0], itemName);
        player.SendMessage($"[Overtinked] {msg} Gained: {wanted.Value}" + (extra.HasValue ? $" + {extra.Value}!" : "!"), ChatMessageType.Craft);
        ModManager.Log($"[Overtinked] Chaos BonusImbue: {player.Name} gained {wanted.Value} + {extraName} on {target.Guid}", ModManager.LogLevel.Debug);
    }

    static void ApplyImbueEffect(WorldObject target, ImbuedEffectType effect)
    {
        // Handle rending flags (clear existing rends before adding new one)
        if ((effect & AllRendingFlags) != 0)
            target.ImbuedEffect &= ~AllRendingFlags;

        target.ImbuedEffect |= effect;

        // Set damage type for elemental rends
        if (effect == ImbuedEffectType.AcidRending) target.SetProperty(PropertyInt.DamageType, (int)DamageType.Acid);
        else if (effect == ImbuedEffectType.BludgeonRending) target.SetProperty(PropertyInt.DamageType, (int)DamageType.Bludgeon);
        else if (effect == ImbuedEffectType.ColdRending) target.SetProperty(PropertyInt.DamageType, (int)DamageType.Cold);
        else if (effect == ImbuedEffectType.ElectricRending) target.SetProperty(PropertyInt.DamageType, (int)DamageType.Electric);
        else if (effect == ImbuedEffectType.FireRending) target.SetProperty(PropertyInt.DamageType, (int)DamageType.Fire);
        else if (effect == ImbuedEffectType.NetherRending) target.SetProperty(PropertyInt.DamageType, (int)DamageType.Nether);
        else if (effect == ImbuedEffectType.PierceRending) target.SetProperty(PropertyInt.DamageType, (int)DamageType.Pierce);
        else if (effect == ImbuedEffectType.SlashRending) target.SetProperty(PropertyInt.DamageType, (int)DamageType.Slash);
    }

    static ImbuedEffectType? GetRandomValidImbue(WorldObject target, ImbuedEffectType exclude)
    {
        bool isCaster = target.ItemType == ItemType.Caster || target.WeaponSkill == Skill.MagicDefense;
        bool isWeaponLike = (target.ItemType & ItemType.Weapon) != 0;
        var candidates = AllImbueEffects.Where(i => i != exclude).ToList();

        // Remove invalid imbues for casters
        if (isCaster)
            candidates.RemoveAll(i => i == ImbuedEffectType.ArmorRending);
        else if (isWeaponLike)
            // MagicDefense bonus on melee/missile weapons is odd; armor/clothing/jewelry still allow MagicDefense (e.g. zircon).
            candidates.RemoveAll(i => i == ImbuedEffectType.MagicDefense);

        // Prevent double rending: if target already has any rending, or the wanted imbue is a rending,
        // exclude all rending types from the bonus pool.
        bool targetHasRending = (target.ImbuedEffect & AllRendingFlags) != 0;
        bool excludeIsRending = (exclude & AllRendingFlags) != 0;
        if (targetHasRending || excludeIsRending)
            candidates.RemoveAll(i => (i & AllRendingFlags) != 0);

        if (candidates.Count == 0)
            return null;

        return candidates[Random.Shared.Next(candidates.Count)];
    }

    static void ApplySlayer(Player player, WorldObject target, string itemName)
    {
        var creatureType = SlayerTypes[Random.Shared.Next(SlayerTypes.Length)];
        if (creatureType == CreatureType.Invalid)
            creatureType = CreatureType.Undead;

        target.SetProperty(PropertyInt.SlayerCreatureType, (int)creatureType);
        target.SetProperty(PropertyFloat.SlayerDamageBonus, 2.0);

        string typeName = creatureType.ToString();
        string msg = string.Format(Random.Shared.GetItems(SlayerMessages, 1)[0], itemName, typeName);
        player.SendMessage($"[Overtinked] {msg} (×{target.SlayerDamageBonus:0.#} damage vs {typeName})", ChatMessageType.Craft);
        ModManager.Log($"[Overtinked] Chaos Slayer: {player.Name} added {creatureType} slayer on {target.Guid}", ModManager.LogLevel.Debug);
    }

    // ── Damage-Specific Chaos ───────────────────────────────────────────

    static void ApplyDamageChaos(Player player, WorldObject target, SalvageTinkerRule rule, Settings settings, string itemName, double roll)
    {
        if (roll < 0.30)
            ApplyOvercharge(player, target, rule, itemName, settings);
        else if (roll < 0.55)
            ApplyCascade(player, target, rule, itemName, settings);
        else if (roll < 0.70)
            ApplyDamageModifierShuffle(player, target, itemName, settings);
        else if (roll < 0.80)
            ApplyManaSurge(player, target, itemName, settings);
        else if (roll < 0.90)
            ApplyLightAsAFeather(player, target, itemName);
        else
            ApplySpellWhisper(player, target, itemName, settings);
    }

    static bool IsDamageEffectApplicable(WorldObject target, string effectKind)
    {
        // Caster without elemental damage type: DamageMod/ElementalDamageMod does nothing
        if (target.ItemType == ItemType.Caster || target.WeaponSkill == Skill.MagicDefense)
        {
            if (effectKind is "DamageMod" or "ElementalDamageMod")
            {
                // If no elemental damage mod is set and no damage type is elemental, skip
                if (target.ElementalDamageMod == null && target.GetProperty(PropertyInt.DamageType) == null)
                    return false;
            }
        }

        // Jewelry / shield with no damage property: skip damage mods
        if (target.ItemType is ItemType.Jewelry or ItemType.Armor &&
            target.DamageMod == null && target.ElementalDamageMod == null)
        {
            if (effectKind is "DamageMod" or "ElementalDamageMod" or "WeaponOffense")
                return false;
        }

        return true;
    }

    static void ApplyDamageModifierShuffle(Player player, WorldObject target, string itemName, Settings settings)
    {
        float delta = Math.Max(0f, settings.ChaosDamageShuffleBonusPercent / 100f);
        float dOff = delta;
        string pctLabel = settings.ChaosDamageShuffleBonusPercent.ToString("0.##", System.Globalization.CultureInfo.InvariantCulture) + "%";

        // Randomly boost one of the damage-related stats
        var options = new (string Name, Func<string> Apply)[]
        {
            ("DamageMod", () => { target.DamageMod = (target.DamageMod ?? 1f) + delta; return $"Damage modifier +{pctLabel}"; }),
            ("WeaponOffense", () => { target.WeaponOffense = (target.WeaponOffense ?? 0f) + dOff; return $"Weapon offense +{pctLabel}"; }),
            ("WeaponDefense", () => { target.WeaponDefense = (target.WeaponDefense ?? 0f) + dOff; return $"Weapon defense +{pctLabel}"; }),
            ("ElementalDamageMod", () => { target.ElementalDamageMod = (target.ElementalDamageMod ?? 1f) + delta; return $"Elemental damage +{pctLabel}"; }),
        };

        var choice = options[Random.Shared.Next(options.Length)];

        if (!IsDamageEffectApplicable(target, choice.Name))
        {
            bool isCaster = target.ItemType == ItemType.Caster || target.WeaponSkill == Skill.MagicDefense;
            int fallbackRoll = Random.Shared.Next(3);
            string fallbackDesc;
            if (isCaster)
            {
                switch (fallbackRoll)
                {
                    case 0: ApplyManaSurge(player, target, itemName, settings); fallbackDesc = "a mana surge"; break;
                    case 1: ApplySpellWhisper(player, target, itemName, settings); fallbackDesc = "a whispered spell"; break;
                    default: ApplyLightAsAFeather(player, target, itemName); fallbackDesc = "weightlessness"; break;
                }
            }
            else
            {
                switch (fallbackRoll)
                {
                    case 0: ApplyManaSurge(player, target, itemName, settings); fallbackDesc = "a mana surge"; break;
                    case 1:
                        var armorRule = new SalvageTinkerRule { EffectKind = "ArmorLevel", FixedValue = 10 };
                        ApplyCascade(player, target, armorRule, itemName, settings);
                        fallbackDesc = "a protective cascade";
                        break;
                    default: ApplyLightAsAFeather(player, target, itemName); fallbackDesc = "weightlessness"; break;
                }
            }
            player.SendMessage($"[Overtinked] The chaos tries to reshuffle your {itemName}'s damage potential, but it has no damage potential! The energy discharges as {fallbackDesc} instead!", ChatMessageType.Craft);
            return;
        }

        string desc = choice.Apply();

        string msg = string.Format(Random.Shared.GetItems(DamageShuffleMessages, 1)[0], itemName);
        player.SendMessage($"[Overtinked] {msg} {desc}", ChatMessageType.Craft);
        ModManager.Log($"[Overtinked] Chaos DamageShuffle: {player.Name} {desc} on {target.Guid}", ModManager.LogLevel.Debug);
    }

    // ── Armor-Specific Chaos ────────────────────────────────────────────

    static void ApplyArmorChaos(Player player, WorldObject target, SalvageTinkerRule? rule, Settings settings, string itemName, double roll)
    {
        if (roll < 0.25)
            ApplyOvercharge(player, target, rule ?? new SalvageTinkerRule { EffectKind = "ArmorLevel", FixedValue = 30 }, itemName, settings);
        else if (roll < 0.45)
            ApplyCascade(player, target, rule ?? new SalvageTinkerRule { EffectKind = "ArmorLevel", FixedValue = 20 }, itemName, settings);
        else if (roll < 0.60)
            ApplyLightAsAFeather(player, target, itemName);
        else if (roll < 0.75)
            ApplyBlessedBurden(player, target, itemName);
        else if (roll < 0.85)
            ApplyManaSurge(player, target, itemName, settings);
        else if (roll < 0.93)
            ApplyWorkmanshipRefinement(player, target, itemName, settings);
        else
            ApplySpellWhisper(player, target, itemName, settings);
    }

    // ── Generic Chaos ───────────────────────────────────────────────────

    static void ApplyGenericChaos(Player player, WorldObject target, SalvageTinkerRule? rule, Settings settings, string itemName, double roll)
    {
        if (roll < 0.25)
            ApplyOvercharge(player, target, rule ?? new SalvageTinkerRule { EffectKind = "ArmorLevel", FixedValue = 10 }, itemName, settings);
        else if (roll < 0.45)
            ApplyCascade(player, target, rule ?? new SalvageTinkerRule { EffectKind = "ArmorLevel", FixedValue = 10 }, itemName, settings);
        else if (roll < 0.60)
            ApplyManaSurge(player, target, itemName, settings);
        else if (roll < 0.72)
            ApplyWorkmanshipRefinement(player, target, itemName, settings);
        else if (roll < 0.80)
            ApplyTinkerRewind(player, target, itemName, settings);
        else if (roll < 0.88)
            ApplyCapExpansion(player, target, itemName, settings);
        else if (roll < 0.94)
            ApplyLightAsAFeather(player, target, itemName);
        else
            ApplySpellWhisper(player, target, itemName, settings);
    }

    // ── Core Effect Implementations ─────────────────────────────────────

    static void ApplyFallbackChaos(Player player, WorldObject target, string itemName, Settings settings)
    {
        bool isCaster = target.ItemType == ItemType.Caster || target.WeaponSkill == Skill.MagicDefense;
        double roll = Random.Shared.NextDouble();
        string fallbackDesc;

        if (isCaster)
        {
            if (roll < 0.40)
            {
                ApplyManaSurge(player, target, itemName, settings);
                fallbackDesc = "a mana surge";
            }
            else if (roll < 0.70)
            {
                ApplySpellWhisper(player, target, itemName, settings);
                fallbackDesc = "a whispered spell";
            }
            else
            {
                ApplyLightAsAFeather(player, target, itemName);
                fallbackDesc = "weightlessness";
            }
        }
        else
        {
            if (roll < 0.40)
            {
                ApplyManaSurge(player, target, itemName, settings);
                fallbackDesc = "a mana surge";
            }
            else if (roll < 0.70)
            {
                var armorRule = new SalvageTinkerRule { EffectKind = "ArmorLevel", FixedValue = 10 };
                ApplyCascade(player, target, armorRule, itemName, settings);
                fallbackDesc = "a protective cascade";
            }
            else
            {
                ApplyLightAsAFeather(player, target, itemName);
                fallbackDesc = "weightlessness";
            }
        }

        player.SendMessage($"[Overtinked] The chaos tries to overcharge your {itemName}'s damage, but it has no damage potential! The energy discharges as {fallbackDesc} instead!", ChatMessageType.Craft);
    }

    static void ApplyOvercharge(Player player, WorldObject target, SalvageTinkerRule rule, string itemName, Settings settings)
    {
        if (!IsDamageEffectApplicable(target, rule.EffectKind))
        {
            ApplyFallbackChaos(player, target, itemName, settings);
            return;
        }

        int baseValue = SalvageEffectApplier.RollValue(rule);
        int minMult = settings.ChaosOverchargeMultiplierMin;
        int maxEx = settings.ChaosOverchargeMultiplierMaxExclusive;
        if (maxEx <= minMult)
            maxEx = minMult + 1;
        int multiplier = Random.Shared.Next(minMult, maxEx);
        int overchargedValue = baseValue * multiplier;

        SalvageEffectApplier.ApplyEffect(target, rule, overchargedValue, isFailure: false);

        string desc = SalvageEffectApplier.GetEffectDescription(rule, overchargedValue, isFailure: false);
        string msg = string.Format(Random.Shared.GetItems(OverchargeMessages, 1)[0], itemName);

        player.SendMessage($"[Overtinked] {msg} {desc} (x{multiplier} overcharge!)", ChatMessageType.Craft);
        ModManager.Log($"[Overtinked] Chaos Overcharge: {player.Name} applied {rule.EffectKind} x{multiplier} ({overchargedValue}) on {target.Guid}", ModManager.LogLevel.Debug);
    }

    static void ApplyCascade(Player player, WorldObject target, SalvageTinkerRule rule, string itemName, Settings settings)
    {
        int baseValue = SalvageEffectApplier.RollValue(rule);
        SalvageEffectApplier.ApplyEffect(target, rule, baseValue, isFailure: false);
        string baseDesc = SalvageEffectApplier.GetEffectDescription(rule, baseValue, isFailure: false);

        var bonus = CascadeBonuses[Random.Shared.Next(CascadeBonuses.Length)];
        int bonusValue = Random.Shared.Next(bonus.Min, bonus.Max + 1);
        var bonusRule = new SalvageTinkerRule { EffectKind = bonus.EffectKind, FixedValue = bonusValue };
        SalvageEffectApplier.ApplyEffect(target, bonusRule, bonusValue, isFailure: false);
        string bonusDesc = SalvageEffectApplier.GetEffectDescription(bonusRule, bonusValue, isFailure: false);

        string msg = string.Format(Random.Shared.GetItems(CascadeMessages, 1)[0], itemName);
        player.SendMessage($"[Overtinked] {msg} {baseDesc} + {bonusDesc}", ChatMessageType.Craft);
        ModManager.Log($"[Overtinked] Chaos Cascade: {player.Name} applied {rule.EffectKind} {baseValue} + {bonus.EffectKind} {bonusValue} on {target.Guid}", ModManager.LogLevel.Debug);
    }

    static void ApplyManaSurge(Player player, WorldObject target, string itemName, Settings settings)
    {
        SalvageEffectApplier.EnsureManaPool(target);

        int currentMax = target.ItemMaxMana ?? 1500;
        int bonusMax = (int)(currentMax * 0.10);
        target.ItemMaxMana = currentMax + bonusMax;
        target.ItemCurMana = target.ItemMaxMana;

        string msg = string.Format(Random.Shared.GetItems(ManaSurgeMessages, 1)[0], itemName);
        player.SendMessage($"[Overtinked] {msg} Max mana +{bonusMax}, fully charged!", ChatMessageType.Craft);
        ModManager.Log($"[Overtinked] Chaos ManaSurge: {player.Name} +{bonusMax} mana on {target.Guid}", ModManager.LogLevel.Debug);
    }

    static void ApplyWorkmanshipRefinement(Player player, WorldObject target, string itemName, Settings settings)
    {
        int current = GetWorkmanship(target);
        int reduction = Random.Shared.Next(1, 4);
        int newValue = Math.Max(1, current - reduction);

        if (newValue < current)
        {
            SetWorkmanship(target, newValue);
            string msg = string.Format(Random.Shared.GetItems(WorkmanshipRefinementMessages, 1)[0], itemName);
            player.SendMessage($"[Overtinked] {msg} Workmanship -{current - newValue} (now {newValue}) — future tinkers will be easier!", ChatMessageType.Craft);
            ModManager.Log($"[Overtinked] Chaos WorkmanshipRefinement: {player.Name} -{current - newValue} workmanship on {target.Guid}", ModManager.LogLevel.Debug);
        }
        else
        {
            player.SendMessage($"[Overtinked] The chaos tries to refine your {itemName}, but it's already as simple as can be! The energy discharges as raw power instead...", ChatMessageType.Craft);
            var rule = new SalvageTinkerRule { EffectKind = "DamageMod", FixedValue = 2 };
            SalvageEffectApplier.ApplyEffect(target, rule, 2, isFailure: false);
        }
    }

    static void ApplyTinkerRewind(Player player, WorldObject target, string itemName, Settings settings)
    {
        int current = target.GetProperty(PropertyInt.NumTimesTinkered) ?? 0;
        int reduction = Random.Shared.Next(2, 4);
        int newValue = Math.Max(0, current - reduction);

        target.SetProperty(PropertyInt.NumTimesTinkered, newValue);

        string msg = string.Format(Random.Shared.GetItems(TinkerRewindMessages, 1)[0], itemName);
        player.SendMessage($"[Overtinked] {msg} Tinker count -{current - newValue} (now {newValue}) — you can tinker this more!", ChatMessageType.Craft);
        ModManager.Log($"[Overtinked] Chaos TinkerRewind: {player.Name} -{current - newValue} tinkers on {target.Guid}", ModManager.LogLevel.Debug);
    }

    static void ApplyCapExpansion(Player player, WorldObject target, string itemName, Settings settings)
    {
        int multiplier = Random.Shared.Next(2, 4);
        int bonus = settings.MaxTries * (multiplier - 1);

        PatchClass.ItemMaxTriesBonus.AddOrUpdate(target.Guid.Full, bonus, (_, existing) => existing + bonus);

        int newEffectiveCap = PatchClass.GetEffectiveMaxTries(target, settings) + 1;

        string msg = string.Format(Random.Shared.GetItems(CapExpansionMessages, 1)[0], itemName);
        player.SendMessage($"[Overtinked] {msg} Maximum tinkers expanded to {newEffectiveCap} (×{multiplier} cap)!", ChatMessageType.Craft);
        ModManager.Log($"[Overtinked] Chaos CapExpansion: {player.Name} +{bonus} max tries on {target.Guid} (now effective cap {newEffectiveCap})", ModManager.LogLevel.Debug);
    }

    static void ApplyLightAsAFeather(Player player, WorldObject target, string itemName)
    {
        var s = PatchClass.CurrentSettings ?? new Settings();
        int val = Math.Max(0, s.ChaosLightPyrealValue);
        int enc = Math.Max(0, s.ChaosLightEncumbranceVal);
        target.Value = val;
        target.EncumbranceVal = enc;

        string msg = string.Format(Random.Shared.GetItems(LightAsAFeatherMessages, 1)[0], itemName);
        player.SendMessage($"[Overtinked] {msg} Value {val}, burden {enc}!", ChatMessageType.Craft);
        ModManager.Log($"[Overtinked] Chaos LightAsAFeather: {player.Name} set value={val} burden={enc} on {target.Guid}", ModManager.LogLevel.Debug);
    }

    static void ApplyBlessedBurden(Player player, WorldObject target, string itemName)
    {
        try
        {
            var s = PatchClass.CurrentSettings ?? new Settings();
            int burden = Math.Max(0, s.ChaosBlessedBurdenEncumbranceVal);

            target.Biota!.PropertiesSpellBook ??= new Dictionary<int, float>();
            target.Biota.PropertiesSpellBook[ProdigalStrengthSpellId] = 1.0f;
            target.UiEffects |= UiEffects.Magical;

            target.EncumbranceVal = burden;

            string msg = string.Format(Random.Shared.GetItems(BlessedBurdenMessages, 1)[0], itemName);
            player.SendMessage($"[Overtinked] {msg} Prodigal Strength + CRUSHING burden ({burden})!", ChatMessageType.Craft);
            ModManager.Log($"[Overtinked] Chaos BlessedBurden: {player.Name} added Strength spell + burden {burden} on {target.Guid}", ModManager.LogLevel.Debug);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Overtinked] BlessedBurden failed: {ex.Message}", ModManager.LogLevel.Warn);
            ApplyManaSurge(player, target, itemName, PatchClass.CurrentSettings ?? new Settings());
        }
    }

    static void ApplySpellWhisper(Player player, WorldObject target, string itemName, Settings settings)
    {
        int spellId = 0;
        for (int attempt = 0; attempt < 12; attempt++)
        {
            int candidate = WhisperSpellIds[Random.Shared.Next(WhisperSpellIds.Length)];
            var probe = new Spell((SpellId)candidate);
            if (!probe.NotFound)
            {
                spellId = candidate;
                break;
            }
        }

        if (spellId == 0)
        {
            ApplyManaSurge(player, target, itemName, settings);
            return;
        }

        try
        {
            target.Biota!.PropertiesSpellBook ??= new Dictionary<int, float>();
            target.Biota.PropertiesSpellBook[spellId] = 1.0f;
            target.UiEffects |= UiEffects.Magical;

            var spell = new Spell((SpellId)spellId);
            string spellName = spell.Name;

            string msg = string.Format(Random.Shared.GetItems(SpellWhisperMessages, 1)[0], itemName);
            player.SendMessage($"[Overtinked] {msg} Gained: {spellName}!", ChatMessageType.Craft);
            ModManager.Log($"[Overtinked] Chaos SpellWhisper: {player.Name} added spell {spellId} ({spellName}) to {target.Guid}", ModManager.LogLevel.Debug);
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Overtinked] SpellWhisper failed: {ex.Message}", ModManager.LogLevel.Warn);
            ApplyManaSurge(player, target, itemName, settings);
        }
    }

    // ── HOW DID YOU EVEN DO THAT?! ─────────────────────────────────────

    static void ApplyHowDidYouEven(Player player, WorldObject target, Settings settings, string itemName)
    {
        // 1) Expand cap to 30 tinkers (base 10 + 20 bonus)
        PatchClass.ItemMaxTriesBonus.AddOrUpdate(target.Guid.Full, 21, (_, existing) => existing + 21);

        // 2) Apply 2 random elemental rending imbues
        var rendings = new[]
        {
            ImbuedEffectType.AcidRending, ImbuedEffectType.BludgeonRending, ImbuedEffectType.ColdRending,
            ImbuedEffectType.ElectricRending, ImbuedEffectType.FireRending, ImbuedEffectType.PierceRending,
            ImbuedEffectType.SlashRending,
        };

        var shuffled = rendings.OrderBy(_ => Random.Shared.Next()).ToArray();
        var rend1 = shuffled[0];
        var rend2 = shuffled[1];

        target.ImbuedEffect &= ~AllRendingFlags;
        target.ImbuedEffect |= rend1 | rend2;

        // 3) Set damage type to something that does NOT match either imbue
        var allDamageTypes = new[]
        {
            DamageType.Acid, DamageType.Bludgeon, DamageType.Cold, DamageType.Electric,
            DamageType.Fire, DamageType.Pierce, DamageType.Slash, DamageType.Nether,
        };

        var rendingDamageTypes = new HashSet<DamageType>();
        if ((rend1 & ImbuedEffectType.AcidRending) != 0) rendingDamageTypes.Add(DamageType.Acid);
        if ((rend1 & ImbuedEffectType.BludgeonRending) != 0) rendingDamageTypes.Add(DamageType.Bludgeon);
        if ((rend1 & ImbuedEffectType.ColdRending) != 0) rendingDamageTypes.Add(DamageType.Cold);
        if ((rend1 & ImbuedEffectType.ElectricRending) != 0) rendingDamageTypes.Add(DamageType.Electric);
        if ((rend1 & ImbuedEffectType.FireRending) != 0) rendingDamageTypes.Add(DamageType.Fire);
        if ((rend1 & ImbuedEffectType.PierceRending) != 0) rendingDamageTypes.Add(DamageType.Pierce);
        if ((rend1 & ImbuedEffectType.SlashRending) != 0) rendingDamageTypes.Add(DamageType.Slash);
        if ((rend2 & ImbuedEffectType.AcidRending) != 0) rendingDamageTypes.Add(DamageType.Acid);
        if ((rend2 & ImbuedEffectType.BludgeonRending) != 0) rendingDamageTypes.Add(DamageType.Bludgeon);
        if ((rend2 & ImbuedEffectType.ColdRending) != 0) rendingDamageTypes.Add(DamageType.Cold);
        if ((rend2 & ImbuedEffectType.ElectricRending) != 0) rendingDamageTypes.Add(DamageType.Electric);
        if ((rend2 & ImbuedEffectType.FireRending) != 0) rendingDamageTypes.Add(DamageType.Fire);
        if ((rend2 & ImbuedEffectType.PierceRending) != 0) rendingDamageTypes.Add(DamageType.Pierce);
        if ((rend2 & ImbuedEffectType.SlashRending) != 0) rendingDamageTypes.Add(DamageType.Slash);

        var mismatchedTypes = allDamageTypes.Where(dt => !rendingDamageTypes.Contains(dt)).ToArray();
        var chosenDamageType = mismatchedTypes[Random.Shared.Next(mismatchedTypes.Length)];
        target.SetProperty(PropertyInt.DamageType, (int)chosenDamageType);

        string msg = string.Format(Random.Shared.GetItems(HowDidYouEvenMessages, 1)[0], itemName);
        player.SendMessage($"[Overtinked] {msg} Cap expanded to 30! Gained: {rend1} + {rend2}! Damage type set to {chosenDamageType} (mismatched)!", ChatMessageType.Craft);
        ModManager.Log($"[Overtinked] HOW DID YOU EVEN: {player.Name} cap=30, {rend1}+{rend2}, dmg={chosenDamageType} on {target.Guid}", ModManager.LogLevel.Info);

        // Grant achievement to all players within 100 yards
        GrantHowDidYouEvenAchievement(player, target);
    }

    static void GrantHowDidYouEvenAchievement(Player player, WorldObject target)
    {
        try
        {
            const float range = 100.0f; // yards ≈ meters in ACE
            var nearbyPlayers = new List<Player>();

            var lb = player.CurrentLandblock;
            if (lb != null)
            {
                var allObjects = lb.GetWorldObjectsForPhysicsHandling();
                foreach (var obj in allObjects)
                {
                    if (obj is Player p && p != player && !p.IsDead)
                    {
                        float dist = p.GetDistance(player);
                        if (dist <= range)
                            nearbyPlayers.Add(p);
                    }
                }
            }

            // Grant to self too
            nearbyPlayers.Add(player);

            foreach (var p in nearbyPlayers.Distinct())
            {
                try
                {
                    // Use AchievementUnlocked API if available
                    var achievementApi = AppDomain.CurrentDomain.GetAssemblies()
                        .FirstOrDefault(a => a.GetName().Name == "AchievementUnlocked");
                    if (achievementApi != null)
                    {
                        var managerType = achievementApi.GetType("AchievementUnlocked.AchievementManager");
                        var unlockMethod = managerType?.GetMethod("UnlockAchievement", new[] { typeof(Player), typeof(string), typeof(bool) });
                        unlockMethod?.Invoke(null, new object[] { p, "HowDidYouEven", false });
                    }
                }
                catch (Exception ex)
                {
                    ModManager.Log($"[Overtinked] Failed to grant achievement to {p.Name}: {ex.Message}", ModManager.LogLevel.Warn);
                }
            }

            if (nearbyPlayers.Count > 1)
            {
                player.SendMessage($"[Overtinked] {nearbyPlayers.Count} witnesses were present for the catastrophe! They have all been marked by chaos!", ChatMessageType.Craft);
            }
        }
        catch (Exception ex)
        {
            ModManager.Log($"[Overtinked] GrantHowDidYouEvenAchievement failed: {ex.Message}", ModManager.LogLevel.Warn);
        }
    }

    // ── Helpers ─────────────────────────────────────────────────────────

    static int GetWorkmanship(WorldObject wo)
    {
        var t = Traverse.Create(wo).Property("Workmanship");
        if (!t.PropertyExists())
            return 0;
        object? v = t.GetValue();
        if (v is int i) return i;
        if (v is double d) return (int)d;
        if (v is float f) return (int)f;
        return 0;
    }

    static void SetWorkmanship(WorldObject wo, int value)
    {
        var t = Traverse.Create(wo).Property("Workmanship");
        if (!t.PropertyExists())
            return;
        t.SetValue((float)value);
    }
}
