DELETE FROM `weenie` WHERE `class_Id` = 801710;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801710, 'Purified Bludgeoning Hollow Bow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801710,   1,        256) /* ItemType - MissileWeapon */
     , (801710,   3,         14) /* PaletteTemplate - LootGenRed */
     , (801710,   5,        950) /* EncumbranceVal */
     , (801710,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (801710,  16,          1) /* ItemUseable - No */
     , (801710,  18,          1) /* UiEffects - Magical */
     , (801710,  19,         10) /* Value */
     , (801710,  33,          1) /* Bonded - Bonded */
     , (801710,  44,       2500) /* Damage */
     , (801710,  45,       4) /* DamageType - Nether */
     , (801710,  46,         16) /* DefaultCombatStyle - Bow */
     , (801710,  48,         47) /* WeaponSkill - Bow */
     , (801710,  49,         40) /* WeaponTime */
     , (801710,  50,          1) /* AmmoType - Arrow */
     , (801710,  51,          2) /* CombatUse - Missile */
     , (801710,  52,          2) /* ParentLocation - LeftHand */
     , (801710,  53,          3) /* PlacementPosition - LeftHand */
     , (801710,  60,        175) /* WeaponRange */
     , (801710,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801710, 106,        999) /* ItemSpellcraft */
     , (801710, 107,       1200) /* ItemCurMana */
     , (801710, 108,       1200) /* ItemMaxMana */
     , (801710, 114,          1) /* Attuned - Attuned */
     , (801710, 151,          2) /* HookType - Wall */
     , (801710, 158,          7) /* WieldRequirements - Level */
     , (801710, 159,         47) /* WieldSkillType - Axe */
     , (801710, 160,        400) /* WieldDifficulty */
	 , (801710, 179,      32) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801710,  11, True ) /* IgnoreCollisions */
     , (801710,  13, True ) /* Ethereal */
     , (801710,  14, True ) /* GravityStatus */
     , (801710,  19, True ) /* Attackable */
     , (801710,  22, True ) /* Inscribable */
     , (801710,  65, True ) /* IgnoreMagicResist */
     , (801710,  66, True ) /* IgnoreMagicArmor */
     , (801710,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801710,   5,    -0.1) /* ManaRate */
     , (801710,  26,    27.3) /* MaximumVelocity */
     , (801710,  29,     1.4) /* WeaponDefense */
     , (801710,  62,     1.4) /* WeaponOffense */
     , (801710,  63,      16) /* DamageMod */
     , (801710,  76,     0.7) /* Translucency */
     , (801710, 136,     3.5) /* CriticalMultiplier */
     , (801710, 147,       1) /* CriticalFrequency */
     , (801710, 152,       5) /* ElementalDamageMod */
	 , (801710, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801710,   1, 'Purified Bludgeoning Hollow Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801710,   1,   33557729) /* Setup */
     , (801710,   3,  536870932) /* SoundTable */
     , (801710,   6,   67111919) /* PaletteBase */
     , (801710,   7,  268436394) /* ClothingBase */
     , (801710,   8,  100673010) /* Icon */
     , (801710,  22,  872415275) /* PhysicsEffectTable */
     , (801710,  37,          2) /* ItemSkillLimit - Bow */
     , (801710,  52,  100676442) /* IconUnderlay */
	 , (801710,  55,       5368) /* ProcSpell - Nether Arc VII */;
