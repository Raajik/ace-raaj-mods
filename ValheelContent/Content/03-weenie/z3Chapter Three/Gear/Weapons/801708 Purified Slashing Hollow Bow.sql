DELETE FROM `weenie` WHERE `class_Id` = 801708;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801708, 'Purified Slashing Hollow Bow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801708,   1,        256) /* ItemType - MissileWeapon */
     , (801708,   3,         14) /* PaletteTemplate - LootGenRed */
     , (801708,   5,        950) /* EncumbranceVal */
     , (801708,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (801708,  16,          1) /* ItemUseable - No */
     , (801708,  18,          1) /* UiEffects - Magical */
     , (801708,  19,         10) /* Value */
     , (801708,  33,          1) /* Bonded - Bonded */
     , (801708,  44,       2500) /* Damage */
     , (801708,  45,       1) /* DamageType - Nether */
     , (801708,  46,         16) /* DefaultCombatStyle - Bow */
     , (801708,  48,         47) /* WeaponSkill - Bow */
     , (801708,  49,         40) /* WeaponTime */
     , (801708,  50,          1) /* AmmoType - Arrow */
     , (801708,  51,          2) /* CombatUse - Missile */
     , (801708,  52,          2) /* ParentLocation - LeftHand */
     , (801708,  53,          3) /* PlacementPosition - LeftHand */
     , (801708,  60,        175) /* WeaponRange */
     , (801708,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801708, 106,        999) /* ItemSpellcraft */
     , (801708, 107,       1200) /* ItemCurMana */
     , (801708, 108,       1200) /* ItemMaxMana */
     , (801708, 114,          1) /* Attuned - Attuned */
     , (801708, 151,          2) /* HookType - Wall */
     , (801708, 158,          7) /* WieldRequirements - Level */
     , (801708, 159,         47) /* WieldSkillType - Axe */
     , (801708, 160,        400) /* WieldDifficulty */
	 , (801708, 179,      8) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801708,  11, True ) /* IgnoreCollisions */
     , (801708,  13, True ) /* Ethereal */
     , (801708,  14, True ) /* GravityStatus */
     , (801708,  19, True ) /* Attackable */
     , (801708,  22, True ) /* Inscribable */
     , (801708,  65, True ) /* IgnoreMagicResist */
     , (801708,  66, True ) /* IgnoreMagicArmor */
     , (801708,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801708,   5,    -0.1) /* ManaRate */
     , (801708,  26,    27.3) /* MaximumVelocity */
     , (801708,  29,     1.4) /* WeaponDefense */
     , (801708,  62,     1.4) /* WeaponOffense */
     , (801708,  63,      16) /* DamageMod */
     , (801708,  76,     0.7) /* Translucency */
     , (801708, 136,     3.5) /* CriticalMultiplier */
     , (801708, 147,       1) /* CriticalFrequency */
     , (801708, 152,       5) /* ElementalDamageMod */
	 , (801708, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801708,   1, 'Purified Slashing Hollow Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801708,   1,   33557729) /* Setup */
     , (801708,   3,  536870932) /* SoundTable */
     , (801708,   6,   67111919) /* PaletteBase */
     , (801708,   7,  268436394) /* ClothingBase */
     , (801708,   8,  100673010) /* Icon */
     , (801708,  22,  872415275) /* PhysicsEffectTable */
     , (801708,  37,          2) /* ItemSkillLimit - Bow */
     , (801708,  52,  100676444) /* IconUnderlay */
	 , (801708,  55,       5368) /* ProcSpell - Nether Arc VII */;
