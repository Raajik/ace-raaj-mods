DELETE FROM `weenie` WHERE `class_Id` = 801774;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801774, 'ThoridsCursedBowoftheNether', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801774,   1,        256) /* ItemType - MissileWeapon */
     , (801774,   3,         14) /* PaletteTemplate - LootGenRed */
     , (801774,   5,        950) /* EncumbranceVal */
     , (801774,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (801774,  16,          1) /* ItemUseable - No */
     , (801774,  18,          1) /* UiEffects - Magical */
     , (801774,  19,         10) /* Value */
     , (801774,  33,          1) /* Bonded - Bonded */
     , (801774,  44,       3000) /* Damage */
     , (801774,  45,       1024) /* DamageType - Nether */
     , (801774,  46,         16) /* DefaultCombatStyle - Bow */
     , (801774,  48,         43) /* WeaponSkill - Bow */
     , (801774,  49,         40) /* WeaponTime */
     , (801774,  50,          1) /* AmmoType - Arrow */
     , (801774,  51,          2) /* CombatUse - Missile */
     , (801774,  52,          2) /* ParentLocation - LeftHand */
     , (801774,  53,          3) /* PlacementPosition - LeftHand */
     , (801774,  60,        175) /* WeaponRange */
     , (801774,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801774, 106,        999) /* ItemSpellcraft */
     , (801774, 107,       1200) /* ItemCurMana */
     , (801774, 108,       1200) /* ItemMaxMana */
     , (801774, 114,          1) /* Attuned - Attuned */
     , (801774, 151,          2) /* HookType - Wall */
     , (801774, 158,          1) /* WieldRequirements - Skill Type */
     , (801774, 159,         43) /* WieldSkillType - Void */
     , (801774, 160,        600) /* WieldDifficulty */
	 , (801774, 179,      16384) /* Imbued Effect - Nether */
     , (801774, 292,          2) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801774,  11, True ) /* IgnoreCollisions */
     , (801774,  13, True ) /* Ethereal */
     , (801774,  14, True ) /* GravityStatus */
     , (801774,  19, True ) /* Attackable */
     , (801774,  22, True ) /* Inscribable */
     , (801774,  65, True ) /* IgnoreMagicResist */
     , (801774,  66, True ) /* IgnoreMagicArmor */
     , (801774,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801774,   5,    -0.1) /* ManaRate */
     , (801774,  26,    27.3) /* MaximumVelocity */
     , (801774,  29,     1.4) /* WeaponDefense */
     , (801774,  62,     1.4) /* WeaponOffense */
     , (801774,  63,      16) /* DamageMod */
     , (801774,  76,     0.7) /* Translucency */
     , (801774, 136,     3.5) /* CriticalMultiplier */
     , (801774, 147,       1) /* CriticalFrequency */
     , (801774, 152,       5) /* ElementalDamageMod */
	 , (801774, 156,     .75) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801774,   1, 'Thorid''s Cursed Bow of the Nether') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801774,   1,   33557729) /* Setup */
     , (801774,   3,  536870932) /* SoundTable */
     , (801774,   6,   67111919) /* PaletteBase */
     , (801774,   7,  268436394) /* ClothingBase */
     , (801774,   8,  100673010) /* Icon */
     , (801774,  22,  872415275) /* PhysicsEffectTable */
     , (801774,  37,         43) /* ItemSkillLimit - Bow */
     , (801774,  52,  100686604) /* IconUnderlay */
	 , (801774,  55,       5368) /* ProcSpell - Nether Arc VII */;
