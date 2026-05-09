DELETE FROM `weenie` WHERE `class_Id` = 801725;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801725, 'Purified Bludgeoning Hollow Longsword', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801725,   1,          1) /* ItemType - MeleeWeapon */
     , (801725,   3,         39) /* PaletteTemplate - Black */
     , (801725,   5,        650) /* EncumbranceVal */
     , (801725,   9,   33554432) /* ValidLocations - TwoHanded */
     , (801725,  16,          1) /* ItemUseable - No */
     , (801725,  18,          1) /* UiEffects - Magical */
     , (801725,  19,         10) /* Value */
     , (801725,  33,          1) /* Bonded - Bonded */
     , (801725,  44,       1100) /* Damage */
     , (801725,  45,       4) /* DamageType - Nether */
     , (801725,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (801725,  47,          4) /* AttackType - Slash */
     , (801725,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (801725,  49,         20) /* WeaponTime */
     , (801725,  51,          5) /* CombatUse - TwoHanded */
     , (801725,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801725, 106,        999) /* ItemSpellcraft */
     , (801725, 107,       1200) /* ItemCurMana */
     , (801725, 108,       1200) /* ItemMaxMana */
     , (801725, 114,          1) /* Attuned - Attuned */
     , (801725, 151,          2) /* HookType - Wall */
     , (801725, 158,          7) /* WieldRequirements - Level */
     , (801725, 159,          1) /* WieldSkillType - Axe */
     , (801725, 160,        400) /* WieldDifficulty */
	 , (801725, 179,      32) /* Imbued Effect - Critical Strike */
     , (801725, 292,          3) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801725,  11, True ) /* IgnoreCollisions */
     , (801725,  13, True ) /* Ethereal */
     , (801725,  14, True ) /* GravityStatus */
     , (801725,  19, True ) /* Attackable */
     , (801725,  22, True ) /* Inscribable */
     , (801725,  65, True ) /* IgnoreMagicResist */
     , (801725,  66, True ) /* IgnoreMagicArmor */
     , (801725,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801725,  21,       1) /* WeaponLength */
     , (801725,  22,     0.5) /* DamageVariance */
     , (801725,  26,       0) /* MaximumVelocity */
     , (801725,  29,     1.4) /* WeaponDefense */
     , (801725,  39,    1.15) /* DefaultScale */
     , (801725,  62,     1.4) /* WeaponOffense */
     , (801725,  63,      16) /* DamageMod */
     , (801725,  76,     0.7) /* Translucency */
     , (801725, 136,       6) /* CriticalMultiplier */
     , (801725, 147,       1) /* CriticalFrequency */
     , (801725, 152,       5) /* ElementalDamageMod */
	 , (801725, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801725,   1, 'Purified Bludgeoning Hollow Longsword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801725,   1, 0x02000726) /* Setup */
     , (801725,   3, 0x20000014) /* SoundTable */
     , (801725,   6, 0x04000BEF) /* PaletteBase */
     , (801725,   7, 0x100003A1) /* ClothingBase */
     , (801725,   8, 0x060073D2) /* Icon */
     , (801725,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801725,  52,  100676442) /* IconUnderlay */
	 , (801725,  55,       5368) /* ProcSpell - Nether Arc VII */;
