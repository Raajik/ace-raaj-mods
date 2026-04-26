DELETE FROM `weenie` WHERE `class_Id` = 800055;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800055, 'cursedfirebow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800055,   1,        256) /* ItemType - MissileWeapon */
     , (800055,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800055,   5,        950) /* EncumbranceVal */
     , (800055,   8,        140) /* Mass */
     , (800055,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800055,  16,          1) /* ItemUseable - No */
     , (800055,  18,          1) /* UiEffects - Magical */
     , (800055,  19,       8000) /* Value */
     , (800055,  33,          1) /* Bonded - Bonded */
     , (800055,  36,       9999) /* ResistMagic */
     , (800055,  44,         10) /* Damage */
     , (800055,  46,         16) /* DefaultCombatStyle - Bow */
     , (800055,  48,          2) /* WeaponSkill - Bow */
     , (800055,  49,         40) /* WeaponTime */
     , (800055,  50,          1) /* AmmoType - Arrow */
     , (800055,  51,          2) /* CombatUse - Missile */
     , (800055,  52,          2) /* ParentLocation - LeftHand */
     , (800055,  53,          3) /* PlacementPosition - LeftHand */
     , (800055,  60,        175) /* WeaponRange */
     , (800055,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800055, 106,        100) /* ItemSpellcraft */
     , (800055, 107,       1200) /* ItemCurMana */
     , (800055, 108,       1200) /* ItemMaxMana */
     , (800055, 115,        290) /* ItemSkillLevelLimit */
     , (800055, 150,        103) /* HookPlacement - Hook */
     , (800055, 151,          2) /* HookType - Wall */
     , (800055, 158,          7) /* WieldRequirements - Level */
     , (800055, 159,          1) /* WieldSkillType - Axe */
     , (800055, 160,        275) /* WieldDifficulty */
	 , (800055, 179,        512) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800055,  22, True ) /* Inscribable */
     , (800055,  23, True ) /* DestroyOnSell */
     , (800055,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800055,   5,    -0.1) /* ManaRate */
     , (800055,  26,    27.3) /* MaximumVelocity */
     , (800055,  29,     1.4) /* WeaponDefense */
     , (800055,  62,       1) /* WeaponOffense */
     , (800055,  63,       4) /* DamageMod */
	 , (800055,  156,     .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800055,   1, 'Cursed Fire Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800055,   1,   33557729) /* Setup */
     , (800055,   3,  536870932) /* SoundTable */
     , (800055,   6,   67111919) /* PaletteBase */
     , (800055,   7,  268436394) /* ClothingBase */
     , (800055,   8,  100673010) /* Icon */
     , (800055,  22,  872415275) /* PhysicsEffectTable */
     , (800055,  37,          2) /* ItemSkillLimit - Bow */
	 , (800055,  55,       2745) /* ProcSpell - Electric Arc VII */;
