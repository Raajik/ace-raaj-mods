DELETE FROM `weenie` WHERE `class_Id` = 800803;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800803, 'Crafted Piercing Vhorma Spear', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800803,   1,          1) /* ItemType - MeleeWeapon */
     , (800803,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800803,   5,        220) /* EncumbranceVal */
     , (800803,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800803,  16,          1) /* ItemUseable - No */
     , (800803,  18,          1) /* UiEffects - Magical */
     , (800803,  19,          1) /* Value */
     , (800803,  33,          1) /* Bonded - Slippery */
     , (800803,  44,        80) /* Damage */
     , (800803,  45,          2) /* DamageType - Slash, Pierce */
     , (800803,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800803,  47,          6) /* AttackType - Thrust, Slash */
     , (800803,  48,         46) /* WeaponSkill - FinesseWeapons */
     , (800803,  49,         35) /* WeaponTime */
     , (800803,  51,          1) /* CombatUse - Melee */
     , (800803,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800803, 106,        999) /* ItemSpellcraft */
     , (800803, 107,       2700) /* ItemCurMana */
     , (800803, 108,       2700) /* ItemMaxMana */
     , (800803, 114,          1) /* Attuned - Normal */
     , (800803, 158,          7) /* WieldRequirements - Level */
     , (800803, 159,          1) /* WieldSkillType - Axe */
     , (800803, 160,        325) /* WieldDifficulty */
	 , (800803, 179,          16) /* Imbued Effect - Armor Rend */
     , (800803, 353,          2) /* WeaponType - Sword */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800803,  22, True ) /* Inscribable */
     , (800803,  65, True ) /* IgnoreMagicResist */
     , (800803,  66, True ) /* IgnoreMagicArmor */
     , (800803,  69, False) /* IsSellable */
     , (800803,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800803,   5,   -0.05) /* ManaRate */
     , (800803,  21,       0) /* WeaponLength */
     , (800803,  22,    0.25) /* DamageVariance */
     , (800803,  29,    1.30) /* WeaponDefense */
     , (800803,  39,     1.3) /* DefaultScale */
     , (800803,  62,    1.30) /* WeaponOffense */
     , (800803,  63,     1.1) /* DamageMod */
     , (800803, 136,     1.1) /* CriticalMultiplier */
     , (800803, 147,     0.3) /* CriticalFrequency */
     , (800803, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800803,   1, 'Crafted Piercing Vhorma Spear') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800803,   1,   33557236) /* Setup */
     , (800803,   3,  536870932) /* SoundTable */
     , (800803,   6,   67113336) /* PaletteBase */
     , (800803,   7,  268436253) /* ClothingBase */
     , (800803,   8,  100672092) /* Icon */
     , (800803,  22,  872415275) /* PhysicsEffectTable */
     , (800803,  36,  234881044) /* MutateFilter */
	 , (800803,  52,  100689404) /* IconUnderlay */
	 , (800803,  55,       6192) /* ProcSpell - Fire Bomb */;

