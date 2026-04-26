DELETE FROM `weenie` WHERE `class_Id` = 801713;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801713, 'Purified Acid Hollow Bow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801713,   1,        256) /* ItemType - MissileWeapon */
     , (801713,   3,         14) /* PaletteTemplate - LootGenRed */
     , (801713,   5,        950) /* EncumbranceVal */
     , (801713,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (801713,  16,          1) /* ItemUseable - No */
     , (801713,  18,          1) /* UiEffects - Magical */
     , (801713,  19,         10) /* Value */
     , (801713,  33,          1) /* Bonded - Bonded */
     , (801713,  44,       2500) /* Damage */
     , (801713,  45,       32) /* DamageType - Nether */
     , (801713,  46,         16) /* DefaultCombatStyle - Bow */
     , (801713,  48,         47) /* WeaponSkill - Bow */
     , (801713,  49,         40) /* WeaponTime */
     , (801713,  50,          1) /* AmmoType - Arrow */
     , (801713,  51,          2) /* CombatUse - Missile */
     , (801713,  52,          2) /* ParentLocation - LeftHand */
     , (801713,  53,          3) /* PlacementPosition - LeftHand */
     , (801713,  60,        175) /* WeaponRange */
     , (801713,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801713, 106,        999) /* ItemSpellcraft */
     , (801713, 107,       1200) /* ItemCurMana */
     , (801713, 108,       1200) /* ItemMaxMana */
     , (801713, 114,          1) /* Attuned - Attuned */
     , (801713, 151,          2) /* HookType - Wall */
     , (801713, 158,          7) /* WieldRequirements - Level */
     , (801713, 159,         47) /* WieldSkillType - Axe */
     , (801713, 160,        400) /* WieldDifficulty */
	 , (801713, 179,      64) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801713,  11, True ) /* IgnoreCollisions */
     , (801713,  13, True ) /* Ethereal */
     , (801713,  14, True ) /* GravityStatus */
     , (801713,  19, True ) /* Attackable */
     , (801713,  22, True ) /* Inscribable */
     , (801713,  65, True ) /* IgnoreMagicResist */
     , (801713,  66, True ) /* IgnoreMagicArmor */
     , (801713,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801713,   5,    -0.1) /* ManaRate */
     , (801713,  26,    27.3) /* MaximumVelocity */
     , (801713,  29,     1.4) /* WeaponDefense */
     , (801713,  62,     1.4) /* WeaponOffense */
     , (801713,  63,      16) /* DamageMod */
     , (801713,  76,     0.7) /* Translucency */
     , (801713, 136,     3.5) /* CriticalMultiplier */
     , (801713, 147,       1) /* CriticalFrequency */
     , (801713, 152,       5) /* ElementalDamageMod */
	 , (801713, 156,      .5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801713,   1, 'Purified Acid Hollow Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801713,   1,   33557729) /* Setup */
     , (801713,   3,  536870932) /* SoundTable */
     , (801713,   6,   67111919) /* PaletteBase */
     , (801713,   7,  268436394) /* ClothingBase */
     , (801713,   8,  100673010) /* Icon */
     , (801713,  22,  872415275) /* PhysicsEffectTable */
     , (801713,  37,          2) /* ItemSkillLimit - Bow */
     , (801713,  52,  100676437) /* IconUnderlay */
	 , (801713,  55,       5368) /* ProcSpell - Nether Arc VII */;
