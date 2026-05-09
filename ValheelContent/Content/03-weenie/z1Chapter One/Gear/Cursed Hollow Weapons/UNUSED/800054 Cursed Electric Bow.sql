DELETE FROM `weenie` WHERE `class_Id` = 800054;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800054, 'cursedelectricbow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800054,   1,        256) /* ItemType - MissileWeapon */
     , (800054,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800054,   5,        950) /* EncumbranceVal */
     , (800054,   8,        140) /* Mass */
     , (800054,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800054,  16,          1) /* ItemUseable - No */
     , (800054,  18,          1) /* UiEffects - Magical */
     , (800054,  19,       8000) /* Value */
     , (800054,  33,          1) /* Bonded - Bonded */
     , (800054,  36,       9999) /* ResistMagic */
     , (800054,  44,         10) /* Damage */
     , (800054,  46,         16) /* DefaultCombatStyle - Bow */
     , (800054,  48,          2) /* WeaponSkill - Bow */
     , (800054,  49,         40) /* WeaponTime */
     , (800054,  50,          1) /* AmmoType - Arrow */
     , (800054,  51,          2) /* CombatUse - Missile */
     , (800054,  52,          2) /* ParentLocation - LeftHand */
     , (800054,  53,          3) /* PlacementPosition - LeftHand */
     , (800054,  60,        175) /* WeaponRange */
     , (800054,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800054, 106,        100) /* ItemSpellcraft */
     , (800054, 107,       1200) /* ItemCurMana */
     , (800054, 108,       1200) /* ItemMaxMana */
     , (800054, 115,        290) /* ItemSkillLevelLimit */
     , (800054, 150,        103) /* HookPlacement - Hook */
     , (800054, 151,          2) /* HookType - Wall */
     , (800054, 158,          7) /* WieldRequirements - Level */
     , (800054, 159,          1) /* WieldSkillType - Axe */
     , (800054, 160,        275) /* WieldDifficulty */
	 , (800054, 179,        256) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800054,  22, True ) /* Inscribable */
     , (800054,  23, True ) /* DestroyOnSell */
     , (800054,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800054,   5,    -0.1) /* ManaRate */
     , (800054,  26,    27.3) /* MaximumVelocity */
     , (800054,  29,     1.4) /* WeaponDefense */
     , (800054,  62,       1) /* WeaponOffense */
     , (800054,  63,       4) /* DamageMod */
	 , (800054,  156,     .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800054,   1, 'Cursed Electric Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800054,   1,   33557729) /* Setup */
     , (800054,   3,  536870932) /* SoundTable */
     , (800054,   6,   67111919) /* PaletteBase */
     , (800054,   7,  268436394) /* ClothingBase */
     , (800054,   8,  100673010) /* Icon */
     , (800054,  22,  872415275) /* PhysicsEffectTable */
     , (800054,  37,          2) /* ItemSkillLimit - Bow */
	 , (800054,  55,       2738) /* ProcSpell - Electric Arc VII */;
