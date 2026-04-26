DELETE FROM `weenie` WHERE `class_Id` = 801729;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801729, 'Purified Electric Hollow Longsword', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801729,   1,          1) /* ItemType - MeleeWeapon */
     , (801729,   3,         39) /* PaletteTemplate - Black */
     , (801729,   5,        650) /* EncumbranceVal */
     , (801729,   9,   33554432) /* ValidLocations - TwoHanded */
     , (801729,  16,          1) /* ItemUseable - No */
     , (801729,  18,          1) /* UiEffects - Magical */
     , (801729,  19,         10) /* Value */
     , (801729,  33,          1) /* Bonded - Bonded */
     , (801729,  44,       1100) /* Damage */
     , (801729,  45,       64) /* DamageType - Nether */
     , (801729,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (801729,  47,          4) /* AttackType - Slash */
     , (801729,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (801729,  49,         20) /* WeaponTime */
     , (801729,  51,          5) /* CombatUse - TwoHanded */
     , (801729,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801729, 106,        999) /* ItemSpellcraft */
     , (801729, 107,       1200) /* ItemCurMana */
     , (801729, 108,       1200) /* ItemMaxMana */
     , (801729, 114,          1) /* Attuned - Attuned */
     , (801729, 151,          2) /* HookType - Wall */
     , (801729, 158,          7) /* WieldRequirements - Level */
     , (801729, 159,          1) /* WieldSkillType - Axe */
     , (801729, 160,        400) /* WieldDifficulty */
	 , (801729, 179,      256) /* Imbued Effect - Critical Strike */
     , (801729, 292,          3) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801729,  11, True ) /* IgnoreCollisions */
     , (801729,  13, True ) /* Ethereal */
     , (801729,  14, True ) /* GravityStatus */
     , (801729,  19, True ) /* Attackable */
     , (801729,  22, True ) /* Inscribable */
     , (801729,  65, True ) /* IgnoreMagicResist */
     , (801729,  66, True ) /* IgnoreMagicArmor */
     , (801729,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801729,  21,       1) /* WeaponLength */
     , (801729,  22,     0.5) /* DamageVariance */
     , (801729,  26,       0) /* MaximumVelocity */
     , (801729,  29,     1.4) /* WeaponDefense */
     , (801729,  39,    1.15) /* DefaultScale */
     , (801729,  62,     1.4) /* WeaponOffense */
     , (801729,  63,      16) /* DamageMod */
     , (801729,  76,     0.7) /* Translucency */
     , (801729, 136,       6) /* CriticalMultiplier */
     , (801729, 147,       1) /* CriticalFrequency */
     , (801729, 152,       5) /* ElementalDamageMod */
	 , (801729, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801729,   1, 'Purified Electric Hollow Longsword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801729,   1, 0x02000726) /* Setup */
     , (801729,   3, 0x20000014) /* SoundTable */
     , (801729,   6, 0x04000BEF) /* PaletteBase */
     , (801729,   7, 0x100003A1) /* ClothingBase */
     , (801729,   8, 0x060073D2) /* Icon */
     , (801729,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801729,  52,  100676436) /* IconUnderlay */
	 , (801729,  55,       5368) /* ProcSpell - Nether Arc VII */;
