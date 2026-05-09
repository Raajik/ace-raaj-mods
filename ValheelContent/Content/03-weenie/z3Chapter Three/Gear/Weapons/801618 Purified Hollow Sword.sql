DELETE FROM `weenie` WHERE `class_Id` = 801618;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801618, 'purified hollow sword', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801618,   1,          1) /* ItemType - MeleeWeapon */
     , (801618,   3,         39) /* PaletteTemplate - Black */
     , (801618,   5,        550) /* EncumbranceVal */
     , (801618,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801618,  16,          1) /* ItemUseable - No */
     , (801618,  18,          1) /* UiEffects - Magical */
     , (801618,  19,         10) /* Value */
     , (801618,  33,          1) /* Bonded - Bonded */
     , (801618,  44,       3000) /* Damage */
     , (801618,  45,       1024) /* DamageType - Nether */
     , (801618,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801618,  47,          6) /* AttackType - Thrust, Slash */
     , (801618,  48,         45) /* WeaponSkill - Sword */
     , (801618,  49,         35) /* WeaponTime */
     , (801618,  51,          1) /* CombatUse - Melee */
     , (801618,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801618, 106,        999) /* ItemSpellcraft */
     , (801618, 107,       1200) /* ItemCurMana */
     , (801618, 108,       1200) /* ItemMaxMana */ 
     , (801618, 114,          1) /* Attuned - Attuned */			
     , (801618, 151,          2) /* HookType - Wall */
     , (801618, 158,          7) /* WieldRequirements - Level */
     , (801618, 159,          1) /* WieldSkillType - Axe */
     , (801618, 160,        400) /* WieldDifficulty */
	 , (801618, 179,      16384) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801618,  11, True ) /* IgnoreCollisions */
     , (801618,  13, True ) /* Ethereal */
     , (801618,  14, True ) /* GravityStatus */
     , (801618,  19, True ) /* Attackable */
     , (801618,  22, True ) /* Inscribable */
     , (801618,  65, True ) /* IgnoreMagicResist */
     , (801618,  66, True ) /* IgnoreMagicArmor */
     , (801618,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801618,   5,    -0.1) /* ManaRate */
     , (801618,  21,       1) /* WeaponLength */
     , (801618,  22,     0.5) /* DamageVariance */
     , (801618,  29,     1.4) /* WeaponDefense */
     , (801618,  62,     1.4) /* WeaponOffense */
     , (801618,  63,      16) /* DamageMod */
     , (801618,  76,     0.7) /* Translucency */
     , (801618, 136,       6) /* CriticalMultiplier */
     , (801618, 147,       1) /* CriticalFrequency */
     , (801618, 152,       5) /* ElementalDamageMod */
	 , (801618, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801618,   1, 'Purified Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801618,   1,   33556262) /* Setup */
     , (801618,   3,  536870932) /* SoundTable */
     , (801618,   6,   67111919) /* PaletteBase */
     , (801618,   7,  268436385) /* ClothingBase */
     , (801618,   8,  100672945) /* Icon */
     , (801618,  22,  872415275) /* PhysicsEffectTable */
     , (801618,  37,         11) /* ItemSkillLimit - Sword */
	 , (801618,  55,       5368) /* ProcSpell - Nether Arc VII */;
