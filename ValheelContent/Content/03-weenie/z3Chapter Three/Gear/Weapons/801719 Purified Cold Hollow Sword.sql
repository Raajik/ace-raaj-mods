DELETE FROM `weenie` WHERE `class_Id` = 801719;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801719, 'purified Cold hollow sword', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801719,   1,          1) /* ItemType - MeleeWeapon */
     , (801719,   3,         39) /* PaletteTemplate - Black */
     , (801719,   5,        550) /* EncumbranceVal */
     , (801719,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801719,  16,          1) /* ItemUseable - No */
     , (801719,  18,          1) /* UiEffects - Magical */
     , (801719,  19,         10) /* Value */
     , (801719,  33,          1) /* Bonded - Bonded */
     , (801719,  44,       3000) /* Damage */
     , (801719,  45,       8) /* DamageType - Nether */
     , (801719,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801719,  47,          6) /* AttackType - Thrust, Slash */
     , (801719,  48,         45) /* WeaponSkill - Sword */
     , (801719,  49,         35) /* WeaponTime */
     , (801719,  51,          1) /* CombatUse - Melee */
     , (801719,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801719, 106,        999) /* ItemSpellcraft */
     , (801719, 107,       1200) /* ItemCurMana */
     , (801719, 108,       1200) /* ItemMaxMana */ 
     , (801719, 114,          1) /* Attuned - Attuned */			
     , (801719, 151,          2) /* HookType - Wall */
     , (801719, 158,          7) /* WieldRequirements - Level */
     , (801719, 159,          1) /* WieldSkillType - Axe */
     , (801719, 160,        400) /* WieldDifficulty */
	 , (801719, 179,      128) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801719,  11, True ) /* IgnoreCollisions */
     , (801719,  13, True ) /* Ethereal */
     , (801719,  14, True ) /* GravityStatus */
     , (801719,  19, True ) /* Attackable */
     , (801719,  22, True ) /* Inscribable */
     , (801719,  65, True ) /* IgnoreMagicResist */
     , (801719,  66, True ) /* IgnoreMagicArmor */
     , (801719,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801719,   5,    -0.1) /* ManaRate */
     , (801719,  21,       1) /* WeaponLength */
     , (801719,  22,     0.5) /* DamageVariance */
     , (801719,  29,     1.4) /* WeaponDefense */
     , (801719,  62,     1.4) /* WeaponOffense */
     , (801719,  63,      16) /* DamageMod */
     , (801719,  76,     0.7) /* Translucency */
     , (801719, 136,       6) /* CriticalMultiplier */
     , (801719, 147,       1) /* CriticalFrequency */
     , (801719, 152,       5) /* ElementalDamageMod */
	 , (801719, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801719,   1, 'Purified Cold Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801719,   1,   33556262) /* Setup */
     , (801719,   3,  536870932) /* SoundTable */
     , (801719,   6,   67111919) /* PaletteBase */
     , (801719,   7,  268436385) /* ClothingBase */
     , (801719,   8,  100672945) /* Icon */
     , (801719,  22,  872415275) /* PhysicsEffectTable */
     , (801719,  37,         11) /* ItemSkillLimit - Sword */
     , (801719,  52,  100676435) /* IconUnderlay */
	 , (801719,  55,       5368) /* ProcSpell - Nether Arc VII */;
