DELETE FROM `weenie` WHERE `class_Id` = 801740;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801740, 'Purified Cold Hollow Axe', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801740,   1,          1) /* ItemType - MeleeWeapon */
     , (801740,   3,         39) /* PaletteTemplate - Black */
     , (801740,   5,        550) /* EncumbranceVal */
     , (801740,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801740,  16,          1) /* ItemUseable - No */
     , (801740,  18,          1) /* UiEffects - Magical */
     , (801740,  19,         10) /* Value */
     , (801740,  33,          1) /* Bonded - Bonded */
     , (801740,  44,       3000) /* Damage */
     , (801740,  45,       8) /* DamageType - Nether */
     , (801740,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801740,  47,          6) /* AttackType - Thrust, Slash */
     , (801740,  48,         44) /* WeaponSkill - Light */
     , (801740,  49,         15) /* WeaponTime */
     , (801740,  51,          1) /* CombatUse - Melee */
     , (801740,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801740, 106,        999) /* ItemSpellcraft */
     , (801740, 107,       1200) /* ItemCurMana */
     , (801740, 108,       1200) /* ItemMaxMana */ 
     , (801740, 114,          1) /* Attuned - Attuned */			
     , (801740, 151,          2) /* HookType - Wall */
     , (801740, 158,          7) /* WieldRequirements - Level */
     , (801740, 159,          1) /* WieldSkillType - Axe */
     , (801740, 160,        400) /* WieldDifficulty */
	 , (801740, 179,      128) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801740,  11, True ) /* IgnoreCollisions */
     , (801740,  13, True ) /* Ethereal */
     , (801740,  14, True ) /* GravityStatus */
     , (801740,  19, True ) /* Attackable */
     , (801740,  22, True ) /* Inscribable */
     , (801740,  65, True ) /* IgnoreMagicResist */
     , (801740,  66, True ) /* IgnoreMagicArmor */
     , (801740,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801740,   5,    -0.1) /* ManaRate */
     , (801740,  21,       1) /* WeaponLength */
     , (801740,  22,     0.5) /* DamageVariance */
     , (801740,  29,     1.4) /* WeaponDefense */
     , (801740,  62,     1.4) /* WeaponOffense */
     , (801740,  63,      16) /* DamageMod */
     , (801740,  76,     0.7) /* Translucency */
     , (801740, 136,       6) /* CriticalMultiplier */
     , (801740, 147,       1) /* CriticalFrequency */
     , (801740, 152,       5) /* ElementalDamageMod */
	 , (801740, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801740,   1, 'Purified Cold Hollow Axe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801740,   1,   33556302) /* Setup */
     , (801740,   3,  536870932) /* SoundTable */
     , (801740,   6,   67111919) /* PaletteBase */
     , (801740,   7,  268435881) /* ClothingBase */
     , (801740,   8,  100670513) /* Icon */
     , (801740,  22,  872415275) /* PhysicsEffectTable */
     , (801740,  52,  100676435) /* IconUnderlay */
	 , (801740,  55,       5368) /* ProcSpell - Nether Arc VII */;
