DELETE FROM `weenie` WHERE `class_Id` = 801989;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801989, 'SwordMenhir', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801989,   1,          1) /* ItemType - MeleeWeapon */
     , (801989,   3,         39) /* PaletteTemplate - Black */
     , (801989,   5,        550) /* EncumbranceVal */
     , (801989,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801989,  16,          1) /* ItemUseable - No */
     , (801989,  18,          1) /* UiEffects - Magical */
     , (801989,  19,         10) /* Value */
     , (801989,  33,          1) /* Bonded - Bonded */
     , (801989,  39,        1.8) /* DefaultScale */
     , (801989,  44,         50) /* Damage */
     , (801989,  45,         16) /* DamageType - Nether */
     , (801989,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801989,  47,          6) /* AttackType - Thrust, Slash */
     , (801989,  48,         45) /* WeaponSkill - Sword */
     , (801989,  49,         35) /* WeaponTime */
     , (801989,  51,          1) /* CombatUse - Melee */
     , (801989,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801989, 106,        999) /* ItemSpellcraft */
     , (801989, 107,       1200) /* ItemCurMana */
     , (801989, 108,       1200) /* ItemMaxMana */ 
     , (801989, 114,          1) /* Attuned - Attuned */			
     , (801989, 151,          2) /* HookType - Wall */
     , (801989, 158,          7) /* WieldRequirements - Level */
     , (801989, 159,          1) /* WieldSkillType - Axe */
     , (801989, 160,        400) /* WieldDifficulty */
	 , (801989, 179,        512) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801989,  11, True ) /* IgnoreCollisions */
     , (801989,  13, True ) /* Ethereal */
     , (801989,  14, True ) /* GravityStatus */
     , (801989,  19, True ) /* Attackable */
     , (801989,  22, True ) /* Inscribable */
     , (801989,  65, True ) /* IgnoreMagicResist */
     , (801989,  66, True ) /* IgnoreMagicArmor */
     , (801989,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801989,   5,    -0.1) /* ManaRate */
     , (801989,  21,       1) /* WeaponLength */
     , (801989,  22,     0.5) /* DamageVariance */
     , (801989,  29,     1.4) /* WeaponDefense */
     , (801989,  62,     1.4) /* WeaponOffense */
     , (801989,  63,       2) /* DamageMod */
     , (801989,  76,     0.7) /* Translucency */
     , (801989, 136,     1.2) /* CriticalMultiplier */
     , (801989, 147,    0.15) /* CriticalFrequency */
     , (801989, 152,     1.2) /* ElementalDamageMod */
	 , (801989, 156,     .15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801989,   1, 'Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801989,   1,   33556262) /* Setup */
     , (801989,   3,  536870932) /* SoundTable */
     , (801989,   6,   67111919) /* PaletteBase */
     , (801989,   7,  268436385) /* ClothingBase */
     , (801989,   8,  100672945) /* Icon */
     , (801989,  22,  872415275) /* PhysicsEffectTable */
     , (801989,  37,         11) /* ItemSkillLimit - Sword */
     , (801989,  52,  100676441) /* IconUnderlay */
	 , (801989,  55,       5368) /* ProcSpell - Nether Arc VII */;
