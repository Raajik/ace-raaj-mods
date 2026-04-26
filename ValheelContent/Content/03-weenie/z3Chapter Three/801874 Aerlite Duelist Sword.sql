DELETE FROM `weenie` WHERE `class_Id` = 801874;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801874, 'Aerlite Duelist Sword', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801874,   1,          1) /* ItemType - MeleeWeapon */
     , (801874,   3,         39) /* PaletteTemplate - Black */
     , (801874,   5,        550) /* EncumbranceVal */
     , (801874,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801874,  16,          1) /* ItemUseable - No */
     , (801874,  18,          1) /* UiEffects - Magical */
     , (801874,  19,         10) /* Value */
     , (801874,  33,          1) /* Bonded - Bonded */
     , (801874,  44,        50) /* Damage */
     , (801874,  45,         16) /* DamageType - Nether */
     , (801874,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801874,  47,          6) /* AttackType - Thrust, Slash */
     , (801874,  48,         45) /* WeaponSkill - Sword */
     , (801874,  49,         35) /* WeaponTime */
     , (801874,  51,          1) /* CombatUse - Melee */
     , (801874,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801874, 106,        999) /* ItemSpellcraft */
     , (801874, 107,       1200) /* ItemCurMana */
     , (801874, 108,       1200) /* ItemMaxMana */ 
     , (801874, 114,          1) /* Attuned - Attuned */			
     , (801874, 151,          2) /* HookType - Wall */
     , (801874, 158,          7) /* WieldRequirements - Level */
     , (801874, 159,          1) /* WieldSkillType - Axe */
     , (801874, 160,        400) /* WieldDifficulty */
	 , (801874, 179,        512) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801874,  11, True ) /* IgnoreCollisions */
     , (801874,  13, True ) /* Ethereal */
     , (801874,  14, True ) /* GravityStatus */
     , (801874,  19, True ) /* Attackable */
     , (801874,  22, True ) /* Inscribable */
     , (801874,  65, True ) /* IgnoreMagicResist */
     , (801874,  66, True ) /* IgnoreMagicArmor */
     , (801874,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801874,   5,    -0.1) /* ManaRate */
     , (801874,  21,       1) /* WeaponLength */
     , (801874,  22,     0.5) /* DamageVariance */
     , (801874,  29,     1.4) /* WeaponDefense */
     , (801874,  62,     1.4) /* WeaponOffense */
     , (801874,  63,      2) /* DamageMod */
     , (801874,  76,     0.7) /* Translucency */
     , (801874, 136,       1.2) /* CriticalMultiplier */
     , (801874, 147,       0.15) /* CriticalFrequency */
     , (801874, 152,       1.2) /* ElementalDamageMod */
	 , (801874, 156,      .05) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801874,   1, 'Aerlite Duelist Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801874,   1,   33556262) /* Setup */
     , (801874,   3,  536870932) /* SoundTable */
     , (801874,   6,   67111919) /* PaletteBase */
     , (801874,   7,  268436385) /* ClothingBase */
     , (801874,   8,  100672945) /* Icon */
     , (801874,  22,  872415275) /* PhysicsEffectTable */
     , (801874,  37,         11) /* ItemSkillLimit - Sword */
     , (801874,  52,  100676441) /* IconUnderlay */
	 , (801874,  55,       5368) /* ProcSpell - Nether Arc VII */;
