DELETE FROM `weenie` WHERE `class_Id` = 801738;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801738, 'Purified Piercing Hollow Axe', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801738,   1,          1) /* ItemType - MeleeWeapon */
     , (801738,   3,         39) /* PaletteTemplate - Black */
     , (801738,   5,        550) /* EncumbranceVal */
     , (801738,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801738,  16,          1) /* ItemUseable - No */
     , (801738,  18,          1) /* UiEffects - Magical */
     , (801738,  19,         10) /* Value */
     , (801738,  33,          1) /* Bonded - Bonded */
     , (801738,  44,       3000) /* Damage */
     , (801738,  45,       2) /* DamageType - Nether */
     , (801738,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801738,  47,          6) /* AttackType - Thrust, Slash */
     , (801738,  48,         44) /* WeaponSkill - Light */
     , (801738,  49,         15) /* WeaponTime */
     , (801738,  51,          1) /* CombatUse - Melee */
     , (801738,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801738, 106,        999) /* ItemSpellcraft */
     , (801738, 107,       1200) /* ItemCurMana */
     , (801738, 108,       1200) /* ItemMaxMana */ 
     , (801738, 114,          1) /* Attuned - Attuned */			
     , (801738, 151,          2) /* HookType - Wall */
     , (801738, 158,          7) /* WieldRequirements - Level */
     , (801738, 159,          1) /* WieldSkillType - Axe */
     , (801738, 160,        400) /* WieldDifficulty */
	 , (801738, 179,      16) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801738,  11, True ) /* IgnoreCollisions */
     , (801738,  13, True ) /* Ethereal */
     , (801738,  14, True ) /* GravityStatus */
     , (801738,  19, True ) /* Attackable */
     , (801738,  22, True ) /* Inscribable */
     , (801738,  65, True ) /* IgnoreMagicResist */
     , (801738,  66, True ) /* IgnoreMagicArmor */
     , (801738,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801738,   5,    -0.1) /* ManaRate */
     , (801738,  21,       1) /* WeaponLength */
     , (801738,  22,     0.5) /* DamageVariance */
     , (801738,  29,     1.4) /* WeaponDefense */
     , (801738,  62,     1.4) /* WeaponOffense */
     , (801738,  63,      16) /* DamageMod */
     , (801738,  76,     0.7) /* Translucency */
     , (801738, 136,       6) /* CriticalMultiplier */
     , (801738, 147,       1) /* CriticalFrequency */
     , (801738, 152,       5) /* ElementalDamageMod */
	 , (801738, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801738,   1, 'Purified Piercing Hollow Axe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801738,   1,   33556302) /* Setup */
     , (801738,   3,  536870932) /* SoundTable */
     , (801738,   6,   67111919) /* PaletteBase */
     , (801738,   7,  268435881) /* ClothingBase */
     , (801738,   8,  100670513) /* Icon */
     , (801738,  22,  872415275) /* PhysicsEffectTable */
     , (801738,  52,  100676443) /* IconUnderlay */
	 , (801738,  55,       5368) /* ProcSpell - Nether Arc VII */;
