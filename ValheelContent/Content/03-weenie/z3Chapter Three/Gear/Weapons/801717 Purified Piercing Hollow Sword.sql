DELETE FROM `weenie` WHERE `class_Id` = 801717;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801717, 'purified Piercing hollow sword', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801717,   1,          1) /* ItemType - MeleeWeapon */
     , (801717,   3,         39) /* PaletteTemplate - Black */
     , (801717,   5,        550) /* EncumbranceVal */
     , (801717,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801717,  16,          1) /* ItemUseable - No */
     , (801717,  18,          1) /* UiEffects - Magical */
     , (801717,  19,         10) /* Value */
     , (801717,  33,          1) /* Bonded - Bonded */
     , (801717,  44,       3000) /* Damage */
     , (801717,  45,       2) /* DamageType - Nether */
     , (801717,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801717,  47,          6) /* AttackType - Thrust, Slash */
     , (801717,  48,         45) /* WeaponSkill - Sword */
     , (801717,  49,         35) /* WeaponTime */
     , (801717,  51,          1) /* CombatUse - Melee */
     , (801717,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801717, 106,        999) /* ItemSpellcraft */
     , (801717, 107,       1200) /* ItemCurMana */
     , (801717, 108,       1200) /* ItemMaxMana */ 
     , (801717, 114,          1) /* Attuned - Attuned */			
     , (801717, 151,          2) /* HookType - Wall */
     , (801717, 158,          7) /* WieldRequirements - Level */
     , (801717, 159,          1) /* WieldSkillType - Axe */
     , (801717, 160,        400) /* WieldDifficulty */
	 , (801717, 179,      16) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801717,  11, True ) /* IgnoreCollisions */
     , (801717,  13, True ) /* Ethereal */
     , (801717,  14, True ) /* GravityStatus */
     , (801717,  19, True ) /* Attackable */
     , (801717,  22, True ) /* Inscribable */
     , (801717,  65, True ) /* IgnoreMagicResist */
     , (801717,  66, True ) /* IgnoreMagicArmor */
     , (801717,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801717,   5,    -0.1) /* ManaRate */
     , (801717,  21,       1) /* WeaponLength */
     , (801717,  22,     0.5) /* DamageVariance */
     , (801717,  29,     1.4) /* WeaponDefense */
     , (801717,  62,     1.4) /* WeaponOffense */
     , (801717,  63,      16) /* DamageMod */
     , (801717,  76,     0.7) /* Translucency */
     , (801717, 136,       6) /* CriticalMultiplier */
     , (801717, 147,       1) /* CriticalFrequency */
     , (801717, 152,       5) /* ElementalDamageMod */
	 , (801717, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801717,   1, 'Purified Piercing Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801717,   1,   33556262) /* Setup */
     , (801717,   3,  536870932) /* SoundTable */
     , (801717,   6,   67111919) /* PaletteBase */
     , (801717,   7,  268436385) /* ClothingBase */
     , (801717,   8,  100672945) /* Icon */
     , (801717,  22,  872415275) /* PhysicsEffectTable */
     , (801717,  37,         11) /* ItemSkillLimit - Sword */
     , (801717,  52,  100676443) /* IconUnderlay */
	 , (801717,  55,       5368) /* ProcSpell - Nether Arc VII */;
