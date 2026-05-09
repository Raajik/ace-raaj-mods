DELETE FROM `weenie` WHERE `class_Id` = 801737;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801737, 'Purified Slashing Hollow Axe', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801737,   1,          1) /* ItemType - MeleeWeapon */
     , (801737,   3,         39) /* PaletteTemplate - Black */
     , (801737,   5,        550) /* EncumbranceVal */
     , (801737,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801737,  16,          1) /* ItemUseable - No */
     , (801737,  18,          1) /* UiEffects - Magical */
     , (801737,  19,         10) /* Value */
     , (801737,  33,          1) /* Bonded - Bonded */
     , (801737,  44,       3000) /* Damage */
     , (801737,  45,       1) /* DamageType - Nether */
     , (801737,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801737,  47,          6) /* AttackType - Thrust, Slash */
     , (801737,  48,         44) /* WeaponSkill - Light */
     , (801737,  49,         15) /* WeaponTime */
     , (801737,  51,          1) /* CombatUse - Melee */
     , (801737,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801737, 106,        999) /* ItemSpellcraft */
     , (801737, 107,       1200) /* ItemCurMana */
     , (801737, 108,       1200) /* ItemMaxMana */ 
     , (801737, 114,          1) /* Attuned - Attuned */			
     , (801737, 151,          2) /* HookType - Wall */
     , (801737, 158,          7) /* WieldRequirements - Level */
     , (801737, 159,          1) /* WieldSkillType - Axe */
     , (801737, 160,        400) /* WieldDifficulty */
	 , (801737, 179,      8) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801737,  11, True ) /* IgnoreCollisions */
     , (801737,  13, True ) /* Ethereal */
     , (801737,  14, True ) /* GravityStatus */
     , (801737,  19, True ) /* Attackable */
     , (801737,  22, True ) /* Inscribable */
     , (801737,  65, True ) /* IgnoreMagicResist */
     , (801737,  66, True ) /* IgnoreMagicArmor */
     , (801737,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801737,   5,    -0.1) /* ManaRate */
     , (801737,  21,       1) /* WeaponLength */
     , (801737,  22,     0.5) /* DamageVariance */
     , (801737,  29,     1.4) /* WeaponDefense */
     , (801737,  62,     1.4) /* WeaponOffense */
     , (801737,  63,      16) /* DamageMod */
     , (801737,  76,     0.7) /* Translucency */
     , (801737, 136,       6) /* CriticalMultiplier */
     , (801737, 147,       1) /* CriticalFrequency */
     , (801737, 152,       5) /* ElementalDamageMod */
	 , (801737, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801737,   1, 'Purified Hollow Axe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801737,   1,   33556302) /* Setup */
     , (801737,   3,  536870932) /* SoundTable */
     , (801737,   6,   67111919) /* PaletteBase */
     , (801737,   7,  268435881) /* ClothingBase */
     , (801737,   8,  100670513) /* Icon */
     , (801737,  22,  872415275) /* PhysicsEffectTable */
     , (801737,  52,  100676444) /* IconUnderlay */
	 , (801737,  55,       5368) /* ProcSpell - Nether Arc VII */;
