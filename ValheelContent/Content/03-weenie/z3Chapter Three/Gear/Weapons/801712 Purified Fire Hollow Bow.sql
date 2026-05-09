DELETE FROM `weenie` WHERE `class_Id` = 801712;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801712, 'Purified Fire Hollow Bow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801712,   1,        256) /* ItemType - MissileWeapon */
     , (801712,   3,         14) /* PaletteTemplate - LootGenRed */
     , (801712,   5,        950) /* EncumbranceVal */
     , (801712,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (801712,  16,          1) /* ItemUseable - No */
     , (801712,  18,          1) /* UiEffects - Magical */
     , (801712,  19,         10) /* Value */
     , (801712,  33,          1) /* Bonded - Bonded */
     , (801712,  44,       2500) /* Damage */
     , (801712,  45,       16) /* DamageType - Nether */
     , (801712,  46,         16) /* DefaultCombatStyle - Bow */
     , (801712,  48,         47) /* WeaponSkill - Bow */
     , (801712,  49,         40) /* WeaponTime */
     , (801712,  50,          1) /* AmmoType - Arrow */
     , (801712,  51,          2) /* CombatUse - Missile */
     , (801712,  52,          2) /* ParentLocation - LeftHand */
     , (801712,  53,          3) /* PlacementPosition - LeftHand */
     , (801712,  60,        175) /* WeaponRange */
     , (801712,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801712, 106,        999) /* ItemSpellcraft */
     , (801712, 107,       1200) /* ItemCurMana */
     , (801712, 108,       1200) /* ItemMaxMana */
     , (801712, 114,          1) /* Attuned - Attuned */
     , (801712, 151,          2) /* HookType - Wall */
     , (801712, 158,          7) /* WieldRequirements - Level */
     , (801712, 159,         47) /* WieldSkillType - Axe */
     , (801712, 160,        400) /* WieldDifficulty */
	 , (801712, 179,      512) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801712,  11, True ) /* IgnoreCollisions */
     , (801712,  13, True ) /* Ethereal */
     , (801712,  14, True ) /* GravityStatus */
     , (801712,  19, True ) /* Attackable */
     , (801712,  22, True ) /* Inscribable */
     , (801712,  65, True ) /* IgnoreMagicResist */
     , (801712,  66, True ) /* IgnoreMagicArmor */
     , (801712,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801712,   5,    -0.1) /* ManaRate */
     , (801712,  26,    27.3) /* MaximumVelocity */
     , (801712,  29,     1.4) /* WeaponDefense */
     , (801712,  62,     1.4) /* WeaponOffense */
     , (801712,  63,      16) /* DamageMod */
     , (801712,  76,     0.7) /* Translucency */
     , (801712, 136,     3.5) /* CriticalMultiplier */
     , (801712, 147,       1) /* CriticalFrequency */
     , (801712, 152,       5) /* ElementalDamageMod */
	 , (801712, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801712,   1, 'Purified Fire Hollow Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801712,   1,   33557729) /* Setup */
     , (801712,   3,  536870932) /* SoundTable */
     , (801712,   6,   67111919) /* PaletteBase */
     , (801712,   7,  268436394) /* ClothingBase */
     , (801712,   8,  100673010) /* Icon */
     , (801712,  22,  872415275) /* PhysicsEffectTable */
     , (801712,  37,          2) /* ItemSkillLimit - Bow */
     , (801712,  52,  100676441) /* IconUnderlay */
	 , (801712,  55,       5368) /* ProcSpell - Nether Arc VII */;
