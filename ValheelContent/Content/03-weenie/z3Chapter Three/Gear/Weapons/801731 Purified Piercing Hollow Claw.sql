DELETE FROM `weenie` WHERE `class_Id` = 801731;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801731, 'Purified Piercing Hollow Claw', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801731,   1,          1) /* ItemType - MeleeWeapon */
     , (801731,   3,         39) /* PaletteTemplate - Black */
     , (801731,   5,        125) /* EncumbranceVal */
     , (801731,   8,        110) /* Mass */
     , (801731,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801731,  16,          1) /* ItemUseable - No */
     , (801731,  18,          1) /* UiEffects - Magical */
     , (801731,  19,         10) /* Value */
     , (801731,  33,          1) /* Bonded - Bonded */
     , (801731,  44,       1000) /* Damage */
     , (801731,  45,       2) /* DamageType - Nether */
     , (801731,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (801731,  47,          1) /* AttackType - Punch */
     , (801731,  48,         46) /* WeaponSkill - UnarmedCombat */
     , (801731,  49,         12) /* WeaponTime */
     , (801731,  51,          1) /* CombatUse - Melee */
     , (801731,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801731, 106,        999) /* ItemSpellcraft */
     , (801731, 107,       1200) /* ItemCurMana */
     , (801731, 108,       1200) /* ItemMaxMana */
     , (801731, 114,          1) /* Attuned - Attuned */
     , (801731, 115,        325) /* ItemSkillLevelLimit */
     , (801731, 150,        103) /* HookPlacement - Hook */
     , (801731, 151,          2) /* HookType - Wall */
     , (801731, 158,          7) /* WieldRequirements - Level */
     , (801731, 159,         46) /* WieldSkillType - Finesse Weapons */
     , (801731, 160,        400) /* WieldDifficulty */
	 , (801731, 179,      16) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801731,  11, True ) /* IgnoreCollisions */
     , (801731,  13, True ) /* Ethereal */
     , (801731,  14, True ) /* GravityStatus */
     , (801731,  19, True ) /* Attackable */
     , (801731,  22, True ) /* Inscribable */
     , (801731,  65, True ) /* IgnoreMagicResist */
     , (801731,  66, True ) /* IgnoreMagicArmor */
     , (801731	,69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801731,   5,    -0.1) /* ManaRate */
     , (801731,  21,    0.55) /* WeaponLength */
     , (801731,  22,    0.75) /* DamageVariance */
     , (801731,  29,     1.4) /* WeaponDefense */
     , (801731,  62,     1.4) /* WeaponOffense */
     , (801731,  63,      16) /* DamageMod */
     , (801731,  76,     0.7) /* Translucency */
     , (801731, 136,       3) /* CriticalMultiplier */
     , (801731, 147,       1) /* CriticalFrequency */
     , (801731, 152,       5) /* ElementalDamageMod */
	 , (801731,  156,    0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801731,   1, 'Purified Piercing Hollow Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801731,   1,   33556258) /* Setup */
     , (801731,   3,  536870932) /* SoundTable */
     , (801731,   6,   67111919) /* PaletteBase */
     , (801731,   7,  268436380) /* ClothingBase */
     , (801731,   8,  100672905) /* Icon */
     , (801731,  22,  872415275) /* PhysicsEffectTable */
     , (801731,  37,         13) /* ItemSkillLimit - UnarmedCombat */
     , (801731,  52,  100676443) /* IconUnderlay */
	 , (801731,  55,       5368) /* ProcSpell - Nether Arc VII */;
