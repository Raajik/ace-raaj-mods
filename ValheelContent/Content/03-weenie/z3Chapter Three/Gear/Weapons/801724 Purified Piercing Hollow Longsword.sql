DELETE FROM `weenie` WHERE `class_Id` = 801724;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801724, 'Purified Piercing Hollow Longsword', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801724,   1,          1) /* ItemType - MeleeWeapon */
     , (801724,   3,         39) /* PaletteTemplate - Black */
     , (801724,   5,        650) /* EncumbranceVal */
     , (801724,   9,   33554432) /* ValidLocations - TwoHanded */
     , (801724,  16,          1) /* ItemUseable - No */
     , (801724,  18,          1) /* UiEffects - Magical */
     , (801724,  19,         10) /* Value */
     , (801724,  33,          1) /* Bonded - Bonded */
     , (801724,  44,       1100) /* Damage */
     , (801724,  45,       2) /* DamageType - Nether */
     , (801724,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (801724,  47,          4) /* AttackType - Slash */
     , (801724,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (801724,  49,         20) /* WeaponTime */
     , (801724,  51,          5) /* CombatUse - TwoHanded */
     , (801724,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801724, 106,        999) /* ItemSpellcraft */
     , (801724, 107,       1200) /* ItemCurMana */
     , (801724, 108,       1200) /* ItemMaxMana */
     , (801724, 114,          1) /* Attuned - Attuned */
     , (801724, 151,          2) /* HookType - Wall */
     , (801724, 158,          7) /* WieldRequirements - Level */
     , (801724, 159,          1) /* WieldSkillType - Axe */
     , (801724, 160,        400) /* WieldDifficulty */
	 , (801724, 179,      16) /* Imbued Effect - Critical Strike */
     , (801724, 292,          3) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801724,  11, True ) /* IgnoreCollisions */
     , (801724,  13, True ) /* Ethereal */
     , (801724,  14, True ) /* GravityStatus */
     , (801724,  19, True ) /* Attackable */
     , (801724,  22, True ) /* Inscribable */
     , (801724,  65, True ) /* IgnoreMagicResist */
     , (801724,  66, True ) /* IgnoreMagicArmor */
     , (801724,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801724,  21,       1) /* WeaponLength */
     , (801724,  22,     0.5) /* DamageVariance */
     , (801724,  26,       0) /* MaximumVelocity */
     , (801724,  29,     1.4) /* WeaponDefense */
     , (801724,  39,    1.15) /* DefaultScale */
     , (801724,  62,     1.4) /* WeaponOffense */
     , (801724,  63,      16) /* DamageMod */
     , (801724,  76,     0.7) /* Translucency */
     , (801724, 136,       6) /* CriticalMultiplier */
     , (801724, 147,       1) /* CriticalFrequency */
     , (801724, 152,       5) /* ElementalDamageMod */
	 , (801724, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801724,   1, 'Purified Piercing Hollow Longsword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801724,   1, 0x02000726) /* Setup */
     , (801724,   3, 0x20000014) /* SoundTable */
     , (801724,   6, 0x04000BEF) /* PaletteBase */
     , (801724,   7, 0x100003A1) /* ClothingBase */
     , (801724,   8, 0x060073D2) /* Icon */
     , (801724,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801724,  52,  100676443) /* IconUnderlay */
	 , (801724,  55,       5368) /* ProcSpell - Nether Arc VII */;
