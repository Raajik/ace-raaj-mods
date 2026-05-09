DELETE FROM `weenie` WHERE `class_Id` = 800052;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800052, 'cursed hollow bow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800052,   1,        256) /* ItemType - MissileWeapon */
     , (800052,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800052,   5,        950) /* EncumbranceVal */
     , (800052,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800052,  16,          1) /* ItemUseable - No */
     , (800052,  18,          1) /* UiEffects - Magical */
     , (800052,  19,          1) /* Value */
     , (800052,  33,          1) /* Bonded - Bonded */
     , (800052,  44,         24) /* Damage */
     , (800052,  45,          2147483647) /* DamageType - Slash, Pierce */
     , (800052,  46,         16) /* DefaultCombatStyle - Bow */
     , (800052,  48,          2) /* WeaponSkill - Bow */
     , (800052,  49,         40) /* WeaponTime */
     , (800052,  50,          1) /* AmmoType - Arrow */
     , (800052,  51,          2) /* CombatUse - Missile */
     , (800052,  52,          2) /* ParentLocation - LeftHand */
     , (800052,  53,          3) /* PlacementPosition - LeftHand */
     , (800052,  60,        175) /* WeaponRange */
     , (800052,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800052, 106,        999) /* ItemSpellcraft */
     , (800052, 107,       1200) /* ItemCurMana */
     , (800052, 108,       1200) /* ItemMaxMana */
     , (800052, 114,          1) /* Attuned - Attuned */
     , (800052, 151,          2) /* HookType - Wall */
     , (800052, 158,          7) /* WieldRequirements - Level */
     , (800052, 159,          1) /* WieldSkillType - Axe */
     , (800052, 160,        275) /* WieldDifficulty */
	 , (800052, 179,         -2147483648) /* Imbued Effect - Phantasmal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800052,  11, True ) /* IgnoreCollisions */
     , (800052,  13, True ) /* Ethereal */
     , (800052,  14, True ) /* GravityStatus */
     , (800052,  19, True ) /* Attackable */
     , (800052,  22, True ) /* Inscribable */
     , (800052,  65, True ) /* IgnoreMagicResist */
     , (800052,  66, True ) /* IgnoreMagicArmor */
     , (800052,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800052,   5,    -0.1) /* ManaRate */
     , (800052,  26,    27.3) /* MaximumVelocity */
     , (800052,  29,     1.4) /* WeaponDefense */
     , (800052,  62,       1) /* WeaponOffense */
     , (800052,  63,       4) /* DamageMod */
     , (800052,  76,     0.7) /* Translucency */
	 , (800052,  156,     .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800052,   1, 'Cursed Hollow Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800052,   1,   33557729) /* Setup */
     , (800052,   3,  536870932) /* SoundTable */
     , (800052,   6,   67111919) /* PaletteBase */
     , (800052,   7,  268436394) /* ClothingBase */
     , (800052,   8,  100673010) /* Icon */
     , (800052,  22,  872415275) /* PhysicsEffectTable */
     , (800052,  37,          2) /* ItemSkillLimit - Bow */
	 , (800052,  55,       5367) /* ProcSpell - Nether Arc VII */;
