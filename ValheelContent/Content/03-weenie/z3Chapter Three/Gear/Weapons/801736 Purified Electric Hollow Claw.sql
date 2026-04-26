DELETE FROM `weenie` WHERE `class_Id` = 801736;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801736, 'Purified Electric Hollow Claw', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801736,   1,          1) /* ItemType - MeleeWeapon */
     , (801736,   3,         39) /* PaletteTemplate - Black */
     , (801736,   5,        125) /* EncumbranceVal */
     , (801736,   8,        110) /* Mass */
     , (801736,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801736,  16,          1) /* ItemUseable - No */
     , (801736,  18,          1) /* UiEffects - Magical */
     , (801736,  19,         10) /* Value */
     , (801736,  33,          1) /* Bonded - Bonded */
     , (801736,  44,       1000) /* Damage */
     , (801736,  45,       64) /* DamageType - Nether */
     , (801736,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (801736,  47,          1) /* AttackType - Punch */
     , (801736,  48,         46) /* WeaponSkill - UnarmedCombat */
     , (801736,  49,         12) /* WeaponTime */
     , (801736,  51,          1) /* CombatUse - Melee */
     , (801736,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801736, 106,        999) /* ItemSpellcraft */
     , (801736, 107,       1200) /* ItemCurMana */
     , (801736, 108,       1200) /* ItemMaxMana */
     , (801736, 114,          1) /* Attuned - Attuned */
     , (801736, 115,        325) /* ItemSkillLevelLimit */
     , (801736, 150,        103) /* HookPlacement - Hook */
     , (801736, 151,          2) /* HookType - Wall */
     , (801736, 158,          7) /* WieldRequirements - Level */
     , (801736, 159,         46) /* WieldSkillType - Finesse Weapons */
     , (801736, 160,        400) /* WieldDifficulty */
	 , (801736, 179,      256) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801736,  11, True ) /* IgnoreCollisions */
     , (801736,  13, True ) /* Ethereal */
     , (801736,  14, True ) /* GravityStatus */
     , (801736,  19, True ) /* Attackable */
     , (801736,  22, True ) /* Inscribable */
     , (801736,  65, True ) /* IgnoreMagicResist */
     , (801736,  66, True ) /* IgnoreMagicArmor */
     , (801736	,69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801736,   5,    -0.1) /* ManaRate */
     , (801736,  21,    0.55) /* WeaponLength */
     , (801736,  22,    0.75) /* DamageVariance */
     , (801736,  29,     1.4) /* WeaponDefense */
     , (801736,  62,     1.4) /* WeaponOffense */
     , (801736,  63,      16) /* DamageMod */
     , (801736,  76,     0.7) /* Translucency */
     , (801736, 136,       3) /* CriticalMultiplier */
     , (801736, 147,       1) /* CriticalFrequency */
     , (801736, 152,       5) /* ElementalDamageMod */
	 , (801736,  156,    0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801736,   1, 'Purified Electric Hollow Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801736,   1,   33556258) /* Setup */
     , (801736,   3,  536870932) /* SoundTable */
     , (801736,   6,   67111919) /* PaletteBase */
     , (801736,   7,  268436380) /* ClothingBase */
     , (801736,   8,  100672905) /* Icon */
     , (801736,  22,  872415275) /* PhysicsEffectTable */
     , (801736,  37,         13) /* ItemSkillLimit - UnarmedCombat */
     , (801736,  52,  100676436) /* IconUnderlay */
	 , (801736,  55,       5368) /* ProcSpell - Nether Arc VII */;
