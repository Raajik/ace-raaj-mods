DELETE FROM `weenie` WHERE `class_Id` = 801621;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801621, 'Purified Hollow Claw', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801621,   1,          1) /* ItemType - MeleeWeapon */
     , (801621,   3,         39) /* PaletteTemplate - Black */
     , (801621,   5,        125) /* EncumbranceVal */
     , (801621,   8,        110) /* Mass */
     , (801621,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801621,  16,          1) /* ItemUseable - No */
     , (801621,  18,          1) /* UiEffects - Magical */
     , (801621,  19,         10) /* Value */
     , (801621,  33,          1) /* Bonded - Bonded */
     , (801621,  44,       1000) /* Damage */
     , (801621,  45,       1024) /* DamageType - Nether */
     , (801621,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (801621,  47,          1) /* AttackType - Punch */
     , (801621,  48,         46) /* WeaponSkill - UnarmedCombat */
     , (801621,  49,         12) /* WeaponTime */
     , (801621,  51,          1) /* CombatUse - Melee */
     , (801621,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801621, 106,        999) /* ItemSpellcraft */
     , (801621, 107,       1200) /* ItemCurMana */
     , (801621, 108,       1200) /* ItemMaxMana */
     , (801621, 114,          1) /* Attuned - Attuned */
     , (801621, 115,        325) /* ItemSkillLevelLimit */
     , (801621, 150,        103) /* HookPlacement - Hook */
     , (801621, 151,          2) /* HookType - Wall */
     , (801621, 158,          7) /* WieldRequirements - Level */
     , (801621, 159,         46) /* WieldSkillType - Finesse Weapons */
     , (801621, 160,        400) /* WieldDifficulty */
	 , (801621, 179,      16384) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801621,  11, True ) /* IgnoreCollisions */
     , (801621,  13, True ) /* Ethereal */
     , (801621,  14, True ) /* GravityStatus */
     , (801621,  19, True ) /* Attackable */
     , (801621,  22, True ) /* Inscribable */
     , (801621,  65, True ) /* IgnoreMagicResist */
     , (801621,  66, True ) /* IgnoreMagicArmor */
     , (801621	,69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801621,   5,    -0.1) /* ManaRate */
     , (801621,  21,    0.55) /* WeaponLength */
     , (801621,  22,    0.75) /* DamageVariance */
     , (801621,  29,     1.4) /* WeaponDefense */
     , (801621,  62,     1.4) /* WeaponOffense */
     , (801621,  63,      16) /* DamageMod */
     , (801621,  76,     0.7) /* Translucency */
     , (801621, 136,       3) /* CriticalMultiplier */
     , (801621, 147,       1) /* CriticalFrequency */
     , (801621, 152,       5) /* ElementalDamageMod */
	 , (801621,  156,    0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801621,   1, 'Purified Hollow Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801621,   1,   33556258) /* Setup */
     , (801621,   3,  536870932) /* SoundTable */
     , (801621,   6,   67111919) /* PaletteBase */
     , (801621,   7,  268436380) /* ClothingBase */
     , (801621,   8,  100672905) /* Icon */
     , (801621,  22,  872415275) /* PhysicsEffectTable */
     , (801621,  37,         13) /* ItemSkillLimit - UnarmedCombat */
	 , (801621,  55,       5368) /* ProcSpell - Nether Arc VII */;
