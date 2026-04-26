DELETE FROM `weenie` WHERE `class_Id` = 801741;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801741, 'Purified Fire Hollow Axe', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801741,   1,          1) /* ItemType - MeleeWeapon */
     , (801741,   3,         39) /* PaletteTemplate - Black */
     , (801741,   5,        550) /* EncumbranceVal */
     , (801741,   9,    1048576) /* ValidLocations - MeleeWeapon */
     , (801741,  16,          1) /* ItemUseable - No */
     , (801741,  18,          1) /* UiEffects - Magical */
     , (801741,  19,         10) /* Value */
     , (801741,  33,          1) /* Bonded - Bonded */
     , (801741,  44,       3000) /* Damage */
     , (801741,  45,       16) /* DamageType - Nether */
     , (801741,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (801741,  47,          6) /* AttackType - Thrust, Slash */
     , (801741,  48,         44) /* WeaponSkill - Light */
     , (801741,  49,         15) /* WeaponTime */
     , (801741,  51,          1) /* CombatUse - Melee */
     , (801741,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801741, 106,        999) /* ItemSpellcraft */
     , (801741, 107,       1200) /* ItemCurMana */
     , (801741, 108,       1200) /* ItemMaxMana */ 
     , (801741, 114,          1) /* Attuned - Attuned */			
     , (801741, 151,          2) /* HookType - Wall */
     , (801741, 158,          7) /* WieldRequirements - Level */
     , (801741, 159,          1) /* WieldSkillType - Axe */
     , (801741, 160,        400) /* WieldDifficulty */
	 , (801741, 179,      512) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801741,  11, True ) /* IgnoreCollisions */
     , (801741,  13, True ) /* Ethereal */
     , (801741,  14, True ) /* GravityStatus */
     , (801741,  19, True ) /* Attackable */
     , (801741,  22, True ) /* Inscribable */
     , (801741,  65, True ) /* IgnoreMagicResist */
     , (801741,  66, True ) /* IgnoreMagicArmor */
     , (801741,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801741,   5,    -0.1) /* ManaRate */
     , (801741,  21,       1) /* WeaponLength */
     , (801741,  22,     0.5) /* DamageVariance */
     , (801741,  29,     1.4) /* WeaponDefense */
     , (801741,  62,     1.4) /* WeaponOffense */
     , (801741,  63,      16) /* DamageMod */
     , (801741,  76,     0.7) /* Translucency */
     , (801741, 136,       6) /* CriticalMultiplier */
     , (801741, 147,       1) /* CriticalFrequency */
     , (801741, 152,       5) /* ElementalDamageMod */
	 , (801741, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801741,   1, 'Purified Fire Hollow Axe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801741,   1,   33556302) /* Setup */
     , (801741,   3,  536870932) /* SoundTable */
     , (801741,   6,   67111919) /* PaletteBase */
     , (801741,   7,  268435881) /* ClothingBase */
     , (801741,   8,  100670513) /* Icon */
     , (801741,  22,  872415275) /* PhysicsEffectTable */
     , (801741,  52,  100676441) /* IconUnderlay */
	 , (801741,  55,       5368) /* ProcSpell - Nether Arc VII */;
