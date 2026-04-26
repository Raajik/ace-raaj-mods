DELETE FROM `weenie` WHERE `class_Id` = 801620;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801620, 'Purified Hollow Longsword', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801620,   1,          1) /* ItemType - MeleeWeapon */
     , (801620,   3,         39) /* PaletteTemplate - Black */
     , (801620,   5,        650) /* EncumbranceVal */
     , (801620,   9,   33554432) /* ValidLocations - TwoHanded */
     , (801620,  16,          1) /* ItemUseable - No */
     , (801620,  18,          1) /* UiEffects - Magical */
     , (801620,  19,         10) /* Value */
     , (801620,  33,          1) /* Bonded - Bonded */
     , (801620,  44,       1100) /* Damage */
     , (801620,  45,       1024) /* DamageType - Nether */
     , (801620,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (801620,  47,          4) /* AttackType - Slash */
     , (801620,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (801620,  49,         20) /* WeaponTime */
     , (801620,  51,          5) /* CombatUse - TwoHanded */
     , (801620,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801620, 106,        999) /* ItemSpellcraft */
     , (801620, 107,       1200) /* ItemCurMana */
     , (801620, 108,       1200) /* ItemMaxMana */
     , (801620, 114,          1) /* Attuned - Attuned */
     , (801620, 151,          2) /* HookType - Wall */
     , (801620, 158,          7) /* WieldRequirements - Level */
     , (801620, 159,          1) /* WieldSkillType - Axe */
     , (801620, 160,        400) /* WieldDifficulty */
	 , (801620, 179,      16384) /* Imbued Effect - Critical Strike */
     , (801620, 292,          3) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801620,  11, True ) /* IgnoreCollisions */
     , (801620,  13, True ) /* Ethereal */
     , (801620,  14, True ) /* GravityStatus */
     , (801620,  19, True ) /* Attackable */
     , (801620,  22, True ) /* Inscribable */
     , (801620,  65, True ) /* IgnoreMagicResist */
     , (801620,  66, True ) /* IgnoreMagicArmor */
     , (801620,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801620,  21,       1) /* WeaponLength */
     , (801620,  22,     0.5) /* DamageVariance */
     , (801620,  26,       0) /* MaximumVelocity */
     , (801620,  29,     1.4) /* WeaponDefense */
     , (801620,  39,    1.15) /* DefaultScale */
     , (801620,  62,     1.4) /* WeaponOffense */
     , (801620,  63,      16) /* DamageMod */
     , (801620,  76,     0.7) /* Translucency */
     , (801620, 136,       6) /* CriticalMultiplier */
     , (801620, 147,       1) /* CriticalFrequency */
     , (801620, 152,       5) /* ElementalDamageMod */
	 , (801620, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801620,   1, 'Purified Hollow Longsword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801620,   1, 0x02000726) /* Setup */
     , (801620,   3, 0x20000014) /* SoundTable */
     , (801620,   6, 0x04000BEF) /* PaletteBase */
     , (801620,   7, 0x100003A1) /* ClothingBase */
     , (801620,   8, 0x060073D2) /* Icon */
     , (801620,  22, 0x3400002B) /* PhysicsEffectTable */
	 , (801620,  55,       5368) /* ProcSpell - Nether Arc VII */;
