DELETE FROM `weenie` WHERE `class_Id` = 800310;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800310, 'Bael''Zharon Touched Weeping Bow', 3, '2021-11-17 16:56:08') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800310,   1,        256) /* ItemType - MissileWeapon */
     , (800310,   5,        950) /* EncumbranceVal */
     , (800310,   8,        140) /* Mass */
     , (800310,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800310,  16,          1) /* ItemUseable - No */
     , (800310,  18,          1) /* UiEffects - Magical */
     , (800310,  19,          1) /* Value */
     , (800310,  33,          1) /* Bonded - Bonded */
     , (800310,  36,       9999) /* ResistMagic */
     , (800310,  44,         30) /* Damage */
     , (800310,  46,         16) /* DefaultCombatStyle - Bow */
     , (800310,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800310,  49,         10) /* WeaponTime */
     , (800310,  50,          1) /* AmmoType - Arrow */
     , (800310,  51,          2) /* CombatUse - Missile */
     , (800310,  52,          2) /* ParentLocation - LeftHand */
     , (800310,  53,          3) /* PlacementPosition - LeftHand */
     , (800310,  60,        175) /* WeaponRange */
     , (800310,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800310, 106,        300) /* ItemSpellcraft */
     , (800310, 107,        800) /* ItemCurMana */
     , (800310, 108,        800) /* ItemMaxMana */
     , (800310, 109,        350) /* ItemDifficulty */
     , (800310, 114,          1) /* Attuned - Attuned */
     , (800310, 150,        103) /* HookPlacement - Hook */
     , (800310, 151,          2) /* HookType - Wall */
     , (800310, 158,          7) /* WieldRequirements - RawSkill */
     , (800310, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800310, 160,        275) /* WieldDifficulty */
     , (800310, 166,         31) /* SlayerCreatureType - Human */
	 , (800310, 179,          4) /* Imbued Effect - Armor Rending */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800310,  22, True ) /* Inscribable */
     , (800310,  69, False) /* IsSellable */
     , (800310,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800310,   5,  -0.025) /* ManaRate */
     , (800310,  21,       0) /* WeaponLength */
     , (800310,  22,     0.5) /* DamageVariance */
     , (800310,  26,       0) /* MaximumVelocity */
     , (800310,  29,    1.25) /* WeaponDefense */
     , (800310,  62,    1.25) /* WeaponOffense */
     , (800310,  63,     1.2) /* DamageMod */
     , (800310, 138,     3.4) /* SlayerDamageBonus */
     , (800310, 151,       1) /* IgnoreShield */
     , (800310, 155,       1) /* IgnoreArmor */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800310,   1, 'Bael''Zharon Touched Weeping Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800310,   1,   33558292) /* Setup */
     , (800310,   3,  536870932) /* SoundTable */
     , (800310,   8,  100674272) /* Icon */
     , (800310,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800310,  6044,      2)  /* Moderate Missile Weapon Aptitude */;
