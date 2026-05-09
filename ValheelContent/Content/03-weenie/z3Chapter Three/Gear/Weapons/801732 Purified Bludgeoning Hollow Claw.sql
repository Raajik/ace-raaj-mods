DELETE FROM `weenie` WHERE `class_Id` = 801732;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801732, 'Purified Bludgeoning Hollow Claw', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801732,   1,          1) /* ItemType - MeleeWeapon */
     , (801732,   3,         39) /* PaletteTemplate - Black */
     , (801732,   5,        125) /* EncumbranceVal */
     , (801732,   8,        110) /* Mass */
     , (801732,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801732,  16,          1) /* ItemUseable - No */
     , (801732,  18,          1) /* UiEffects - Magical */
     , (801732,  19,         10) /* Value */
     , (801732,  33,          1) /* Bonded - Bonded */
     , (801732,  44,       1000) /* Damage */
     , (801732,  45,       4) /* DamageType - Nether */
     , (801732,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (801732,  47,          1) /* AttackType - Punch */
     , (801732,  48,         46) /* WeaponSkill - UnarmedCombat */
     , (801732,  49,         12) /* WeaponTime */
     , (801732,  51,          1) /* CombatUse - Melee */
     , (801732,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801732, 106,        999) /* ItemSpellcraft */
     , (801732, 107,       1200) /* ItemCurMana */
     , (801732, 108,       1200) /* ItemMaxMana */
     , (801732, 114,          1) /* Attuned - Attuned */
     , (801732, 115,        325) /* ItemSkillLevelLimit */
     , (801732, 150,        103) /* HookPlacement - Hook */
     , (801732, 151,          2) /* HookType - Wall */
     , (801732, 158,          7) /* WieldRequirements - Level */
     , (801732, 159,         46) /* WieldSkillType - Finesse Weapons */
     , (801732, 160,        400) /* WieldDifficulty */
	 , (801732, 179,      32) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801732,  11, True ) /* IgnoreCollisions */
     , (801732,  13, True ) /* Ethereal */
     , (801732,  14, True ) /* GravityStatus */
     , (801732,  19, True ) /* Attackable */
     , (801732,  22, True ) /* Inscribable */
     , (801732,  65, True ) /* IgnoreMagicResist */
     , (801732,  66, True ) /* IgnoreMagicArmor */
     , (801732	,69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801732,   5,    -0.1) /* ManaRate */
     , (801732,  21,    0.55) /* WeaponLength */
     , (801732,  22,    0.75) /* DamageVariance */
     , (801732,  29,     1.4) /* WeaponDefense */
     , (801732,  62,     1.4) /* WeaponOffense */
     , (801732,  63,      16) /* DamageMod */
     , (801732,  76,     0.7) /* Translucency */
     , (801732, 136,       3) /* CriticalMultiplier */
     , (801732, 147,       1) /* CriticalFrequency */
     , (801732, 152,       5) /* ElementalDamageMod */
	 , (801732,  156,    0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801732,   1, 'Purified Bludgeoning Hollow Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801732,   1,   33556258) /* Setup */
     , (801732,   3,  536870932) /* SoundTable */
     , (801732,   6,   67111919) /* PaletteBase */
     , (801732,   7,  268436380) /* ClothingBase */
     , (801732,   8,  100672905) /* Icon */
     , (801732,  22,  872415275) /* PhysicsEffectTable */
     , (801732,  37,         13) /* ItemSkillLimit - UnarmedCombat */
     , (801732,  52,  100676442) /* IconUnderlay */
	 , (801732,  55,       5368) /* ProcSpell - Nether Arc VII */;
