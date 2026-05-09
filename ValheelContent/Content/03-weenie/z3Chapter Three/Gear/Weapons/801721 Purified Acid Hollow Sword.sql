DELETE FROM `weenie` WHERE `class_Id` = 801721;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801721, 'purified Acid hollow sword', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801721,   1,          1) /* ItemType - MeleeWeapon */
     , (801721,   3,         39) /* PaletteTemplate - Black */
     , (801721,   5,        550) /* EncumbranceVal */
     , (801721,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801721,  16,          1) /* ItemUseable - No */
     , (801721,  18,          1) /* UiEffects - Magical */
     , (801721,  19,         10) /* Value */
     , (801721,  33,          1) /* Bonded - Bonded */
     , (801721,  44,       3000) /* Damage */
     , (801721,  45,       32) /* DamageType - Nether */
     , (801721,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801721,  47,          6) /* AttackType - Thrust, Slash */
     , (801721,  48,         45) /* WeaponSkill - Sword */
     , (801721,  49,         35) /* WeaponTime */
     , (801721,  51,          1) /* CombatUse - Melee */
     , (801721,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801721, 106,        999) /* ItemSpellcraft */
     , (801721, 107,       1200) /* ItemCurMana */
     , (801721, 108,       1200) /* ItemMaxMana */ 
     , (801721, 114,          1) /* Attuned - Attuned */			
     , (801721, 151,          2) /* HookType - Wall */
     , (801721, 158,          7) /* WieldRequirements - Level */
     , (801721, 159,          1) /* WieldSkillType - Axe */
     , (801721, 160,        400) /* WieldDifficulty */
	 , (801721, 179,      64) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801721,  11, True ) /* IgnoreCollisions */
     , (801721,  13, True ) /* Ethereal */
     , (801721,  14, True ) /* GravityStatus */
     , (801721,  19, True ) /* Attackable */
     , (801721,  22, True ) /* Inscribable */
     , (801721,  65, True ) /* IgnoreMagicResist */
     , (801721,  66, True ) /* IgnoreMagicArmor */
     , (801721,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801721,   5,    -0.1) /* ManaRate */
     , (801721,  21,       1) /* WeaponLength */
     , (801721,  22,     0.5) /* DamageVariance */
     , (801721,  29,     1.4) /* WeaponDefense */
     , (801721,  62,     1.4) /* WeaponOffense */
     , (801721,  63,      16) /* DamageMod */
     , (801721,  76,     0.7) /* Translucency */
     , (801721, 136,       6) /* CriticalMultiplier */
     , (801721, 147,       1) /* CriticalFrequency */
     , (801721, 152,       5) /* ElementalDamageMod */
	 , (801721, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801721,   1, 'Purified Acid Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801721,   1,   33556262) /* Setup */
     , (801721,   3,  536870932) /* SoundTable */
     , (801721,   6,   67111919) /* PaletteBase */
     , (801721,   7,  268436385) /* ClothingBase */
     , (801721,   8,  100672945) /* Icon */
     , (801721,  22,  872415275) /* PhysicsEffectTable */
     , (801721,  37,         11) /* ItemSkillLimit - Sword */
     , (801721,  52,  100676437) /* IconUnderlay */
	 , (801721,  55,       5368) /* ProcSpell - Nether Arc VII */;
