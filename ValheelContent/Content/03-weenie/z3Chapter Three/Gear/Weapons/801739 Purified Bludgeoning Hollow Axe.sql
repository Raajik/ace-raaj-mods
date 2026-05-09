DELETE FROM `weenie` WHERE `class_Id` = 801739;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801739, 'Purified Bludgeoning Hollow Axe', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801739,   1,          1) /* ItemType - MeleeWeapon */
     , (801739,   3,         39) /* PaletteTemplate - Black */
     , (801739,   5,        550) /* EncumbranceVal */
     , (801739,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801739,  16,          1) /* ItemUseable - No */
     , (801739,  18,          1) /* UiEffects - Magical */
     , (801739,  19,         10) /* Value */
     , (801739,  33,          1) /* Bonded - Bonded */
     , (801739,  44,       3000) /* Damage */
     , (801739,  45,       4) /* DamageType - Nether */
     , (801739,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801739,  47,          6) /* AttackType - Thrust, Slash */
     , (801739,  48,         44) /* WeaponSkill - Light */
     , (801739,  49,         15) /* WeaponTime */
     , (801739,  51,          1) /* CombatUse - Melee */
     , (801739,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801739, 106,        999) /* ItemSpellcraft */
     , (801739, 107,       1200) /* ItemCurMana */
     , (801739, 108,       1200) /* ItemMaxMana */ 
     , (801739, 114,          1) /* Attuned - Attuned */			
     , (801739, 151,          2) /* HookType - Wall */
     , (801739, 158,          7) /* WieldRequirements - Level */
     , (801739, 159,          1) /* WieldSkillType - Axe */
     , (801739, 160,        400) /* WieldDifficulty */
	 , (801739, 179,      32) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801739,  11, True ) /* IgnoreCollisions */
     , (801739,  13, True ) /* Ethereal */
     , (801739,  14, True ) /* GravityStatus */
     , (801739,  19, True ) /* Attackable */
     , (801739,  22, True ) /* Inscribable */
     , (801739,  65, True ) /* IgnoreMagicResist */
     , (801739,  66, True ) /* IgnoreMagicArmor */
     , (801739,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801739,   5,    -0.1) /* ManaRate */
     , (801739,  21,       1) /* WeaponLength */
     , (801739,  22,     0.5) /* DamageVariance */
     , (801739,  29,     1.4) /* WeaponDefense */
     , (801739,  62,     1.4) /* WeaponOffense */
     , (801739,  63,      16) /* DamageMod */
     , (801739,  76,     0.7) /* Translucency */
     , (801739, 136,       6) /* CriticalMultiplier */
     , (801739, 147,       1) /* CriticalFrequency */
     , (801739, 152,       5) /* ElementalDamageMod */
	 , (801739, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801739,   1, 'Purified Bludgeoning Hollow Axe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801739,   1,   33556302) /* Setup */
     , (801739,   3,  536870932) /* SoundTable */
     , (801739,   6,   67111919) /* PaletteBase */
     , (801739,   7,  268435881) /* ClothingBase */
     , (801739,   8,  100670513) /* Icon */
     , (801739,  22,  872415275) /* PhysicsEffectTable */
     , (801739,  52,  100676442) /* IconUnderlay */
	 , (801739,  55,       5368) /* ProcSpell - Nether Arc VII */;
