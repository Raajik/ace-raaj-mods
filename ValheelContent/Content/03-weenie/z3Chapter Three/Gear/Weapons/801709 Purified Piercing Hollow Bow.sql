DELETE FROM `weenie` WHERE `class_Id` = 801709;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801709, 'Purified Piercing Hollow Bow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801709,   1,        256) /* ItemType - MissileWeapon */
     , (801709,   3,         14) /* PaletteTemplate - LootGenRed */
     , (801709,   5,        950) /* EncumbranceVal */
     , (801709,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (801709,  16,          1) /* ItemUseable - No */
     , (801709,  18,          1) /* UiEffects - Magical */
     , (801709,  19,         10) /* Value */
     , (801709,  33,          1) /* Bonded - Bonded */
     , (801709,  44,       2500) /* Damage */
     , (801709,  45,       2) /* DamageType - Nether */
     , (801709,  46,         16) /* DefaultCombatStyle - Bow */
     , (801709,  48,         47) /* WeaponSkill - Bow */
     , (801709,  49,         40) /* WeaponTime */
     , (801709,  50,          1) /* AmmoType - Arrow */
     , (801709,  51,          2) /* CombatUse - Missile */
     , (801709,  52,          2) /* ParentLocation - LeftHand */
     , (801709,  53,          3) /* PlacementPosition - LeftHand */
     , (801709,  60,        175) /* WeaponRange */
     , (801709,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801709, 106,        999) /* ItemSpellcraft */
     , (801709, 107,       1200) /* ItemCurMana */
     , (801709, 108,       1200) /* ItemMaxMana */
     , (801709, 114,          1) /* Attuned - Attuned */
     , (801709, 151,          2) /* HookType - Wall */
     , (801709, 158,          7) /* WieldRequirements - Level */
     , (801709, 159,         47) /* WieldSkillType - Axe */
     , (801709, 160,        400) /* WieldDifficulty */
	 , (801709, 179,      16) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801709,  11, True ) /* IgnoreCollisions */
     , (801709,  13, True ) /* Ethereal */
     , (801709,  14, True ) /* GravityStatus */
     , (801709,  19, True ) /* Attackable */
     , (801709,  22, True ) /* Inscribable */
     , (801709,  65, True ) /* IgnoreMagicResist */
     , (801709,  66, True ) /* IgnoreMagicArmor */
     , (801709,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801709,   5,    -0.1) /* ManaRate */
     , (801709,  26,    27.3) /* MaximumVelocity */
     , (801709,  29,     1.4) /* WeaponDefense */
     , (801709,  62,     1.4) /* WeaponOffense */
     , (801709,  63,      16) /* DamageMod */
     , (801709,  76,     0.7) /* Translucency */
     , (801709, 136,     3.5) /* CriticalMultiplier */
     , (801709, 147,       1) /* CriticalFrequency */
     , (801709, 152,       5) /* ElementalDamageMod */
	 , (801709, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801709,   1, 'Purified Piercing Hollow Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801709,   1,   33557729) /* Setup */
     , (801709,   3,  536870932) /* SoundTable */
     , (801709,   6,   67111919) /* PaletteBase */
     , (801709,   7,  268436394) /* ClothingBase */
     , (801709,   8,  100673010) /* Icon */
     , (801709,  22,  872415275) /* PhysicsEffectTable */
     , (801709,  37,          2) /* ItemSkillLimit - Bow */
     , (801709,  52,  100676443) /* IconUnderlay */
	 , (801709,  55,       5368) /* ProcSpell - Nether Arc VII */;
