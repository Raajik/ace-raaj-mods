DELETE FROM `weenie` WHERE `class_Id` = 800053;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800053, 'cursedfrostbow', 3, '2005-02-09 10:00:00') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800053,   1,        256) /* ItemType - MissileWeapon */
     , (800053,   3,         14) /* PaletteTemplate - LootGenRed */
     , (800053,   5,        950) /* EncumbranceVal */
     , (800053,   8,        140) /* Mass */
     , (800053,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800053,  16,          1) /* ItemUseable - No */
     , (800053,  18,          1) /* UiEffects - Magical */
     , (800053,  19,       8000) /* Value */
     , (800053,  33,          1) /* Bonded - Bonded */
     , (800053,  36,       9999) /* ResistMagic */
     , (800053,  44,         10) /* Damage */
     , (800053,  46,         16) /* DefaultCombatStyle - Bow */
     , (800053,  48,          2) /* WeaponSkill - Bow */
     , (800053,  49,         40) /* WeaponTime */
     , (800053,  50,          1) /* AmmoType - Arrow */
     , (800053,  51,          2) /* CombatUse - Missile */
     , (800053,  52,          2) /* ParentLocation - LeftHand */
     , (800053,  53,          3) /* PlacementPosition - LeftHand */
     , (800053,  60,        175) /* WeaponRange */
     , (800053,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800053, 106,        100) /* ItemSpellcraft */
     , (800053, 107,       1200) /* ItemCurMana */
     , (800053, 108,       1200) /* ItemMaxMana */
     , (800053, 115,        290) /* ItemSkillLevelLimit */
     , (800053, 150,        103) /* HookPlacement - Hook */
     , (800053, 151,          2) /* HookType - Wall */
     , (800053, 158,          7) /* WieldRequirements - Level */
     , (800053, 159,          1) /* WieldSkillType - Axe */
     , (800053, 160,        275) /* WieldDifficulty */
	 , (800053, 179,        128) /* WieldDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800053,  22, True ) /* Inscribable */
     , (800053,  23, True ) /* DestroyOnSell */
     , (800053,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800053,   5,    -0.1) /* ManaRate */
     , (800053,  26,    27.3) /* MaximumVelocity */
     , (800053,  29,     1.4) /* WeaponDefense */
     , (800053,  62,       1) /* WeaponOffense */
     , (800053,  63,       4) /* DamageMod */
	 , (800053,  156,     .3) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800053,   1, 'Cursed Frost Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800053,   1,   33557729) /* Setup */
     , (800053,   3,  536870932) /* SoundTable */
     , (800053,   6,   67111919) /* PaletteBase */
     , (800053,   7,  268436394) /* ClothingBase */
     , (800053,   8,  100673010) /* Icon */
     , (800053,  22,  872415275) /* PhysicsEffectTable */
     , (800053,  37,          2) /* ItemSkillLimit - Bow */
	 , (800053,  55,       2731) /* ProcSpell - Frost Arc VII */;
