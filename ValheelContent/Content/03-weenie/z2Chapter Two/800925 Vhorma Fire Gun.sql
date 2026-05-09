DELETE FROM `weenie` WHERE `class_Id` = 800925;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800925, 'Vhorma Fire Rifle', 3, '2019-02-04 06:52:23') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800925,   1,        256) /* ItemType - MissileWeapon */
     , (800925,   3,         20) /* PaletteTemplate - Silver */
     , (800925,   5,        960) /* EncumbranceVal */
     , (800925,   8,        320) /* Mass */
     , (800925,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800925,  16,          1) /* ItemUseable - No */
     , (800925,  19,        275) /* Value */
     , (800925,  33,          1) /* Bonded - Bonded */
     , (800925,  44,         85) /* Damage */
     , (800925,  45,          16) /* DamageType - Pierce */
     , (800925,  46,         32) /* DefaultCombatStyle - Crossbow */
     , (800925,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800925,  49,         60) /* WeaponTime */
     , (800925,  50,          4) /* AmmoType - Atlatl */
     , (800925,  51,          2) /* CombatUse - Missle */
     , (800925,  52,          2) /* ParentLocation - LeftHand */
     , (800925,  53,          3) /* PlacementPosition - LeftHand */
     , (800925,  60,        160) /* WeaponRange */
     , (800925,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800925, 114,          1) /* Attuned - Attuned */
     , (800925, 150,        103) /* HookPlacement - Hook */
     , (800925, 151,          2) /* HookType - Wall */
     , (800925, 158,          2) /* WieldRequirements - RawSkill */
     , (800925, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800925, 160,        375) /* WieldDifficulty */
     , (800925, 169,  101188618) /* TsysMutationData */
     , (800925, 179,          512) /* ImbuedEffect - ArmorRending */
     , (800925, 353,          9) /* WeaponType - Crossbow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800925,  11, True ) /* IgnoreCollisions */
     , (800925,  13, True ) /* Ethereal */
     , (800925,  14, True ) /* GravityStatus */
     , (800925,  19, True ) /* Attackable */
     , (800925,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800925,  21,       0) /* WeaponLength */
     , (800925,  22,       0) /* DamageVariance */
     , (800925,  26, 24.8999996185303) /* MaximumVelocity */
     , (800925,  29,     1.2) /* WeaponDefense */
     , (800925,  39,     1.4) /* DefaultScale */
     , (800925,  62,       1) /* WeaponOffense */
     , (800925,  63,       5) /* DamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800925,   1, 'Vhorma Fire Rifle') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800925,   1,   33560026) /* Setup */
     , (800925,   3,  536870932) /* SoundTable */
     , (800925,   6,   67115556) /* PaletteBase */
     , (800925,   7,  268437003) /* ClothingBase */
     , (800925,   8,  100689027) /* Icon */
     , (800925,  22,  872415275) /* PhysicsEffectTable */
     , (800925,  36,  234881053) /* MutateFilter */
     , (800925,  46,  939524105) /* TsysMutationFilter */
     , (800925,  50,  100675757) /* IconOverlay */
     , (800925,  52,  100676441) /* IconUnderlay */;
