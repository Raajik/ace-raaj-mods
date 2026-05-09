DELETE FROM `weenie` WHERE `class_Id` = 800774;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800774, 'Crafted Bludgeoning Vhorma Dagger', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800774,   1,          1) /* ItemType - MeleeWeapon */
     , (800774,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800774,   5,        275) /* EncumbranceVal */
     , (800774,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800774,  16,          1) /* ItemUseable - No */
     , (800774,  18,          1) /* UiEffects - Magical */
     , (800774,  19,          1) /* Value */
     , (800774,  33,          1) /* Bonded - Slippery */
     , (800774,  44,        120) /* Damage */
     , (800774,  45,          4) /* DamageType - Slash */
     , (800774,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800774,  47,          4) /* AttackType - Slash */
     , (800774,  48,         45) /* WeaponSkill - LightWeapons */
     , (800774,  49,         35) /* WeaponTime */
     , (800774,  51,          1) /* CombatUse - Melee */
     , (800774,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800774, 106,        999) /* ItemSpellcraft */
     , (800774, 107,      10000) /* ItemCurMana */
     , (800774, 108,      10000) /* ItemMaxMana */
     , (800774, 114,          1) /* Attuned - Normal */
     , (800774, 158,          7) /* WieldRequirements - Level */
     , (800774, 159,          1) /* WieldSkillType - Axe */
     , (800774, 160,        325) /* WieldDifficulty */
	 , (800774, 179,         32) /* Imbued Effect - Armor Rend */
     , (800774, 353,          3) /* WeaponType - Axe */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800774,  22, True ) /* Inscribable */
     , (800774,  69, False) /* IsSellable */
     , (800774,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800774,   5,   -0.05) /* ManaRate */
     , (800774,  21,       0) /* WeaponLength */
     , (800774,  22,    0.25) /* DamageVariance */
     , (800774,  29,    1.30) /* WeaponDefense */
     , (800774,  39,     1.3) /* DefaultScale */
     , (800774,  62,    1.30) /* WeaponOffense */
     , (800774,  63,     1.1) /* DamageMod */
     , (800774, 136,     1.1) /* CriticalMultiplier */
     , (800774, 147,     0.3) /* CriticalFrequency */
     , (800774, 152,     1.1) /* ElementalDamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800774,   1, 'Crafted Bludgeoning Vhorma Dagger') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800774,   1,   33557234) /* Setup */
     , (800774,   3,  536870932) /* SoundTable */
     , (800774,   6,   67113336) /* PaletteBase */
     , (800774,   7,  268436253) /* ClothingBase */
     , (800774,   8,  100672078) /* Icon */
     , (800774,  22,  872415275) /* PhysicsEffectTable */
     , (800774,  36,  234881044) /* MutateFilter */
	 , (800774,  52,  100689404) /* IconUnderlay */
	 , (800774,  55,       6196) /* ProcSpell - Fire Bomb */;

