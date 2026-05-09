DELETE FROM `weenie` WHERE `class_Id` = 801723;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801723, 'Purified Slashing Hollow Longsword', 6, '2021-11-17 16:56:08') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801723,   1,          1) /* ItemType - MeleeWeapon */
     , (801723,   3,         39) /* PaletteTemplate - Black */
     , (801723,   5,        650) /* EncumbranceVal */
     , (801723,   9,   33554432) /* ValidLocations - TwoHanded */
     , (801723,  16,          1) /* ItemUseable - No */
     , (801723,  18,          1) /* UiEffects - Magical */
     , (801723,  19,         10) /* Value */
     , (801723,  33,          1) /* Bonded - Bonded */
     , (801723,  44,       1100) /* Damage */
     , (801723,  45,       1) /* DamageType - Nether */
     , (801723,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (801723,  47,          4) /* AttackType - Slash */
     , (801723,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (801723,  49,         20) /* WeaponTime */
     , (801723,  51,          5) /* CombatUse - TwoHanded */
     , (801723,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801723, 106,        999) /* ItemSpellcraft */
     , (801723, 107,       1200) /* ItemCurMana */
     , (801723, 108,       1200) /* ItemMaxMana */
     , (801723, 114,          1) /* Attuned - Attuned */
     , (801723, 151,          2) /* HookType - Wall */
     , (801723, 158,          7) /* WieldRequirements - Level */
     , (801723, 159,          1) /* WieldSkillType - Axe */
     , (801723, 160,        400) /* WieldDifficulty */
	 , (801723, 179,      8) /* Imbued Effect - Critical Strike */
     , (801723, 292,          3) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801723,  11, True ) /* IgnoreCollisions */
     , (801723,  13, True ) /* Ethereal */
     , (801723,  14, True ) /* GravityStatus */
     , (801723,  19, True ) /* Attackable */
     , (801723,  22, True ) /* Inscribable */
     , (801723,  65, True ) /* IgnoreMagicResist */
     , (801723,  66, True ) /* IgnoreMagicArmor */
     , (801723,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801723,  21,       1) /* WeaponLength */
     , (801723,  22,     0.5) /* DamageVariance */
     , (801723,  26,       0) /* MaximumVelocity */
     , (801723,  29,     1.4) /* WeaponDefense */
     , (801723,  39,    1.15) /* DefaultScale */
     , (801723,  62,     1.4) /* WeaponOffense */
     , (801723,  63,      16) /* DamageMod */
     , (801723,  76,     0.7) /* Translucency */
     , (801723, 136,       6) /* CriticalMultiplier */
     , (801723, 147,       1) /* CriticalFrequency */
     , (801723, 152,       5) /* ElementalDamageMod */
	 , (801723, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801723,   1, 'Purified Slashing Hollow Longsword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801723,   1, 0x02000726) /* Setup */
     , (801723,   3, 0x20000014) /* SoundTable */
     , (801723,   6, 0x04000BEF) /* PaletteBase */
     , (801723,   7, 0x100003A1) /* ClothingBase */
     , (801723,   8, 0x060073D2) /* Icon */
     , (801723,  22, 0x3400002B) /* PhysicsEffectTable */
     , (801723,  52,  100676444) /* IconUnderlay */
	 , (801723,  55,       5368) /* ProcSpell - Nether Arc VII */;
