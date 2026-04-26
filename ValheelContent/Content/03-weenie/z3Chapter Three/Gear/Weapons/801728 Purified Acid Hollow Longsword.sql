DELETE FROM `weenie` WHERE `class_Id` = 801728;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801728, 'Purified Acid Hollow Longsword', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801728,   1,          1) /* ItemType - MeleeWeapon */
     , (801728,   3,         39) /* PaletteTemplate - Black */
     , (801728,   5,        650) /* EncumbranceVal */
     , (801728,   9,   33554432) /* ValidLocations - TwoHanded */
     , (801728,  16,          1) /* ItemUseable - No */
     , (801728,  18,          1) /* UiEffects - Magical */
     , (801728,  19,         10) /* Value */
     , (801728,  33,          1) /* Bonded - Bonded */
     , (801728,  44,       1100) /* Damage */
     , (801728,  45,       32) /* DamageType - Nether */
     , (801728,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (801728,  47,          4) /* AttackType - Slash */
     , (801728,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (801728,  49,         20) /* WeaponTime */
     , (801728,  51,          5) /* CombatUse - TwoHanded */
     , (801728,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801728, 106,        999) /* ItemSpellcraft */
     , (801728, 107,       1200) /* ItemCurMana */
     , (801728, 108,       1200) /* ItemMaxMana */
     , (801728, 114,          1) /* Attuned - Attuned */
     , (801728, 151,          2) /* HookType - Wall */
     , (801728, 158,          7) /* WieldRequirements - Level */
     , (801728, 159,          1) /* WieldSkillType - Axe */
     , (801728, 160,        400) /* WieldDifficulty */
	 , (801728, 179,      64) /* Imbued Effect - Critical Strike */
     , (801728, 292,          3) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801728,  11, True ) /* IgnoreCollisions */
     , (801728,  13, True ) /* Ethereal */
     , (801728,  14, True ) /* GravityStatus */
     , (801728,  19, True ) /* Attackable */
     , (801728,  22, True ) /* Inscribable */
     , (801728,  65, True ) /* IgnoreMagicResist */
     , (801728,  66, True ) /* IgnoreMagicArmor */
     , (801728,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801728,  21,       1) /* WeaponLength */
     , (801728,  22,     0.5) /* DamageVariance */
     , (801728,  26,       0) /* MaximumVelocity */
     , (801728,  29,     1.4) /* WeaponDefense */
     , (801728,  39,    1.15) /* DefaultScale */
     , (801728,  62,     1.4) /* WeaponOffense */
     , (801728,  63,      16) /* DamageMod */
     , (801728,  76,     0.7) /* Translucency */
     , (801728, 136,       6) /* CriticalMultiplier */
     , (801728, 147,       1) /* CriticalFrequency */
     , (801728, 152,       5) /* ElementalDamageMod */
	 , (801728, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801728,   1, 'Purified Acid Hollow Longsword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801728,   1, 0x02000726) /* Setup */
     , (801728,   3, 0x20000014) /* SoundTable */
     , (801728,   6, 0x04000BEF) /* PaletteBase */
     , (801728,   7, 0x100003A1) /* ClothingBase */
     , (801728,   8, 0x060073D2) /* Icon */
     , (801728,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801728,  52,  100676437) /* IconUnderlay */
	 , (801728,  55,       5368) /* ProcSpell - Nether Arc VII */;
