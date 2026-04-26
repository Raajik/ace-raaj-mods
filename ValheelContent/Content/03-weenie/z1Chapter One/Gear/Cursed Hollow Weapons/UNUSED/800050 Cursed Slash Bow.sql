DELETE FROM `weenie` WHERE `class_Id` = 800050;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800050, 'cursedslashbow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800050,   1,        256) /* ItemType - MissileWeapon */
     , (800050,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800050,   5,        950) /* EncumbranceVal */
     , (800050,   8,        140) /* Mass */
     , (800050,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800050,  16,          1) /* ItemUseable - No */
     , (800050,  18,          1) /* UiEffects - Magical */
     , (800050,  19,       8000) /* Value */
     , (800050,  33,          1) /* Bonded - Bonded */
     , (800050,  36,       9999) /* ResistMagic */
     , (800050,  44,         10) /* Damage */
     , (800050,  46,         16) /* DefaultCombatStyle - Bow */
     , (800050,  48,          2) /* WeaponSkill - Bow */
     , (800050,  49,         40) /* WeaponTime */
     , (800050,  50,          1) /* AmmoType - Arrow */
     , (800050,  51,          2) /* CombatUse - Missile */
     , (800050,  52,          2) /* ParentLocation - LeftHand */
     , (800050,  53,          3) /* PlacementPosition - LeftHand */
     , (800050,  60,        175) /* WeaponRange */
     , (800050,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800050, 106,        100) /* ItemSpellcraft */
     , (800050, 107,       1200) /* ItemCurMana */
     , (800050, 108,       1200) /* ItemMaxMana */
     , (800050, 115,        290) /* ItemSkillLevelLimit */
     , (800050, 150,        103) /* HookPlacement - Hook */
     , (800050, 151,          2) /* HookType - Wall */
     , (800050, 158,          7) /* WieldRequirements - Level */
     , (800050, 159,          1) /* WieldSkillType - Axe */
     , (800050, 160,        275) /* WieldDifficulty */
	 , (800050, 179,          8) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800050,  22, True ) /* Inscribable */
     , (800050,  23, True ) /* DestroyOnSell */
     , (800050,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800050,   5,    -0.1) /* ManaRate */
     , (800050,  26,    27.3) /* MaximumVelocity */
     , (800050,  29,     1.4) /* WeaponDefense */
     , (800050,  62,       1) /* WeaponOffense */
     , (800050,  63,       4) /* DamageMod */
	 , (800050,  156,     .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800050,   1, 'Cursed Slash Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800050,   1,   33557729) /* Setup */
     , (800050,   3,  536870932) /* SoundTable */
     , (800050,   6,   67111919) /* PaletteBase */
     , (800050,   7,  268436394) /* ClothingBase */
     , (800050,   8,  100673010) /* Icon */
     , (800050,  22,  872415275) /* PhysicsEffectTable */
     , (800050,  37,          2) /* ItemSkillLimit - Bow */
	 , (800050,  55,       2759) /* ProcSpell - Slash Arc VII */;
