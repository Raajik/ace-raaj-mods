DELETE FROM `weenie` WHERE `class_Id` = 801730;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801730, 'Purified Slashing Hollow Claw', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801730,   1,          1) /* ItemType - MeleeWeapon */
     , (801730,   3,         39) /* PaletteTemplate - Black */
     , (801730,   5,        125) /* EncumbranceVal */
     , (801730,   8,        110) /* Mass */
     , (801730,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801730,  16,          1) /* ItemUseable - No */
     , (801730,  18,          1) /* UiEffects - Magical */
     , (801730,  19,         10) /* Value */
     , (801730,  33,          1) /* Bonded - Bonded */
     , (801730,  44,       1000) /* Damage */
     , (801730,  45,       1) /* DamageType - Nether */
     , (801730,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (801730,  47,          1) /* AttackType - Punch */
     , (801730,  48,         46) /* WeaponSkill - UnarmedCombat */
     , (801730,  49,         12) /* WeaponTime */
     , (801730,  51,          1) /* CombatUse - Melee */
     , (801730,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801730, 106,        999) /* ItemSpellcraft */
     , (801730, 107,       1200) /* ItemCurMana */
     , (801730, 108,       1200) /* ItemMaxMana */
     , (801730, 114,          1) /* Attuned - Attuned */
     , (801730, 115,        325) /* ItemSkillLevelLimit */
     , (801730, 150,        103) /* HookPlacement - Hook */
     , (801730, 151,          2) /* HookType - Wall */
     , (801730, 158,          7) /* WieldRequirements - Level */
     , (801730, 159,         46) /* WieldSkillType - Finesse Weapons */
     , (801730, 160,        400) /* WieldDifficulty */
	 , (801730, 179,      8) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801730,  11, True ) /* IgnoreCollisions */
     , (801730,  13, True ) /* Ethereal */
     , (801730,  14, True ) /* GravityStatus */
     , (801730,  19, True ) /* Attackable */
     , (801730,  22, True ) /* Inscribable */
     , (801730,  65, True ) /* IgnoreMagicResist */
     , (801730,  66, True ) /* IgnoreMagicArmor */
     , (801730	,69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801730,   5,    -0.1) /* ManaRate */
     , (801730,  21,    0.55) /* WeaponLength */
     , (801730,  22,    0.75) /* DamageVariance */
     , (801730,  29,     1.4) /* WeaponDefense */
     , (801730,  62,     1.4) /* WeaponOffense */
     , (801730,  63,      16) /* DamageMod */
     , (801730,  76,     0.7) /* Translucency */
     , (801730, 136,       3) /* CriticalMultiplier */
     , (801730, 147,       1) /* CriticalFrequency */
     , (801730, 152,       5) /* ElementalDamageMod */
	 , (801730,  156,    0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801730,   1, 'Purified Slashing Hollow Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801730,   1,   33556258) /* Setup */
     , (801730,   3,  536870932) /* SoundTable */
     , (801730,   6,   67111919) /* PaletteBase */
     , (801730,   7,  268436380) /* ClothingBase */
     , (801730,   8,  100672905) /* Icon */
     , (801730,  22,  872415275) /* PhysicsEffectTable */
     , (801730,  37,         13) /* ItemSkillLimit - UnarmedCombat */
     , (801730,  52,  100676444) /* IconUnderlay */
	 , (801730,  55,       5368) /* ProcSpell - Nether Arc VII */;
