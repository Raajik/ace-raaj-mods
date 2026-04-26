DELETE FROM `weenie` WHERE `class_Id` = 801733;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801733, 'Purified Cold Hollow Claw', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801733,   1,          1) /* ItemType - MeleeWeapon */
     , (801733,   3,         39) /* PaletteTemplate - Black */
     , (801733,   5,        125) /* EncumbranceVal */
     , (801733,   8,        110) /* Mass */
     , (801733,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801733,  16,          1) /* ItemUseable - No */
     , (801733,  18,          1) /* UiEffects - Magical */
     , (801733,  19,         10) /* Value */
     , (801733,  33,          1) /* Bonded - Bonded */
     , (801733,  44,       1000) /* Damage */
     , (801733,  45,       8) /* DamageType - Nether */
     , (801733,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (801733,  47,          1) /* AttackType - Punch */
     , (801733,  48,         46) /* WeaponSkill - UnarmedCombat */
     , (801733,  49,         12) /* WeaponTime */
     , (801733,  51,          1) /* CombatUse - Melee */
     , (801733,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801733, 106,        999) /* ItemSpellcraft */
     , (801733, 107,       1200) /* ItemCurMana */
     , (801733, 108,       1200) /* ItemMaxMana */
     , (801733, 114,          1) /* Attuned - Attuned */
     , (801733, 115,        325) /* ItemSkillLevelLimit */
     , (801733, 150,        103) /* HookPlacement - Hook */
     , (801733, 151,          2) /* HookType - Wall */
     , (801733, 158,          7) /* WieldRequirements - Level */
     , (801733, 159,         46) /* WieldSkillType - Finesse Weapons */
     , (801733, 160,        400) /* WieldDifficulty */
	 , (801733, 179,      128) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801733,  11, True ) /* IgnoreCollisions */
     , (801733,  13, True ) /* Ethereal */
     , (801733,  14, True ) /* GravityStatus */
     , (801733,  19, True ) /* Attackable */
     , (801733,  22, True ) /* Inscribable */
     , (801733,  65, True ) /* IgnoreMagicResist */
     , (801733,  66, True ) /* IgnoreMagicArmor */
     , (801733	,69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801733,   5,    -0.1) /* ManaRate */
     , (801733,  21,    0.55) /* WeaponLength */
     , (801733,  22,    0.75) /* DamageVariance */
     , (801733,  29,     1.4) /* WeaponDefense */
     , (801733,  62,     1.4) /* WeaponOffense */
     , (801733,  63,      16) /* DamageMod */
     , (801733,  76,     0.7) /* Translucency */
     , (801733, 136,       3) /* CriticalMultiplier */
     , (801733, 147,       1) /* CriticalFrequency */
     , (801733, 152,       5) /* ElementalDamageMod */
	 , (801733,  156,    0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801733,   1, 'Purified Cold Hollow Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801733,   1,   33556258) /* Setup */
     , (801733,   3,  536870932) /* SoundTable */
     , (801733,   6,   67111919) /* PaletteBase */
     , (801733,   7,  268436380) /* ClothingBase */
     , (801733,   8,  100672905) /* Icon */
     , (801733,  22,  872415275) /* PhysicsEffectTable */
     , (801733,  37,         13) /* ItemSkillLimit - UnarmedCombat */
     , (801733,  52,  100676435) /* IconUnderlay */
	 , (801733,  55,       5368) /* ProcSpell - Nether Arc VII */;
