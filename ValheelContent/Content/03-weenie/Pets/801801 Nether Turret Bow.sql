DELETE FROM `weenie` WHERE `class_Id` = 801801;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801801, 'NetherTurretBow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801801,   1,        256) /* ItemType - MissileWeapon */
     , (801801,   3,         14) /* PaletteTemplate - Red */
     , (801801,   5,        950) /* EncumbranceVal */
     , (801801,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (801801,  16,          1) /* ItemUseable - No */
     , (801801,  18,          1) /* UiEffects - Magical */
     , (801801,  19,         10) /* Value */
     , (801801,  33,          1) /* Bonded - Bonded */
     , (801801,  44,       3000) /* Damage */
     , (801801,  45,       1024) /* DamageType - Nether */
     , (801801,  46,         16) /* DefaultCombatStyle - Bow */
     , (801801,  48,         43) /* WeaponSkill - VoidMagic */
     , (801801,  49,          1) /* WeaponTime */
     , (801801,  50,          1) /* AmmoType - Arrow */
     , (801801,  51,          2) /* CombatUse - Missile */
     , (801801,  52,          2) /* ParentLocation - LeftHand */
     , (801801,  53,          3) /* PlacementPosition - LeftHand */
     , (801801,  60,        175) /* WeaponRange */
     , (801801,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801801, 106,        999) /* ItemSpellcraft */
     , (801801, 107,       1200) /* ItemCurMana */
     , (801801, 108,       1200) /* ItemMaxMana */
     , (801801, 114,          1) /* Attuned - Attuned */
     , (801801, 151,          2) /* HookType - Wall */
     , (801801, 158,          1) /* WieldRequirements - Skill */
     , (801801, 159,         43) /* WieldSkillType - VoidMagic */
     , (801801, 160,        600) /* WieldDifficulty */
     , (801801, 179,      16384) /* ImbuedEffect - NetherRending */
     , (801801, 292,          2) /* Cleaving */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801801,  11, True ) /* IgnoreCollisions */
     , (801801,  13, True ) /* Ethereal */
     , (801801,  14, True ) /* GravityStatus */
     , (801801,  19, True ) /* Attackable */
     , (801801,  22, True ) /* Inscribable */
     , (801801,  65, True ) /* IgnoreMagicResist */
     , (801801,  66, True ) /* IgnoreMagicArmor */
     , (801801,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801801,   5,    -0.1) /* ManaRate */
     , (801801,  26,    27.3) /* MaximumVelocity */
     , (801801,  29,     1.4) /* WeaponDefense */
     , (801801,  62,     1.4) /* WeaponOffense */
     , (801801,  63,      16) /* DamageMod */
     , (801801,  76,       1) /* Translucency */
     , (801801, 136,     3.5) /* CriticalMultiplier */
     , (801801, 147,       1) /* CriticalFrequency */
     , (801801, 152,       5) /* ElementalDamageMod */
     , (801801, 156,       1) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801801,   1, 'NetherTurretBow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801801,   1,   33557729) /* Setup */
     , (801801,   3,  536870932) /* SoundTable */
     , (801801,   6,   67111919) /* PaletteBase */
     , (801801,   7,  268436394) /* ClothingBase */
     , (801801,   8,  100673010) /* Icon */
     , (801801,  22,  872415275) /* PhysicsEffectTable */
     , (801801,  37,         43) /* ItemSkillLimit - VoidMagic */
     , (801801,  52,  100686604) /* IconUnderlay */
     , (801801,  55,       5368) /* ProcSpell - Incantation of Nether Arc */;
