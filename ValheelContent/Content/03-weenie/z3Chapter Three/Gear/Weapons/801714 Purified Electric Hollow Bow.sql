DELETE FROM `weenie` WHERE `class_Id` = 801714;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801714, 'Purified Electric Hollow Bow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801714,   1,        256) /* ItemType - MissileWeapon */
     , (801714,   3,         14) /* PaletteTemplate - LootGenRed */
     , (801714,   5,        950) /* EncumbranceVal */
     , (801714,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (801714,  16,          1) /* ItemUseable - No */
     , (801714,  18,          1) /* UiEffects - Magical */
     , (801714,  19,         10) /* Value */
     , (801714,  33,          1) /* Bonded - Bonded */
     , (801714,  44,       2500) /* Damage */
     , (801714,  45,       64) /* DamageType - Nether */
     , (801714,  46,         16) /* DefaultCombatStyle - Bow */
     , (801714,  48,         47) /* WeaponSkill - Bow */
     , (801714,  49,         40) /* WeaponTime */
     , (801714,  50,          1) /* AmmoType - Arrow */
     , (801714,  51,          2) /* CombatUse - Missile */
     , (801714,  52,          2) /* ParentLocation - LeftHand */
     , (801714,  53,          3) /* PlacementPosition - LeftHand */
     , (801714,  60,        175) /* WeaponRange */
     , (801714,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801714, 106,        999) /* ItemSpellcraft */
     , (801714, 107,       1200) /* ItemCurMana */
     , (801714, 108,       1200) /* ItemMaxMana */
     , (801714, 114,          1) /* Attuned - Attuned */
     , (801714, 151,          2) /* HookType - Wall */
     , (801714, 158,          7) /* WieldRequirements - Level */
     , (801714, 159,         47) /* WieldSkillType - Axe */
     , (801714, 160,        400) /* WieldDifficulty */
	 , (801714, 179,      256) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801714,  11, True ) /* IgnoreCollisions */
     , (801714,  13, True ) /* Ethereal */
     , (801714,  14, True ) /* GravityStatus */
     , (801714,  19, True ) /* Attackable */
     , (801714,  22, True ) /* Inscribable */
     , (801714,  65, True ) /* IgnoreMagicResist */
     , (801714,  66, True ) /* IgnoreMagicArmor */
     , (801714,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801714,   5,    -0.1) /* ManaRate */
     , (801714,  26,    27.3) /* MaximumVelocity */
     , (801714,  29,     1.4) /* WeaponDefense */
     , (801714,  62,     1.4) /* WeaponOffense */
     , (801714,  63,      16) /* DamageMod */
     , (801714,  76,     0.7) /* Translucency */
     , (801714, 136,     3.5) /* CriticalMultiplier */
     , (801714, 147,       1) /* CriticalFrequency */
     , (801714, 152,       5) /* ElementalDamageMod */
	 , (801714, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801714,   1, 'Purified Electric Hollow Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801714,   1,   33557729) /* Setup */
     , (801714,   3,  536870932) /* SoundTable */
     , (801714,   6,   67111919) /* PaletteBase */
     , (801714,   7,  268436394) /* ClothingBase */
     , (801714,   8,  100673010) /* Icon */
     , (801714,  22,  872415275) /* PhysicsEffectTable */
     , (801714,  37,          2) /* ItemSkillLimit - Bow */
     , (801714,  52,  100676436) /* IconUnderlay */
	 , (801714,  55,       5368) /* ProcSpell - Nether Arc VII */;
