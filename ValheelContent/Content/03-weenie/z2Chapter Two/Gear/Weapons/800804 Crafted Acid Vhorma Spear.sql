DELETE FROM `weenie` WHERE `class_Id` = 800804;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800804, 'Crafted Acid Vhorma Spear', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800804,   1,          1) /* ItemType - MeleeWeapon */
     , (800804,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800804,   5,        220) /* EncumbranceVal */
     , (800804,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800804,  16,          1) /* ItemUseable - No */
     , (800804,  18,          1) /* UiEffects - Magical */
     , (800804,  19,          1) /* Value */
     , (800804,  33,          1) /* Bonded - Slippery */
     , (800804,  44,        80) /* Damage */
     , (800804,  45,          32) /* DamageType - Slash, Pierce */
     , (800804,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800804,  47,          6) /* AttackType - Thrust, Slash */
     , (800804,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800804,  49,         35) /* WeaponTime */
     , (800804,  51,          1) /* CombatUse - Melee */
     , (800804,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800804, 106,        999) /* ItemSpellcraft */
     , (800804, 107,       2700) /* ItemCurMana */
     , (800804, 108,       2700) /* ItemMaxMana */
     , (800804, 114,          1) /* Attuned - Normal */
     , (800804, 158,          7) /* WieldRequirements - Level */
     , (800804, 159,          1) /* WieldSkillType - Axe */
     , (800804, 160,        325) /* WieldDifficulty */
	 , (800804, 179,          64) /* Imbued Effect - Armor Rend */
     , (800804, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800804,  22, True ) /* Inscribable */
     , (800804,  65, True ) /* IgnoreMagicResist */
     , (800804,  66, True ) /* IgnoreMagicArmor */
     , (800804,  69, False) /* IsSellable */
     , (800804,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800804,   5,   -0.05) /* ManaRate */
     , (800804,  21,       0) /* WeaponLength */
     , (800804,  22,    0.25) /* DamageVariance */
     , (800804,  29,    1.30) /* WeaponDefense */
     , (800804,  39,     1.3) /* DefaultScale */
     , (800804,  62,    1.30) /* WeaponOffense */
     , (800804,  63,     1.1) /* DamageMod */
     , (800804, 136,     1.1) /* CriticalMultiplier */
     , (800804, 147,     0.3) /* CriticalFrequency */
     , (800804, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800804,   1, 'Crafted Acid Vhorma Spear') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800804,   1,   33557236) /* Setup */
     , (800804,   3,  536870932) /* SoundTable */
     , (800804,   6,   67113336) /* PaletteBase */
     , (800804,   7,  268436253) /* ClothingBase */
     , (800804,   8,  100672092) /* Icon */
     , (800804,  22,  872415275) /* PhysicsEffectTable */
     , (800804,  36,  234881044) /* MutateFilter */
	 , (800804,  52,  100689404) /* IconUnderlay */
	 , (800804,  55,       6189) /* ProcSpell - Fire Bomb */;

