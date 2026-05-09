DELETE FROM `weenie` WHERE `class_Id` = 801716;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801716, 'purified Slashing hollow sword', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801716,   1,          1) /* ItemType - MeleeWeapon */
     , (801716,   3,         39) /* PaletteTemplate - Black */
     , (801716,   5,        550) /* EncumbranceVal */
     , (801716,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801716,  16,          1) /* ItemUseable - No */
     , (801716,  18,          1) /* UiEffects - Magical */
     , (801716,  19,         10) /* Value */
     , (801716,  33,          1) /* Bonded - Bonded */
     , (801716,  44,       3000) /* Damage */
     , (801716,  45,       1) /* DamageType - Nether */
     , (801716,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801716,  47,          6) /* AttackType - Thrust, Slash */
     , (801716,  48,         45) /* WeaponSkill - Sword */
     , (801716,  49,         35) /* WeaponTime */
     , (801716,  51,          1) /* CombatUse - Melee */
     , (801716,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801716, 106,        999) /* ItemSpellcraft */
     , (801716, 107,       1200) /* ItemCurMana */
     , (801716, 108,       1200) /* ItemMaxMana */ 
     , (801716, 114,          1) /* Attuned - Attuned */			
     , (801716, 151,          2) /* HookType - Wall */
     , (801716, 158,          7) /* WieldRequirements - Level */
     , (801716, 159,          1) /* WieldSkillType - Axe */
     , (801716, 160,        400) /* WieldDifficulty */
	 , (801716, 179,      8) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801716,  11, True ) /* IgnoreCollisions */
     , (801716,  13, True ) /* Ethereal */
     , (801716,  14, True ) /* GravityStatus */
     , (801716,  19, True ) /* Attackable */
     , (801716,  22, True ) /* Inscribable */
     , (801716,  65, True ) /* IgnoreMagicResist */
     , (801716,  66, True ) /* IgnoreMagicArmor */
     , (801716,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801716,   5,    -0.1) /* ManaRate */
     , (801716,  21,       1) /* WeaponLength */
     , (801716,  22,     0.5) /* DamageVariance */
     , (801716,  29,     1.4) /* WeaponDefense */
     , (801716,  62,     1.4) /* WeaponOffense */
     , (801716,  63,      16) /* DamageMod */
     , (801716,  76,     0.7) /* Translucency */
     , (801716, 136,       6) /* CriticalMultiplier */
     , (801716, 147,       1) /* CriticalFrequency */
     , (801716, 152,       5) /* ElementalDamageMod */
	 , (801716, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801716,   1, 'Purified Slashing Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801716,   1,   33556262) /* Setup */
     , (801716,   3,  536870932) /* SoundTable */
     , (801716,   6,   67111919) /* PaletteBase */
     , (801716,   7,  268436385) /* ClothingBase */
     , (801716,   8,  100672945) /* Icon */
     , (801716,  22,  872415275) /* PhysicsEffectTable */
     , (801716,  37,         11) /* ItemSkillLimit - Sword */
     , (801716,  52,  100676444) /* IconUnderlay */
	 , (801716,  55,       5368) /* ProcSpell - Nether Arc VII */;
