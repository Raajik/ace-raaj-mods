DELETE FROM `weenie` WHERE `class_Id` = 801735;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801735, 'Purified Acid Hollow Claw', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801735,   1,          1) /* ItemType - MeleeWeapon */
     , (801735,   3,         39) /* PaletteTemplate - Black */
     , (801735,   5,        125) /* EncumbranceVal */
     , (801735,   8,        110) /* Mass */
     , (801735,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801735,  16,          1) /* ItemUseable - No */
     , (801735,  18,          1) /* UiEffects - Magical */
     , (801735,  19,         10) /* Value */
     , (801735,  33,          1) /* Bonded - Bonded */
     , (801735,  44,       1000) /* Damage */
     , (801735,  45,       32) /* DamageType - Nether */
     , (801735,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (801735,  47,          1) /* AttackType - Punch */
     , (801735,  48,         46) /* WeaponSkill - UnarmedCombat */
     , (801735,  49,         12) /* WeaponTime */
     , (801735,  51,          1) /* CombatUse - Melee */
     , (801735,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801735, 106,        999) /* ItemSpellcraft */
     , (801735, 107,       1200) /* ItemCurMana */
     , (801735, 108,       1200) /* ItemMaxMana */
     , (801735, 114,          1) /* Attuned - Attuned */
     , (801735, 115,        325) /* ItemSkillLevelLimit */
     , (801735, 150,        103) /* HookPlacement - Hook */
     , (801735, 151,          2) /* HookType - Wall */
     , (801735, 158,          7) /* WieldRequirements - Level */
     , (801735, 159,         46) /* WieldSkillType - Finesse Weapons */
     , (801735, 160,        400) /* WieldDifficulty */
	 , (801735, 179,      64) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801735,  11, True ) /* IgnoreCollisions */
     , (801735,  13, True ) /* Ethereal */
     , (801735,  14, True ) /* GravityStatus */
     , (801735,  19, True ) /* Attackable */
     , (801735,  22, True ) /* Inscribable */
     , (801735,  65, True ) /* IgnoreMagicResist */
     , (801735,  66, True ) /* IgnoreMagicArmor */
     , (801735	,69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801735,   5,    -0.1) /* ManaRate */
     , (801735,  21,    0.55) /* WeaponLength */
     , (801735,  22,    0.75) /* DamageVariance */
     , (801735,  29,     1.4) /* WeaponDefense */
     , (801735,  62,     1.4) /* WeaponOffense */
     , (801735,  63,      16) /* DamageMod */
     , (801735,  76,     0.7) /* Translucency */
     , (801735, 136,       3) /* CriticalMultiplier */
     , (801735, 147,       1) /* CriticalFrequency */
     , (801735, 152,       5) /* ElementalDamageMod */
	 , (801735,  156,    0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801735,   1, 'Purified Acid Hollow Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801735,   1,   33556258) /* Setup */
     , (801735,   3,  536870932) /* SoundTable */
     , (801735,   6,   67111919) /* PaletteBase */
     , (801735,   7,  268436380) /* ClothingBase */
     , (801735,   8,  100672905) /* Icon */
     , (801735,  22,  872415275) /* PhysicsEffectTable */
     , (801735,  37,         13) /* ItemSkillLimit - UnarmedCombat */
     , (801735,  52,  100676437) /* IconUnderlay */
	 , (801735,  55,       5368) /* ProcSpell - Nether Arc VII */;
