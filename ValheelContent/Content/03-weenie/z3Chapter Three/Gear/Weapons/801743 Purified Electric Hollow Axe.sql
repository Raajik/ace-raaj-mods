DELETE FROM `weenie` WHERE `class_Id` = 801743;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801743, 'Purified Electric Hollow Axe', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801743,   1,          1) /* ItemType - MeleeWeapon */
     , (801743,   3,         39) /* PaletteTemplate - Black */
     , (801743,   5,        550) /* EncumbranceVal */
     , (801743,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801743,  16,          1) /* ItemUseable - No */
     , (801743,  18,          1) /* UiEffects - Magical */
     , (801743,  19,         10) /* Value */
     , (801743,  33,          1) /* Bonded - Bonded */
     , (801743,  44,       3000) /* Damage */
     , (801743,  45,       64) /* DamageType - Nether */
     , (801743,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801743,  47,          6) /* AttackType - Thrust, Slash */
     , (801743,  48,         44) /* WeaponSkill - Light */
     , (801743,  49,         15) /* WeaponTime */
     , (801743,  51,          1) /* CombatUse - Melee */
     , (801743,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801743, 106,        999) /* ItemSpellcraft */
     , (801743, 107,       1200) /* ItemCurMana */
     , (801743, 108,       1200) /* ItemMaxMana */ 
     , (801743, 114,          1) /* Attuned - Attuned */			
     , (801743, 151,          2) /* HookType - Wall */
     , (801743, 158,          7) /* WieldRequirements - Level */
     , (801743, 159,          1) /* WieldSkillType - Axe */
     , (801743, 160,        400) /* WieldDifficulty */
	 , (801743, 179,      256) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801743,  11, True ) /* IgnoreCollisions */
     , (801743,  13, True ) /* Ethereal */
     , (801743,  14, True ) /* GravityStatus */
     , (801743,  19, True ) /* Attackable */
     , (801743,  22, True ) /* Inscribable */
     , (801743,  65, True ) /* IgnoreMagicResist */
     , (801743,  66, True ) /* IgnoreMagicArmor */
     , (801743,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801743,   5,    -0.1) /* ManaRate */
     , (801743,  21,       1) /* WeaponLength */
     , (801743,  22,     0.5) /* DamageVariance */
     , (801743,  29,     1.4) /* WeaponDefense */
     , (801743,  62,     1.4) /* WeaponOffense */
     , (801743,  63,      16) /* DamageMod */
     , (801743,  76,     0.7) /* Translucency */
     , (801743, 136,       6) /* CriticalMultiplier */
     , (801743, 147,       1) /* CriticalFrequency */
     , (801743, 152,       5) /* ElementalDamageMod */
	 , (801743, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801743,   1, 'Purified Electric Hollow Axe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801743,   1,   33556302) /* Setup */
     , (801743,   3,  536870932) /* SoundTable */
     , (801743,   6,   67111919) /* PaletteBase */
     , (801743,   7,  268435881) /* ClothingBase */
     , (801743,   8,  100670513) /* Icon */
     , (801743,  22,  872415275) /* PhysicsEffectTable */
     , (801743,  52,  100676436) /* IconUnderlay */
	 , (801743,  55,       5368) /* ProcSpell - Nether Arc VII */;
