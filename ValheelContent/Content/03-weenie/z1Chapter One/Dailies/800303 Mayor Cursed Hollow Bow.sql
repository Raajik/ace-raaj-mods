DELETE FROM `weenie` WHERE `class_Id` = 801392;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801392, 'invisiblebowforturret', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801392,   1,        256) /* ItemType - MissileWeapon */
     , (801392,   3,         14) /* PaletteTemplate - LootGenRed */
     , (801392,   5,        950) /* EncumbranceVal */
     , (801392,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (801392,  16,          1) /* ItemUseable - No */
     , (801392,  18,          1) /* UiEffects - Magical */
     , (801392,  19,         10) /* Value */
     , (801392,  33,          1) /* Bonded - Bonded */
     , (801392,  44,         24) /* Damage */
     , (801392,  45,       1024) /* DamageType - Nether */
     , (801392,  46,         16) /* DefaultCombatStyle - Bow */
     , (801392,  48,          2) /* WeaponSkill - Bow */
     , (801392,  49,         40) /* WeaponTime */
     , (801392,  50,          1) /* AmmoType - Arrow */
     , (801392,  51,          2) /* CombatUse - Missile */
     , (801392,  52,          2) /* ParentLocation - LeftHand */
     , (801392,  53,          3) /* PlacementPosition - LeftHand */
     , (801392,  60,        175) /* WeaponRange */
     , (801392,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801392, 106,        999) /* ItemSpellcraft */
     , (801392, 107,       1200) /* ItemCurMana */
     , (801392, 108,       1200) /* ItemMaxMana */
     , (801392, 114,          1) /* Attuned - Attuned */
     , (801392, 151,          2) /* HookType - Wall */
     , (801392, 158,          7) /* WieldRequirements - Level */
     , (801392, 159,          1) /* WieldSkillType - Axe */
     , (801392, 160,        275) /* WieldDifficulty */
	 , (801392, 179,          1) /* Imbued Effect - Critical Strike */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801392,  11, True ) /* IgnoreCollisions */
     , (801392,  13, True ) /* Ethereal */
     , (801392,  14, True ) /* GravityStatus */
     , (801392,  19, True ) /* Attackable */
     , (801392,  22, True ) /* Inscribable */
     , (801392,  65, True ) /* IgnoreMagicResist */
     , (801392,  66, True ) /* IgnoreMagicArmor */
     , (801392,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801392,   5,    -0.1) /* ManaRate */
     , (801392,  26,    27.3) /* MaximumVelocity */
     , (801392,  29,       1) /* WeaponDefense */
     , (801392,  62,       1) /* WeaponOffense */
     , (801392,  63,       3) /* DamageMod */
     , (801392,  76,     0.1) /* Translucency */
	 , (801392, 156,      .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801392,   1, 'Turret Projectile Launcher') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801392,   1,   33557729) /* Setup */
     , (801392,   3,  536870932) /* SoundTable */
     , (801392,   6,   67111919) /* PaletteBase */
     , (801392,   7,  268436394) /* ClothingBase */
     , (801392,   8,  100673010) /* Icon */
     , (801392,  22,  872415275) /* PhysicsEffectTable */
     , (801392,  37,          2) /* ItemSkillLimit - Bow */
	 , (801392,  55,       5348) /* ProcSpell - Nether Streak */;

