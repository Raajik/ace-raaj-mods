DELETE FROM `weenie` WHERE `class_Id` = 801726;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801726, 'Purified Cold Hollow Longsword', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801726,   1,          1) /* ItemType - MeleeWeapon */
     , (801726,   3,         39) /* PaletteTemplate - Black */
     , (801726,   5,        650) /* EncumbranceVal */
     , (801726,   9,   33554432) /* ValidLocations - TwoHanded */
     , (801726,  16,          1) /* ItemUseable - No */
     , (801726,  18,          1) /* UiEffects - Magical */
     , (801726,  19,         10) /* Value */
     , (801726,  33,          1) /* Bonded - Bonded */
     , (801726,  44,       1100) /* Damage */
     , (801726,  45,       8) /* DamageType - Nether */
     , (801726,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (801726,  47,          4) /* AttackType - Slash */
     , (801726,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (801726,  49,         20) /* WeaponTime */
     , (801726,  51,          5) /* CombatUse - TwoHanded */
     , (801726,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801726, 106,        999) /* ItemSpellcraft */
     , (801726, 107,       1200) /* ItemCurMana */
     , (801726, 108,       1200) /* ItemMaxMana */
     , (801726, 114,          1) /* Attuned - Attuned */
     , (801726, 151,          2) /* HookType - Wall */
     , (801726, 158,          7) /* WieldRequirements - Level */
     , (801726, 159,          1) /* WieldSkillType - Axe */
     , (801726, 160,        400) /* WieldDifficulty */
	 , (801726, 179,      128) /* Imbued Effect - Critical Strike */
     , (801726, 292,          3) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801726,  11, True ) /* IgnoreCollisions */
     , (801726,  13, True ) /* Ethereal */
     , (801726,  14, True ) /* GravityStatus */
     , (801726,  19, True ) /* Attackable */
     , (801726,  22, True ) /* Inscribable */
     , (801726,  65, True ) /* IgnoreMagicResist */
     , (801726,  66, True ) /* IgnoreMagicArmor */
     , (801726,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801726,  21,       1) /* WeaponLength */
     , (801726,  22,     0.5) /* DamageVariance */
     , (801726,  26,       0) /* MaximumVelocity */
     , (801726,  29,     1.4) /* WeaponDefense */
     , (801726,  39,    1.15) /* DefaultScale */
     , (801726,  62,     1.4) /* WeaponOffense */
     , (801726,  63,      16) /* DamageMod */
     , (801726,  76,     0.7) /* Translucency */
     , (801726, 136,       6) /* CriticalMultiplier */
     , (801726, 147,       1) /* CriticalFrequency */
     , (801726, 152,       5) /* ElementalDamageMod */
	 , (801726, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801726,   1, 'Purified Cold Hollow Longsword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801726,   1, 0x02000726) /* Setup */
     , (801726,   3, 0x20000014) /* SoundTable */
     , (801726,   6, 0x04000BEF) /* PaletteBase */
     , (801726,   7, 0x100003A1) /* ClothingBase */
     , (801726,   8, 0x060073D2) /* Icon */
     , (801726,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801726,  52,  100676435) /* IconUnderlay */
	 , (801726,  55,       5368) /* ProcSpell - Nether Arc VII */;
