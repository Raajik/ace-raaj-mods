DELETE FROM `weenie` WHERE `class_Id` = 801711;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801711, 'Purified Cold Hollow Bow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801711,   1,        256) /* ItemType - MissileWeapon */
     , (801711,   3,         14) /* PaletteTemplate - LootGenRed */
     , (801711,   5,        950) /* EncumbranceVal */
     , (801711,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (801711,  16,          1) /* ItemUseable - No */
     , (801711,  18,          1) /* UiEffects - Magical */
     , (801711,  19,         10) /* Value */
     , (801711,  33,          1) /* Bonded - Bonded */
     , (801711,  44,       2500) /* Damage */
     , (801711,  45,       8) /* DamageType - Nether */
     , (801711,  46,         16) /* DefaultCombatStyle - Bow */
     , (801711,  48,         47) /* WeaponSkill - Bow */
     , (801711,  49,         40) /* WeaponTime */
     , (801711,  50,          1) /* AmmoType - Arrow */
     , (801711,  51,          2) /* CombatUse - Missile */
     , (801711,  52,          2) /* ParentLocation - LeftHand */
     , (801711,  53,          3) /* PlacementPosition - LeftHand */
     , (801711,  60,        175) /* WeaponRange */
     , (801711,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801711, 106,        999) /* ItemSpellcraft */
     , (801711, 107,       1200) /* ItemCurMana */
     , (801711, 108,       1200) /* ItemMaxMana */
     , (801711, 114,          1) /* Attuned - Attuned */
     , (801711, 151,          2) /* HookType - Wall */
     , (801711, 158,          7) /* WieldRequirements - Level */
     , (801711, 159,         47) /* WieldSkillType - Axe */
     , (801711, 160,        400) /* WieldDifficulty */
	 , (801711, 179,      128) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801711,  11, True ) /* IgnoreCollisions */
     , (801711,  13, True ) /* Ethereal */
     , (801711,  14, True ) /* GravityStatus */
     , (801711,  19, True ) /* Attackable */
     , (801711,  22, True ) /* Inscribable */
     , (801711,  65, True ) /* IgnoreMagicResist */
     , (801711,  66, True ) /* IgnoreMagicArmor */
     , (801711,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801711,   5,    -0.1) /* ManaRate */
     , (801711,  26,    27.3) /* MaximumVelocity */
     , (801711,  29,     1.4) /* WeaponDefense */
     , (801711,  62,     1.4) /* WeaponOffense */
     , (801711,  63,      16) /* DamageMod */
     , (801711,  76,     0.7) /* Translucency */
     , (801711, 136,     3.5) /* CriticalMultiplier */
     , (801711, 147,       1) /* CriticalFrequency */
     , (801711, 152,       5) /* ElementalDamageMod */
	 , (801711, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801711,   1, 'Purified Cold Hollow Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801711,   1,   33557729) /* Setup */
     , (801711,   3,  536870932) /* SoundTable */
     , (801711,   6,   67111919) /* PaletteBase */
     , (801711,   7,  268436394) /* ClothingBase */
     , (801711,   8,  100673010) /* Icon */
     , (801711,  22,  872415275) /* PhysicsEffectTable */
     , (801711,  37,          2) /* ItemSkillLimit - Bow */
     , (801711,  52,  100676435) /* IconUnderlay */
	 , (801711,  55,       5368) /* ProcSpell - Nether Arc VII */;
