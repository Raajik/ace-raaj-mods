DELETE FROM `weenie` WHERE `class_Id` = 800056;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800056, 'cursedbluntbow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800056,   1,        256) /* ItemType - MissileWeapon */
     , (800056,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800056,   5,        950) /* EncumbranceVal */
     , (800056,   8,        140) /* Mass */
     , (800056,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800056,  16,          1) /* ItemUseable - No */
     , (800056,  18,          1) /* UiEffects - Magical */
     , (800056,  19,       8000) /* Value */
     , (800056,  33,          1) /* Bonded - Bonded */
     , (800056,  36,       9999) /* ResistMagic */
     , (800056,  44,         10) /* Damage */
     , (800056,  46,         16) /* DefaultCombatStyle - Bow */
     , (800056,  48,          2) /* WeaponSkill - Bow */
     , (800056,  49,         40) /* WeaponTime */
     , (800056,  50,          1) /* AmmoType - Arrow */
     , (800056,  51,          2) /* CombatUse - Missile */
     , (800056,  52,          2) /* ParentLocation - LeftHand */
     , (800056,  53,          3) /* PlacementPosition - LeftHand */
     , (800056,  60,        175) /* WeaponRange */
     , (800056,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800056, 106,        100) /* ItemSpellcraft */
     , (800056, 107,       1200) /* ItemCurMana */
     , (800056, 108,       1200) /* ItemMaxMana */
     , (800056, 115,        290) /* ItemSkillLevelLimit */
     , (800056, 150,        103) /* HookPlacement - Hook */
     , (800056, 151,          2) /* HookType - Wall */
     , (800056, 158,          7) /* WieldRequirements - Level */
     , (800056, 159,          1) /* WieldSkillType - Axe */
     , (800056, 160,        275) /* WieldDifficulty */
	 , (800056, 179,         32) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800056,  22, True ) /* Inscribable */
     , (800056,  23, True ) /* DestroyOnSell */
     , (800056,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800056,   5,    -0.1) /* ManaRate */
     , (800056,  26,    27.3) /* MaximumVelocity */
     , (800056,  29,     1.4) /* WeaponDefense */
     , (800056,  62,       1) /* WeaponOffense */
     , (800056,  63,       4) /* DamageMod */
	 , (800056,  156,     .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800056,   1, 'Cursed Blunt Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800056,   1,   33557729) /* Setup */
     , (800056,   3,  536870932) /* SoundTable */
     , (800056,   6,   67111919) /* PaletteBase */
     , (800056,   7,  268436394) /* ClothingBase */
     , (800056,   8,  100673010) /* Icon */
     , (800056,  22,  872415275) /* PhysicsEffectTable */
     , (800056,  37,          2) /* ItemSkillLimit - Bow */
	 , (800056,  55,       2752) /* ProcSpell - Electric Arc VII */;
