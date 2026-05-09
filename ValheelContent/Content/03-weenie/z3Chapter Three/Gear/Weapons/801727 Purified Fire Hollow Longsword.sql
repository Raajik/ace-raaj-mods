DELETE FROM `weenie` WHERE `class_Id` = 801727;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801727, 'Purified Fire Hollow Longsword', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801727,   1,          1) /* ItemType - MeleeWeapon */
     , (801727,   3,         39) /* PaletteTemplate - Black */
     , (801727,   5,        650) /* EncumbranceVal */
     , (801727,   9,   33554432) /* ValidLocations - TwoHanded */
     , (801727,  16,          1) /* ItemUseable - No */
     , (801727,  18,          1) /* UiEffects - Magical */
     , (801727,  19,         10) /* Value */
     , (801727,  33,          1) /* Bonded - Bonded */
     , (801727,  44,       1100) /* Damage */
     , (801727,  45,       16) /* DamageType - Nether */
     , (801727,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (801727,  47,          4) /* AttackType - Slash */
     , (801727,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (801727,  49,         20) /* WeaponTime */
     , (801727,  51,          5) /* CombatUse - TwoHanded */
     , (801727,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801727, 106,        999) /* ItemSpellcraft */
     , (801727, 107,       1200) /* ItemCurMana */
     , (801727, 108,       1200) /* ItemMaxMana */
     , (801727, 114,          1) /* Attuned - Attuned */
     , (801727, 151,          2) /* HookType - Wall */
     , (801727, 158,          7) /* WieldRequirements - Level */
     , (801727, 159,          1) /* WieldSkillType - Axe */
     , (801727, 160,        400) /* WieldDifficulty */
	 , (801727, 179,      512) /* Imbued Effect - Critical Strike */
     , (801727, 292,          3) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801727,  11, True ) /* IgnoreCollisions */
     , (801727,  13, True ) /* Ethereal */
     , (801727,  14, True ) /* GravityStatus */
     , (801727,  19, True ) /* Attackable */
     , (801727,  22, True ) /* Inscribable */
     , (801727,  65, True ) /* IgnoreMagicResist */
     , (801727,  66, True ) /* IgnoreMagicArmor */
     , (801727,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801727,  21,       1) /* WeaponLength */
     , (801727,  22,     0.5) /* DamageVariance */
     , (801727,  26,       0) /* MaximumVelocity */
     , (801727,  29,     1.4) /* WeaponDefense */
     , (801727,  39,    1.15) /* DefaultScale */
     , (801727,  62,     1.4) /* WeaponOffense */
     , (801727,  63,      16) /* DamageMod */
     , (801727,  76,     0.7) /* Translucency */
     , (801727, 136,       6) /* CriticalMultiplier */
     , (801727, 147,       1) /* CriticalFrequency */
     , (801727, 152,       5) /* ElementalDamageMod */
	 , (801727, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801727,   1, 'Purified Fire Hollow Longsword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801727,   1, 0x02000726) /* Setup */
     , (801727,   3, 0x20000014) /* SoundTable */
     , (801727,   6, 0x04000BEF) /* PaletteBase */
     , (801727,   7, 0x100003A1) /* ClothingBase */
     , (801727,   8, 0x060073D2) /* Icon */
     , (801727,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801727,  52,  100676441) /* IconUnderlay */
	 , (801727,  55,       5368) /* ProcSpell - Nether Arc VII */;
