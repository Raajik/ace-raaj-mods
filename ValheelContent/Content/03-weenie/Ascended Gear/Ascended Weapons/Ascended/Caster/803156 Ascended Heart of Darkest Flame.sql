DELETE FROM `weenie` WHERE `class_Id` = 803156;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803156, 'Ascended Heart of Darkest Flame', 35, '2024-04-24 11:08:41') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803156,   1,      32768) /* ItemType - Caster */
     , (803156,   3,          4) /* PaletteTemplate - Brown */
     , (803156,   5,        100) /* EncumbranceVal */
     , (803156,   8,         90) /* Mass */
     , (803156,   9,   16777216) /* ValidLocations - Held */
     , (803156,  16,    6291460) /* ItemUseable - SourceWieldedTargetRemoteNeverWalk */
     , (803156,  19,     700000) /* Value */
     , (803156,  33,          1) /* Bonded - Bonded */
     , (803156,  45,       1024) /* DamageType - Nether */
     , (803156,  46,        512) /* DefaultCombatStyle - Magic */
     , (803156,  52,          1) /* ParentLocation - RightHand */
     , (803156,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803156,  94,         16) /* TargetType - Creature */
     , (803156, 106,        999) /* ItemSpellcraft */
     , (803156, 107,       8000) /* ItemCurMana */
     , (803156, 108,       8000) /* ItemMaxMana */
     , (803156, 109,          0) /* ItemDifficulty */
     , (803156, 114,          1) /* Attuned - Attuned */
     , (803156, 117,         30) /* ItemManaCost */
     , (803156, 151,          2) /* HookType - Wall */
     , (803156, 158,          7) /* WieldRequirements - Level */
     , (803156, 160,       3000) /* WieldDifficulty */
     , (803156, 169,  118162702) /* TsysMutationData */
     , (803156, 179,      16384) /* ImbuedEffect - NetherRending */
     , (803156, 292,          4) /* Cleaving */
     , (803156, 353,          0) /* WeaponType - Undef */
     , (803156, 370,        135) /* GearDamage */
     , (803156, 371,        135) /* GearDamageResist */
     , (803156, 374,        135) /* GearCritDamage */
     , (803156, 375,        135) /* GearCritDamageResist */
     , (803156, 376,        135) /* GearHealingBoost */
     , (803156, 379,        135) /* GearMaxHealth */
     , (803156,9041,          1) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803156,  11, True ) /* IgnoreCollisions */
     , (803156,  13, True ) /* Ethereal */
     , (803156,  14, True ) /* GravityStatus */
     , (803156,  19, True ) /* Attackable */
     , (803156,  22, True ) /* Inscribable */
     , (803156, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803156,   1,       2) /* HeartbeatInterval */
     , (803156,   5,   -0.05) /* ManaRate */
     , (803156,  12,    0.66) /* Shade */
     , (803156,  29,     1.5) /* WeaponDefense */
     , (803156,  39,       1) /* DefaultScale */
     , (803156, 136,    0.15) /* CriticalMultiplier */
     , (803156, 144,    0.45) /* ManaConversionMod */
     , (803156, 147,    0.45) /* CriticalFrequency */
     , (803156, 152,     3.5) /* ElementalDamageMod */
     , (803156, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803156,   1, 'Ascended Heart of Darkest Flame') /* Name */
     , (803156,  16, 'Wield requires level 3000') /* LongDesc - WieldReq */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803156,   1, 0x02001A53) /* Setup */
     , (803156,   3, 0x20000014) /* SoundTable */
     , (803156,   6, 0x04000BEF) /* PaletteBase */
     , (803156,   8, 0x06006F47) /* Icon */
     , (803156,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803156,  27, 0x400000E1) /* UseUserAnimation - UseMagicWand */
     , (803156,  28,       5356) /* Spell - Incantation of Nether Bolt */
     , (803156,  36, 0x0E000012) /* MutateFilter */
     , (803156,  46, 0x38000032) /* TsysMutationFilter */
     , (803156,  52, 0x06005B0C) /* IconUnderlay */
     , (803156,  55,       5356) /* ProcSpell - Incantation of Nether Bolt */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803156,  3699,      2) /* Prodigal Defender */
     , (803156,  3724,      2) /* Prodigal Mana Conversion Mastery */
     , (803156,  3735,      2) /* Prodigal Spirit Drinker */
     , (803156,  3743,      2) /* Prodigal War Magic Mastery */
     , (803156,  4305,      2) /* Incantation of Focus Self */
     , (803156,  4329,      2) /* Incantation of Willpower Self */
     , (803156,  4638,      2) /* Incantation of War Magic Mastery Self */
     , (803156,  5418,      2) /* Incantation of Void Magic Mastery Self */
     , (803156,  5436,      2) /* Prodigal Void Magic Mastery */
     , (803156,  6064,      2) /* Legendary Mana Conversion Prowess */
     , (803156,  6091,      2) /* Legendary Defender */
     , (803156,  6098,      2) /* Legendary Spirit Thirst */;