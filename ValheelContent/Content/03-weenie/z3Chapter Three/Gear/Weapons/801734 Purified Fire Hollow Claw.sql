DELETE FROM `weenie` WHERE `class_Id` = 801734;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801734, 'Purified Fire Hollow Claw', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801734,   1,          1) /* ItemType - MeleeWeapon */
     , (801734,   3,         39) /* PaletteTemplate - Black */
     , (801734,   5,        125) /* EncumbranceVal */
     , (801734,   8,        110) /* Mass */
     , (801734,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801734,  16,          1) /* ItemUseable - No */
     , (801734,  18,          1) /* UiEffects - Magical */
     , (801734,  19,         10) /* Value */
     , (801734,  33,          1) /* Bonded - Bonded */
     , (801734,  44,       1000) /* Damage */
     , (801734,  45,       16) /* DamageType - Nether */
     , (801734,  46,          1) /* DefaultCombatStyle - Unarmed */
     , (801734,  47,          1) /* AttackType - Punch */
     , (801734,  48,         46) /* WeaponSkill - UnarmedCombat */
     , (801734,  49,         12) /* WeaponTime */
     , (801734,  51,          1) /* CombatUse - Melee */
     , (801734,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801734, 106,        999) /* ItemSpellcraft */
     , (801734, 107,       1200) /* ItemCurMana */
     , (801734, 108,       1200) /* ItemMaxMana */
     , (801734, 114,          1) /* Attuned - Attuned */
     , (801734, 115,        325) /* ItemSkillLevelLimit */
     , (801734, 150,        103) /* HookPlacement - Hook */
     , (801734, 151,          2) /* HookType - Wall */
     , (801734, 158,          7) /* WieldRequirements - Level */
     , (801734, 159,         46) /* WieldSkillType - Finesse Weapons */
     , (801734, 160,        400) /* WieldDifficulty */
	 , (801734, 179,      512) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801734,  11, True ) /* IgnoreCollisions */
     , (801734,  13, True ) /* Ethereal */
     , (801734,  14, True ) /* GravityStatus */
     , (801734,  19, True ) /* Attackable */
     , (801734,  22, True ) /* Inscribable */
     , (801734,  65, True ) /* IgnoreMagicResist */
     , (801734,  66, True ) /* IgnoreMagicArmor */
     , (801734	,69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801734,   5,    -0.1) /* ManaRate */
     , (801734,  21,    0.55) /* WeaponLength */
     , (801734,  22,    0.75) /* DamageVariance */
     , (801734,  29,     1.4) /* WeaponDefense */
     , (801734,  62,     1.4) /* WeaponOffense */
     , (801734,  63,      16) /* DamageMod */
     , (801734,  76,     0.7) /* Translucency */
     , (801734, 136,       3) /* CriticalMultiplier */
     , (801734, 147,       1) /* CriticalFrequency */
     , (801734, 152,       5) /* ElementalDamageMod */
	 , (801734,  156,    0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801734,   1, 'Purified Fire Hollow Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801734,   1,   33556258) /* Setup */
     , (801734,   3,  536870932) /* SoundTable */
     , (801734,   6,   67111919) /* PaletteBase */
     , (801734,   7,  268436380) /* ClothingBase */
     , (801734,   8,  100672905) /* Icon */
     , (801734,  22,  872415275) /* PhysicsEffectTable */
     , (801734,  37,         13) /* ItemSkillLimit - UnarmedCombat */
     , (801734,  52,  100676441) /* IconUnderlay */
	 , (801734,  55,       5368) /* ProcSpell - Nether Arc VII */;
