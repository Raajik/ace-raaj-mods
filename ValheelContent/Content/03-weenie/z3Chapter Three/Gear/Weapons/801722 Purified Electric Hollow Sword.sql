DELETE FROM `weenie` WHERE `class_Id` = 801722;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801722, 'purified Elictric hollow sword', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801722,   1,          1) /* ItemType - MeleeWeapon */
     , (801722,   3,         39) /* PaletteTemplate - Black */
     , (801722,   5,        550) /* EncumbranceVal */
     , (801722,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801722,  16,          1) /* ItemUseable - No */
     , (801722,  18,          1) /* UiEffects - Magical */
     , (801722,  19,         10) /* Value */
     , (801722,  33,          1) /* Bonded - Bonded */
     , (801722,  44,       3000) /* Damage */
     , (801722,  45,       64) /* DamageType - Nether */
     , (801722,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801722,  47,          6) /* AttackType - Thrust, Slash */
     , (801722,  48,         45) /* WeaponSkill - Sword */
     , (801722,  49,         35) /* WeaponTime */
     , (801722,  51,          1) /* CombatUse - Melee */
     , (801722,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801722, 106,        999) /* ItemSpellcraft */
     , (801722, 107,       1200) /* ItemCurMana */
     , (801722, 108,       1200) /* ItemMaxMana */ 
     , (801722, 114,          1) /* Attuned - Attuned */			
     , (801722, 151,          2) /* HookType - Wall */
     , (801722, 158,          7) /* WieldRequirements - Level */
     , (801722, 159,          1) /* WieldSkillType - Axe */
     , (801722, 160,        400) /* WieldDifficulty */
	 , (801722, 179,      256) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801722,  11, True ) /* IgnoreCollisions */
     , (801722,  13, True ) /* Ethereal */
     , (801722,  14, True ) /* GravityStatus */
     , (801722,  19, True ) /* Attackable */
     , (801722,  22, True ) /* Inscribable */
     , (801722,  65, True ) /* IgnoreMagicResist */
     , (801722,  66, True ) /* IgnoreMagicArmor */
     , (801722,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801722,   5,    -0.1) /* ManaRate */
     , (801722,  21,       1) /* WeaponLength */
     , (801722,  22,     0.5) /* DamageVariance */
     , (801722,  29,     1.4) /* WeaponDefense */
     , (801722,  62,     1.4) /* WeaponOffense */
     , (801722,  63,      16) /* DamageMod */
     , (801722,  76,     0.7) /* Translucency */
     , (801722, 136,       6) /* CriticalMultiplier */
     , (801722, 147,       1) /* CriticalFrequency */
     , (801722, 152,       5) /* ElementalDamageMod */
	 , (801722, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801722,   1, 'Purified Elictric Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801722,   1,   33556262) /* Setup */
     , (801722,   3,  536870932) /* SoundTable */
     , (801722,   6,   67111919) /* PaletteBase */
     , (801722,   7,  268436385) /* ClothingBase */
     , (801722,   8,  100672945) /* Icon */
     , (801722,  22,  872415275) /* PhysicsEffectTable */
     , (801722,  37,         11) /* ItemSkillLimit - Sword */
     , (801722,  52,  100676436) /* IconUnderlay */
	 , (801722,  55,       5368) /* ProcSpell - Nether Arc VII */;
