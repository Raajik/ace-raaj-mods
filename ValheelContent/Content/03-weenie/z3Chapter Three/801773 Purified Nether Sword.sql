DELETE FROM `weenie` WHERE `class_Id` = 801773;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801773, 'ThoridsCursedBladeoftheNether', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801773,   1,          1) /* ItemType - MeleeWeapon */
     , (801773,   3,         39) /* PaletteTemplate - Black */
     , (801773,   5,        550) /* EncumbranceVal */
     , (801773,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801773,  16,          1) /* ItemUseable - No */
     , (801773,  18,          1) /* UiEffects - Magical */
     , (801773,  19,         10) /* Value */
     , (801773,  33,          1) /* Bonded - Bonded */
     , (801773,  45,       1024) /* DamageType - Nether */
     , (801773,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801773,  47,          6) /* AttackType - Thrust, Slash */
     , (801773,  48,         43) /* WeaponSkill - Sword */
     , (801773,  49,         35) /* WeaponTime */
     , (801773,  51,          1) /* CombatUse - Melee */
     , (801773,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801773, 106,        999) /* ItemSpellcraft */
     , (801773, 107,       1200) /* ItemCurMana */
     , (801773, 108,       1200) /* ItemMaxMana */ 
     , (801773, 114,          1) /* Attuned - Attuned */			
     , (801773, 151,          2) /* HookType - Wall */
     , (801773, 158,          1) /* WieldRequirements - Level */
     , (801773, 159,         43) /* WieldSkillType - Axe */
     , (801773, 160,        600) /* WieldDifficulty */
	 , (801773, 179,      16384) /* Imbued Effect - Critical Strike */
     , (801773, 292,          2) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801773,  11, True ) /* IgnoreCollisions */
     , (801773,  13, True ) /* Ethereal */
     , (801773,  14, True ) /* GravityStatus */
     , (801773,  19, True ) /* Attackable */
     , (801773,  22, True ) /* Inscribable */
     , (801773,  65, True ) /* IgnoreMagicResist */
     , (801773,  66, True ) /* IgnoreMagicArmor */
     , (801773,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801773,   5,    -0.1) /* ManaRate */
     , (801773,  21,       1) /* WeaponLength */
     , (801773,  22,     0.5) /* DamageVariance */
     , (801773,  29,     1.4) /* WeaponDefense */
     , (801773,  62,     1.4) /* WeaponOffense */
     , (801773,  63,      15) /* DamageMod */
     , (801773,  76,     0.7) /* Translucency */
     , (801773, 136,       6) /* CriticalMultiplier */
     , (801773, 147,       1) /* CriticalFrequency */
     , (801773, 152,       5) /* ElementalDamageMod */
	 , (801773, 156,     .75) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801773,   1, 'Thorid''s Cursed Blade of the Nether') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801773,   1,   33556262) /* Setup */
     , (801773,   3,  536870932) /* SoundTable */
     , (801773,   6,   67111919) /* PaletteBase */
     , (801773,   7,  268436385) /* ClothingBase */
     , (801773,   8,  100672945) /* Icon */
     , (801773,  22,  872415275) /* PhysicsEffectTable */
     , (801773,  37,         43) /* ItemSkillLimit - Sword */
     , (801773,  52,  100686604) /* IconUnderlay */
	 , (801773,  55,       5368) /* ProcSpell - Nether Arc VII */;
