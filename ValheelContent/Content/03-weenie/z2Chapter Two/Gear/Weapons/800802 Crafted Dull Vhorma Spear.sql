DELETE FROM `weenie` WHERE `class_Id` = 800802;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800802, 'Crafted Dull Vhorma Spear', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800802,   1,          1) /* ItemType - MeleeWeapon */
     , (800802,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800802,   5,        220) /* EncumbranceVal */
     , (800802,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800802,  16,          1) /* ItemUseable - No */
     , (800802,  18,          1) /* UiEffects - Magical */
     , (800802,  19,          1) /* Value */
     , (800802,  33,          1) /* Bonded - Slippery */
     , (800802,  44,        80) /* Damage */
     , (800802,  45,          4) /* DamageType - Slash, Pierce */
     , (800802,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800802,  47,          6) /* AttackType - Thrust, Slash */
     , (800802,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800802,  49,         35) /* WeaponTime */
     , (800802,  51,          1) /* CombatUse - Melee */
     , (800802,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800802, 106,        999) /* ItemSpellcraft */
     , (800802, 107,       2700) /* ItemCurMana */
     , (800802, 108,       2700) /* ItemMaxMana */
     , (800802, 114,          1) /* Attuned - Normal */
     , (800802, 158,          7) /* WieldRequirements - Level */
     , (800802, 159,          1) /* WieldSkillType - Axe */
     , (800802, 160,        325) /* WieldDifficulty */
	 , (800802, 179,          32) /* Imbued Effect - Armor Rend */
     , (800802, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800802,  22, True ) /* Inscribable */
     , (800802,  65, True ) /* IgnoreMagicResist */
     , (800802,  66, True ) /* IgnoreMagicArmor */
     , (800802,  69, False) /* IsSellable */
     , (800802,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800802,   5,   -0.05) /* ManaRate */
     , (800802,  21,       0) /* WeaponLength */
     , (800802,  22,    0.25) /* DamageVariance */
     , (800802,  29,    1.30) /* WeaponDefense */
     , (800802,  39,     1.3) /* DefaultScale */
     , (800802,  62,    1.30) /* WeaponOffense */
     , (800802,  63,     1.1) /* DamageMod */
     , (800802, 136,     1.1) /* CriticalMultiplier */
     , (800802, 147,     0.3) /* CriticalFrequency */
     , (800802, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800802,   1, 'Crafted Dull Vhorma Spear') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800802,   1,   33557236) /* Setup */
     , (800802,   3,  536870932) /* SoundTable */
     , (800802,   6,   67113336) /* PaletteBase */
     , (800802,   7,  268436253) /* ClothingBase */
     , (800802,   8,  100672092) /* Icon */
     , (800802,  22,  872415275) /* PhysicsEffectTable */
     , (800802,  36,  234881044) /* MutateFilter */
	 , (800802,  52,  100689404) /* IconUnderlay */
	 , (800802,  55,       6196) /* ProcSpell - Fire Bomb */;

