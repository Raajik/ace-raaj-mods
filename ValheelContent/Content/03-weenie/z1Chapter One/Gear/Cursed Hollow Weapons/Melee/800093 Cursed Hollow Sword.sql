DELETE FROM `weenie` WHERE `class_Id` = 800093;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800093, 'cursed hollow sword', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800093,   1,          1) /* ItemType - MeleeWeapon */
     , (800093,   3,         39) /* PaletteTemplate - Black */
     , (800093,   5,        550) /* EncumbranceVal */
     , (800093,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800093,  16,          1) /* ItemUseable - No */
     , (800093,  18,          1) /* UiEffects - Magical */
     , (800093,  19,          2) /* Value */
     , (800093,  33,          1) /* Bonded - Bonded */
     , (800093,  44,        180) /* Damage */
     , (800093,  45,       1024) /* DamageType - Nether */
     , (800093,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800093,  47,          6) /* AttackType - Thrust, Slash */
     , (800093,  48,         45) /* WeaponSkill - LightWeapons */
     , (800093,  49,         35) /* WeaponTime */
     , (800093,  51,          1) /* CombatUse - Melee */
     , (800093,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800093, 106,        999) /* ItemSpellcraft */
     , (800093, 107,       1200) /* ItemCurMana */
     , (800093, 108,       1200) /* ItemMaxMana */
     , (800093, 114,          1) /* Attuned - Attuned */
     , (800093, 151,          2) /* HookType - Wall */
     , (800093, 158,          7) /* WieldRequirements - Level */
     , (800093, 159,          1) /* WieldSkillType - Axe */
     , (800093, 160,        275) /* WieldDifficulty */
     , (800093, 179,      16384) /* ImbuedEffect - CriticalStrike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800093,  11, True ) /* IgnoreCollisions */
     , (800093,  13, True ) /* Ethereal */
     , (800093,  14, True ) /* GravityStatus */
     , (800093,  19, True ) /* Attackable */
     , (800093,  22, True ) /* Inscribable */
     , (800093,  65, True ) /* IgnoreMagicResist */
     , (800093,  66, True ) /* IgnoreMagicArmor */
     , (800093,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800093,   5,    -0.1) /* ManaRate */
     , (800093,  21,       1) /* WeaponLength */
     , (800093,  22,    0.33) /* DamageVariance */
     , (800093,  29,    1.25) /* WeaponDefense */
     , (800093,  62,    1.25) /* WeaponOffense */
     , (800093,  63,       3) /* DamageMod */
     , (800093,  76,     0.7) /* Translucency */
     , (800093, 136,       2) /* CriticalMultiplier */
     , (800093, 147,     0.5) /* CriticalFrequency */
     , (800093, 152,     1.5) /* ElementalDamageMod */
     , (800093, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800093,   1, 'Cursed Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800093,   1,   33556262) /* Setup */
     , (800093,   3,  536870932) /* SoundTable */
     , (800093,   6,   67111919) /* PaletteBase */
     , (800093,   7,  268436385) /* ClothingBase */
     , (800093,   8,  100672945) /* Icon */
     , (800093,  22,  872415275) /* PhysicsEffectTable */
     , (800093,  37,         11) /* ItemSkillLimit - Sword */
     , (800093,  55,       5354) /* ProcSpell - Nether Bolt VI */;
