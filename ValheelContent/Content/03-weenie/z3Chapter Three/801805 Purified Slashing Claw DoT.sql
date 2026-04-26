DELETE FROM `weenie` WHERE `class_Id` = 801805;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801805, 'Purified Slashing Hollow Claw DoT', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801805,   1,          1) /* ItemType - MeleeWeapon */
     , (801805,   3,         39) /* PaletteTemplate - Black */
     , (801805,   5,        125) /* EncumbranceVal */
     , (801805,   8,        110) /* Mass */
     , (801805,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801805,  16,          1) /* ItemUseable - No */
     , (801805,  18,          1) /* UiEffects - Magical */
     , (801805,  19,         10) /* Value */
     , (801805,  33,          1) /* Bonded - Bonded */
     , (801805,  44,       1000) /* Damage */
     , (801805,  45,          1) /* DamageType - Nether */
     , (801805,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (801805,  47,          1) /* AttackType - Punch */
     , (801805,  48,         46) /* WeaponSkill - UnarmedCombat */
     , (801805,  49,         12) /* WeaponTime */
     , (801805,  51,          1) /* CombatUse - Melee */
     , (801805,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801805, 106,        999) /* ItemSpellcraft */
     , (801805, 107,       1200) /* ItemCurMana */
     , (801805, 108,       1200) /* ItemMaxMana */
     , (801805, 114,          1) /* Attuned - Attuned */
     , (801805, 115,        325) /* ItemSkillLevelLimit */
     , (801805, 150,        103) /* HookPlacement - Hook */
     , (801805, 151,          2) /* HookType - Wall */
     , (801805, 158,          7) /* WieldRequirements - Level */
     , (801805, 159,         46) /* WieldSkillType - Finesse Weapons */
     , (801805, 160,        400) /* WieldDifficulty */
	 , (801805, 179,          8) /* Imbued Effect - Critical Strike */
	 , (801805, 343,       50000) /* Damage Over Time */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801805,  11, True ) /* IgnoreCollisions */
     , (801805,  13, True ) /* Ethereal */
     , (801805,  14, True ) /* GravityStatus */
     , (801805,  19, True ) /* Attackable */
     , (801805,  22, True ) /* Inscribable */
     , (801805,  65, True ) /* IgnoreMagicResist */
     , (801805,  66, True ) /* IgnoreMagicArmor */
     , (801805	,69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801805,   5,    -0.1) /* ManaRate */
     , (801805,  21,    0.55) /* WeaponLength */
     , (801805,  22,    0.75) /* DamageVariance */
     , (801805,  29,     1.4) /* WeaponDefense */
     , (801805,  62,     1.4) /* WeaponOffense */
     , (801805,  63,      16) /* DamageMod */
     , (801805,  76,     0.7) /* Translucency */
     , (801805, 136,       3) /* CriticalMultiplier */
     , (801805, 147,       1) /* CriticalFrequency */
     , (801805, 152,       5) /* ElementalDamageMod */
	 , (801805,  156,    0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801805,   1, 'Purified Slashing Hollow Claw DoT') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801805,   1,   33556258) /* Setup */
     , (801805,   3,  536870932) /* SoundTable */
     , (801805,   6,   67111919) /* PaletteBase */
     , (801805,   7,  268436380) /* ClothingBase */
     , (801805,   8,  100672905) /* Icon */
     , (801805,  22,  872415275) /* PhysicsEffectTable */
     , (801805,  37,         13) /* ItemSkillLimit - UnarmedCombat */
     , (801805,  52,  100676444) /* IconUnderlay */
	 , (801805,  55,       5368) /* ProcSpell - Nether Arc VII */;
