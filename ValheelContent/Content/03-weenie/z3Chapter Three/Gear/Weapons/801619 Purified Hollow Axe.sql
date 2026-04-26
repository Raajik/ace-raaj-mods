DELETE FROM `weenie` WHERE `class_Id` = 801619;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801619, 'Purified Hollow Axe', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801619,   1,          1) /* ItemType - MeleeWeapon */
     , (801619,   3,         39) /* PaletteTemplate - Black */
     , (801619,   5,        550) /* EncumbranceVal */
     , (801619,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801619,  16,          1) /* ItemUseable - No */
     , (801619,  18,          1) /* UiEffects - Magical */
     , (801619,  19,         10) /* Value */
     , (801619,  33,          1) /* Bonded - Bonded */
     , (801619,  44,       3000) /* Damage */
     , (801619,  45,       1024) /* DamageType - Nether */
     , (801619,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801619,  47,          6) /* AttackType - Thrust, Slash */
     , (801619,  48,         44) /* WeaponSkill - Light */
     , (801619,  49,         15) /* WeaponTime */
     , (801619,  51,          1) /* CombatUse - Melee */
     , (801619,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801619, 106,        999) /* ItemSpellcraft */
     , (801619, 107,       1200) /* ItemCurMana */
     , (801619, 108,       1200) /* ItemMaxMana */ 
     , (801619, 114,          1) /* Attuned - Attuned */			
     , (801619, 151,          2) /* HookType - Wall */
     , (801619, 158,          7) /* WieldRequirements - Level */
     , (801619, 159,          1) /* WieldSkillType - Axe */
     , (801619, 160,        400) /* WieldDifficulty */
	 , (801619, 179,      16384) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801619,  11, True ) /* IgnoreCollisions */
     , (801619,  13, True ) /* Ethereal */
     , (801619,  14, True ) /* GravityStatus */
     , (801619,  19, True ) /* Attackable */
     , (801619,  22, True ) /* Inscribable */
     , (801619,  65, True ) /* IgnoreMagicResist */
     , (801619,  66, True ) /* IgnoreMagicArmor */
     , (801619,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801619,   5,    -0.1) /* ManaRate */
     , (801619,  21,       1) /* WeaponLength */
     , (801619,  22,     0.5) /* DamageVariance */
     , (801619,  29,     1.4) /* WeaponDefense */
     , (801619,  62,     1.4) /* WeaponOffense */
     , (801619,  63,      16) /* DamageMod */
     , (801619,  76,     0.7) /* Translucency */
     , (801619, 136,       6) /* CriticalMultiplier */
     , (801619, 147,       1) /* CriticalFrequency */
     , (801619, 152,       5) /* ElementalDamageMod */
	 , (801619, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801619,   1, 'Purified Hollow Axe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801619,   1,   33556302) /* Setup */
     , (801619,   3,  536870932) /* SoundTable */
     , (801619,   6,   67111919) /* PaletteBase */
     , (801619,   7,  268435881) /* ClothingBase */
     , (801619,   8,  100670513) /* Icon */
     , (801619,  22,  872415275) /* PhysicsEffectTable */
	 , (801619,  55,       5368) /* ProcSpell - Nether Arc VII */;
