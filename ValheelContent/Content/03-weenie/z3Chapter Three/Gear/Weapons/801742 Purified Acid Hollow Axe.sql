DELETE FROM `weenie` WHERE `class_Id` = 801742;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801742, 'Purified Acid Hollow Axe', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801742,   1,          1) /* ItemType - MeleeWeapon */
     , (801742,   3,         39) /* PaletteTemplate - Black */
     , (801742,   5,        550) /* EncumbranceVal */
     , (801742,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801742,  16,          1) /* ItemUseable - No */
     , (801742,  18,          1) /* UiEffects - Magical */
     , (801742,  19,         10) /* Value */
     , (801742,  33,          1) /* Bonded - Bonded */
     , (801742,  44,       3000) /* Damage */
     , (801742,  45,       32) /* DamageType - Nether */
     , (801742,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801742,  47,          6) /* AttackType - Thrust, Slash */
     , (801742,  48,         44) /* WeaponSkill - Light */
     , (801742,  49,         15) /* WeaponTime */
     , (801742,  51,          1) /* CombatUse - Melee */
     , (801742,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801742, 106,        999) /* ItemSpellcraft */
     , (801742, 107,       1200) /* ItemCurMana */
     , (801742, 108,       1200) /* ItemMaxMana */ 
     , (801742, 114,          1) /* Attuned - Attuned */			
     , (801742, 151,          2) /* HookType - Wall */
     , (801742, 158,          7) /* WieldRequirements - Level */
     , (801742, 159,          1) /* WieldSkillType - Axe */
     , (801742, 160,        400) /* WieldDifficulty */
	 , (801742, 179,      64) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801742,  11, True ) /* IgnoreCollisions */
     , (801742,  13, True ) /* Ethereal */
     , (801742,  14, True ) /* GravityStatus */
     , (801742,  19, True ) /* Attackable */
     , (801742,  22, True ) /* Inscribable */
     , (801742,  65, True ) /* IgnoreMagicResist */
     , (801742,  66, True ) /* IgnoreMagicArmor */
     , (801742,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801742,   5,    -0.1) /* ManaRate */
     , (801742,  21,       1) /* WeaponLength */
     , (801742,  22,     0.5) /* DamageVariance */
     , (801742,  29,     1.4) /* WeaponDefense */
     , (801742,  62,     1.4) /* WeaponOffense */
     , (801742,  63,      16) /* DamageMod */
     , (801742,  76,     0.7) /* Translucency */
     , (801742, 136,       6) /* CriticalMultiplier */
     , (801742, 147,       1) /* CriticalFrequency */
     , (801742, 152,       5) /* ElementalDamageMod */
	 , (801742, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801742,   1, 'Purified Acid Hollow Axe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801742,   1,   33556302) /* Setup */
     , (801742,   3,  536870932) /* SoundTable */
     , (801742,   6,   67111919) /* PaletteBase */
     , (801742,   7,  268435881) /* ClothingBase */
     , (801742,   8,  100670513) /* Icon */
     , (801742,  22,  872415275) /* PhysicsEffectTable */
     , (801742,  52,  100676437) /* IconUnderlay */
	 , (801742,  55,       5368) /* ProcSpell - Nether Arc VII */;
