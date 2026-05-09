DELETE FROM `weenie` WHERE `class_Id` = 801720;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801720, 'purified Fire hollow sword', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801720,   1,          1) /* ItemType - MeleeWeapon */
     , (801720,   3,         39) /* PaletteTemplate - Black */
     , (801720,   5,        550) /* EncumbranceVal */
     , (801720,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801720,  16,          1) /* ItemUseable - No */
     , (801720,  18,          1) /* UiEffects - Magical */
     , (801720,  19,         10) /* Value */
     , (801720,  33,          1) /* Bonded - Bonded */
     , (801720,  44,       3000) /* Damage */
     , (801720,  45,       16) /* DamageType - Nether */
     , (801720,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801720,  47,          6) /* AttackType - Thrust, Slash */
     , (801720,  48,         45) /* WeaponSkill - Sword */
     , (801720,  49,         35) /* WeaponTime */
     , (801720,  51,          1) /* CombatUse - Melee */
     , (801720,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801720, 106,        999) /* ItemSpellcraft */
     , (801720, 107,       1200) /* ItemCurMana */
     , (801720, 108,       1200) /* ItemMaxMana */ 
     , (801720, 114,          1) /* Attuned - Attuned */			
     , (801720, 151,          2) /* HookType - Wall */
     , (801720, 158,          7) /* WieldRequirements - Level */
     , (801720, 159,          1) /* WieldSkillType - Axe */
     , (801720, 160,        400) /* WieldDifficulty */
	 , (801720, 179,      512) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801720,  11, True ) /* IgnoreCollisions */
     , (801720,  13, True ) /* Ethereal */
     , (801720,  14, True ) /* GravityStatus */
     , (801720,  19, True ) /* Attackable */
     , (801720,  22, True ) /* Inscribable */
     , (801720,  65, True ) /* IgnoreMagicResist */
     , (801720,  66, True ) /* IgnoreMagicArmor */
     , (801720,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801720,   5,    -0.1) /* ManaRate */
     , (801720,  21,       1) /* WeaponLength */
     , (801720,  22,     0.5) /* DamageVariance */
     , (801720,  29,     1.4) /* WeaponDefense */
     , (801720,  62,     1.4) /* WeaponOffense */
     , (801720,  63,      16) /* DamageMod */
     , (801720,  76,     0.7) /* Translucency */
     , (801720, 136,       6) /* CriticalMultiplier */
     , (801720, 147,       1) /* CriticalFrequency */
     , (801720, 152,       5) /* ElementalDamageMod */
	 , (801720, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801720,   1, 'Purified Fire Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801720,   1,   33556262) /* Setup */
     , (801720,   3,  536870932) /* SoundTable */
     , (801720,   6,   67111919) /* PaletteBase */
     , (801720,   7,  268436385) /* ClothingBase */
     , (801720,   8,  100672945) /* Icon */
     , (801720,  22,  872415275) /* PhysicsEffectTable */
     , (801720,  37,         11) /* ItemSkillLimit - Sword */
     , (801720,  52,  100676441) /* IconUnderlay */
	 , (801720,  55,       5368) /* ProcSpell - Nether Arc VII */;
