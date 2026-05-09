DELETE FROM `weenie` WHERE `class_Id` = 801617;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801617, 'Purified Hollow Bow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801617,   1,        256) /* ItemType - MissileWeapon */
     , (801617,   3,         14) /* PaletteTemplate - LootGenRed */
     , (801617,   5,        950) /* EncumbranceVal */
     , (801617,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (801617,  16,          1) /* ItemUseable - No */
     , (801617,  18,          1) /* UiEffects - Magical */
     , (801617,  19,         10) /* Value */
     , (801617,  33,          1) /* Bonded - Bonded */
     , (801617,  44,       2500) /* Damage */
     , (801617,  45,       1024) /* DamageType - Nether */
     , (801617,  46,         16) /* DefaultCombatStyle - Bow */
     , (801617,  48,         47) /* WeaponSkill - Bow */
     , (801617,  49,         40) /* WeaponTime */
     , (801617,  50,          1) /* AmmoType - Arrow */
     , (801617,  51,          2) /* CombatUse - Missile */
     , (801617,  52,          2) /* ParentLocation - LeftHand */
     , (801617,  53,          3) /* PlacementPosition - LeftHand */
     , (801617,  60,        175) /* WeaponRange */
     , (801617,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801617, 106,        999) /* ItemSpellcraft */
     , (801617, 107,       1200) /* ItemCurMana */
     , (801617, 108,       1200) /* ItemMaxMana */
     , (801617, 114,          1) /* Attuned - Attuned */
     , (801617, 151,          2) /* HookType - Wall */
     , (801617, 158,          7) /* WieldRequirements - Level */
     , (801617, 159,         47) /* WieldSkillType - Axe */
     , (801617, 160,        400) /* WieldDifficulty */
	 , (801617, 179,      16384) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801617,  11, True ) /* IgnoreCollisions */
     , (801617,  13, True ) /* Ethereal */
     , (801617,  14, True ) /* GravityStatus */
     , (801617,  19, True ) /* Attackable */
     , (801617,  22, True ) /* Inscribable */
     , (801617,  65, True ) /* IgnoreMagicResist */
     , (801617,  66, True ) /* IgnoreMagicArmor */
     , (801617,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801617,   5,    -0.1) /* ManaRate */
     , (801617,  26,    27.3) /* MaximumVelocity */
     , (801617,  29,     1.4) /* WeaponDefense */
     , (801617,  62,     1.4) /* WeaponOffense */
     , (801617,  63,      16) /* DamageMod */
     , (801617,  76,     0.7) /* Translucency */
     , (801617, 136,     3.5) /* CriticalMultiplier */
     , (801617, 147,       1) /* CriticalFrequency */
     , (801617, 152,       5) /* ElementalDamageMod */
	 , (801617, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801617,   1, 'Purified Hollow Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801617,   1,   33557729) /* Setup */
     , (801617,   3,  536870932) /* SoundTable */
     , (801617,   6,   67111919) /* PaletteBase */
     , (801617,   7,  268436394) /* ClothingBase */
     , (801617,   8,  100673010) /* Icon */
     , (801617,  22,  872415275) /* PhysicsEffectTable */
     , (801617,  37,          2) /* ItemSkillLimit - Bow */
	 , (801617,  55,       5368) /* ProcSpell - Nether Arc VII */;
