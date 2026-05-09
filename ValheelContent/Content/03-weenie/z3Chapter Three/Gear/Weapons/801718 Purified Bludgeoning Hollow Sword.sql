DELETE FROM `weenie` WHERE `class_Id` = 801718;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801718, 'purified Bludgeoning hollow sword', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801718,   1,          1) /* ItemType - MeleeWeapon */
     , (801718,   3,         39) /* PaletteTemplate - Black */
     , (801718,   5,        550) /* EncumbranceVal */
     , (801718,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801718,  16,          1) /* ItemUseable - No */
     , (801718,  18,          1) /* UiEffects - Magical */
     , (801718,  19,         10) /* Value */
     , (801718,  33,          1) /* Bonded - Bonded */
     , (801718,  44,       3000) /* Damage */
     , (801718,  45,       4) /* DamageType - Nether */
     , (801718,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801718,  47,          6) /* AttackType - Thrust, Slash */
     , (801718,  48,         45) /* WeaponSkill - Sword */
     , (801718,  49,         35) /* WeaponTime */
     , (801718,  51,          1) /* CombatUse - Melee */
     , (801718,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801718, 106,        999) /* ItemSpellcraft */
     , (801718, 107,       1200) /* ItemCurMana */
     , (801718, 108,       1200) /* ItemMaxMana */ 
     , (801718, 114,          1) /* Attuned - Attuned */			
     , (801718, 151,          2) /* HookType - Wall */
     , (801718, 158,          7) /* WieldRequirements - Level */
     , (801718, 159,          1) /* WieldSkillType - Axe */
     , (801718, 160,        400) /* WieldDifficulty */
	 , (801718, 179,      32) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801718,  11, True ) /* IgnoreCollisions */
     , (801718,  13, True ) /* Ethereal */
     , (801718,  14, True ) /* GravityStatus */
     , (801718,  19, True ) /* Attackable */
     , (801718,  22, True ) /* Inscribable */
     , (801718,  65, True ) /* IgnoreMagicResist */
     , (801718,  66, True ) /* IgnoreMagicArmor */
     , (801718,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801718,   5,    -0.1) /* ManaRate */
     , (801718,  21,       1) /* WeaponLength */
     , (801718,  22,     0.5) /* DamageVariance */
     , (801718,  29,     1.4) /* WeaponDefense */
     , (801718,  62,     1.4) /* WeaponOffense */
     , (801718,  63,      16) /* DamageMod */
     , (801718,  76,     0.7) /* Translucency */
     , (801718, 136,       6) /* CriticalMultiplier */
     , (801718, 147,       1) /* CriticalFrequency */
     , (801718, 152,       5) /* ElementalDamageMod */
	 , (801718, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801718,   1, 'Purified Bludgeoning Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801718,   1,   33556262) /* Setup */
     , (801718,   3,  536870932) /* SoundTable */
     , (801718,   6,   67111919) /* PaletteBase */
     , (801718,   7,  268436385) /* ClothingBase */
     , (801718,   8,  100672945) /* Icon */
     , (801718,  22,  872415275) /* PhysicsEffectTable */
     , (801718,  37,         11) /* ItemSkillLimit - Sword */
     , (801718,  52,  100676442) /* IconUnderlay */
	 , (801718,  55,       5368) /* ProcSpell - Nether Arc VII */;
