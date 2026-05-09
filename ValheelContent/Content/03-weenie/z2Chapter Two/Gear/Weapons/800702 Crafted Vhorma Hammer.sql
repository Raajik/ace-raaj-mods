DELETE FROM `weenie` WHERE `class_Id` = 800702;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800702, 'Crafter Vhorma Hammer', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800702,   1,          1) /* ItemType - MeleeWeapon */
     , (800702,   3,         39) /* PaletteTemplate - PinkPurple */
     , (800702,   5,        100) /* EncumbranceVal */
     , (800702,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (800702,  16,          1) /* ItemUseable - No */
     , (800702,  18,          1) /* UiEffects - Magical */
     , (800702,  19,          1) /* Value */
     , (800702,  33,          1) /* Bonded - Slippery */
     , (800702,  44,        120) /* Damage */
     , (800702,  45,          4) /* DamageType - Pierce */
     , (800702,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (800702,  47,          2) /* AttackType - Thrust */
     , (800702,  48,         44) /* WeaponSkill - HeavyWeapons */
     , (800702,  49,         20) /* WeaponTime */
     , (800702,  51,          1) /* CombatUse - Melee */
     , (800702,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800702, 106,        999) /* ItemSpellcraft */
     , (800702, 107,       2700) /* ItemCurMana */
     , (800702, 108,       2700) /* ItemMaxMana */
     , (800702, 114,          1) /* Attuned - Normal */
     , (800702, 158,          7) /* WieldRequirements - Level */
     , (800702, 159,          1) /* WieldSkillType - Axe */
     , (800702, 160,        325) /* WieldDifficulty */
	 , (800702, 179,          4) /* Imbued Effect - Armor Rend */
     , (800702, 263,          2) /* ResistanceModifierType */
     , (800702, 353,          4) /* WeaponType - Dagger */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800702,  22, True ) /* Inscribable */
     , (800702,  65, True ) /* IgnoreMagicResist */
     , (800702,  66, True ) /* IgnoreMagicArmor */
     , (800702,  69, False) /* IsSellable */
     , (800702,  99, False) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800702,   5,   -0.05) /* ManaRate */
     , (800702,  21,       0) /* WeaponLength */
     , (800702,  22,    0.25) /* DamageVariance */
     , (800702,  29,    1.25) /* WeaponDefense */
     , (800702,  39,     1.3) /* DefaultScale */
     , (800702,  62,     1.7) /* WeaponOffense */
     , (800702,  63,     3.8) /* DamageMod */
     , (800702, 136,       2) /* CriticalMultiplier */
     , (800702, 147,       1) /* CriticalFrequency */
	 /* , (800702, 156,     0.1) /* ProcSpellRate */
     , (800702, 157,       1) /* ResistanceModifier */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800702,   1, 'Crafter Vhorma Hammer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800702,   1,   33557233) /* Setup */
     , (800702,   3,  536870932) /* SoundTable */
     , (800702,   6,   67113336) /* PaletteBase */
     , (800702,   7,  268436253) /* ClothingBase */
     , (800702,   8,  100672071) /* Icon */
     , (800702,  22,  872415275) /* PhysicsEffectTable */
     , (800702,  30,         87) /* PhysicsScript - BreatheLightning */
     , (800702,  36,  234881044) /* MutateFilter */
	 , (800702,  52,  100689404) /* IconUnderlay */
	 /* , (800702,  55,       3936) /* ProcSpell - Fire Bomb */;


