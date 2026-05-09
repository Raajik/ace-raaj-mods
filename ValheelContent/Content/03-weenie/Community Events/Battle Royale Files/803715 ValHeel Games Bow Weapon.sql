DELETE FROM `weenie` WHERE `class_Id` = 803715;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803715, 'ValHeelGamesBow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803715,   1,        256) /* ItemType - MissileWeapon */
     , (803715,   5,        950) /* EncumbranceVal */
     , (803715,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (803715,  16,          1) /* ItemUseable - No */
     , (803715,  19,      20000) /* Value */
     , (803715,  33,          1) /* Bonded - Bonded */
     , (803715,  36,       9999) /* ResistMagic */
     , (803715,  44,         26) /* Damage */
     , (803715,  46,         16) /* DefaultCombatStyle - Bow */
     , (803715,  48,         47) /* WeaponSkill - MissileWeapons */
     , (803715,  49,         10) /* WeaponTime */
     , (803715,  50,          1) /* AmmoType - Arrow */
     , (803715,  51,          2) /* CombatUse - Missile */
     , (803715,  52,          2) /* ParentLocation - LeftHand */
     , (803715,  53,          3) /* PlacementPosition - LeftHand */
     , (803715,  60,        175) /* WeaponRange */
     , (803715,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803715, 106,        300) /* ItemSpellcraft */
     , (803715, 107,        800) /* ItemCurMana */
     , (803715, 108,        800) /* ItemMaxMana */
     , (803715, 109,         50) /* ItemDifficulty */
     , (803715, 114,          1) /* Attuned - Attuned */
     , (803715, 150,        103) /* HookPlacement - Hook */
     , (803715, 151,          2) /* HookType - Wall */
     , (803715, 158,          2) /* WieldRequirements - RawSkill */
     , (803715, 159,         47) /* WieldSkillType - MissileWeapons */
     , (803715, 160,        200) /* WieldDifficulty */
     , (803715, 166,         31) /* SlayerCreatureType - Human */
     , (803715, 353,          8) /* WeaponType - Bow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803715,  22, True ) /* Inscribable */
     , (803715,  23, True ) /* DestroyOnSell */
     , (803715,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803715,   5,  -0.025) /* ManaRate */
     , (803715,  26,      50) /* MaximumVelocity */
     , (803715,  29,    1.18) /* WeaponDefense */
     , (803715,  62,       1) /* WeaponOffense */
     , (803715,  63,    2.23) /* DamageMod */
     , (803715, 138,     2.9) /* SlayerDamageBonus */
     , (803715, 151,       1) /* IgnoreShield */
     , (803715, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803715,   1, 'ValHeel Games Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803715,   1,   33560669) /* Setup */
     , (803715,   3,  536870932) /* SoundTable */
     , (803715,   7,  268437357) /* ClothingBase */
     , (803715,   8,  100690413) /* Icon */
     , (803715,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803715,  2505,      2)  /* Major Missile Weapon Aptitude */;
