DELETE FROM `weenie` WHERE `class_Id` = 800140;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800140, 'blueball', 35, '2025-03-28 06:06:06') /* Caster */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800140,   1,      32768) /* ItemType - Caster */
     , (800140,   3,         12) /* PaletteTemplate - Navy */
     , (800140,   5,        100) /* EncumbranceVal */
     , (800140,   8,         50) /* Mass */
     , (800140,   9,   16777216) /* ValidLocations - Held */
     , (800140,  16,    6291464) /* ItemUseable - SourceContainedTargetRemoteNeverWalk */
     , (800140,  18,          1) /* UiEffects - Magical */
     , (800140,  19,         75) /* Value */
     , (800140,  33,          1) /* Bonded - Bonded */
     , (800140,  46,        512) /* DefaultCombatStyle - Magic */
     , (800140,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800140,  94,         16) /* TargetType - Creature */
     , (800140, 106,        250) /* ItemSpellcraft */
     , (800140, 107,        750) /* ItemCurMana */
     , (800140, 108,        750) /* ItemMaxMana */
     , (800140, 109,        350) /* ItemDifficulty */
     , (800140, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800140,  22, True ) /* Inscribable */
     , (800140,  23, True ) /* DestroyOnSell */
     , (800140,  69, False) /* IsSellable */
     , (800140,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800140,   5,   -0.05) /* ManaRate */
     , (800140,  12,     0.5) /* Shade */
     , (800140,  29,    1.25) /* WeaponDefense */
     , (800140, 144,    0.25) /* ManaConversionMod */
     , (800140, 149,    1.25) /* WeaponMissileDefense */
     , (800140, 150,    1.25) /* WeaponMagicDefense */
     , (800140, 159,    0.25) /* AbsorbMagicDamage */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800140,   1, 'Blue Ball') /* Name */
     , (800140,  16, 'A powerful blue ball.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800140,   1, 0x02000B6A) /* Setup */
     , (800140,   3, 0x20000014) /* SoundTable */
     , (800140,   6, 0x04000BEF) /* PaletteBase */
     , (800140,   7, 0x10000326) /* ClothingBase */
     , (800140,   8,  100668727) /* Icon */
     , (800140,  22, 0x3400002B) /* PhysicsEffectTable */
     , (800140,  27, 0x400000E1) /* UseUserAnimation - UseMagicWand */
     , (800140,  37,         16) /* ItemSkillLimit - ManaConversion */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800140,  2346,      2) /* Malediction */
     , (800140,  2347,      2) /* Concentration */
     , (800140,  2348,      2) /* Brilliance */
     , (800140,  3572,      2) /* Inner Brilliance */
     , (800140,  3683,      2) /* Prodigal Armor Expertise */
     , (800140,  3694,      2) /* Prodigal Coordination */
     , (800140,  3700,      2) /* Prodigal Endurance */
     , (800140,  3705,      2) /* Prodigal Focus */
     , (800140,  3714,      2) /* Prodigal Item Expertise */
     , (800140,  3722,      2) /* Prodigal Magic Item Expertise */
     , (800140,  3738,      2) /* Prodigal Strength */
     , (800140,  3744,      2) /* Prodigal Weapon Expertise */;

