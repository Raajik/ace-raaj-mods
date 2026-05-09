DELETE FROM `weenie` WHERE `class_Id` = 800928;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800928, 'Vhorma Electric Rifle', 3, '2019-02-04 06:52:23') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800928,   1,        256) /* ItemType - MissileWeapon */
     , (800928,   3,         20) /* PaletteTemplate - Silver */
     , (800928,   5,        960) /* EncumbranceVal */
     , (800928,   8,        320) /* Mass */
     , (800928,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800928,  16,          1) /* ItemUseable - No */
     , (800928,  19,        275) /* Value */
     , (800928,  33,          1) /* Bonded - Bonded */
     , (800928,  44,         85) /* Damage */
     , (800928,  45,          64) /* DamageType - Pierce */
     , (800928,  46,         32) /* DefaultCombatStyle - Crossbow */
     , (800928,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800928,  49,         60) /* WeaponTime */
     , (800928,  50,          4) /* AmmoType - Atlatl */
     , (800928,  51,          2) /* CombatUse - Missle */
     , (800928,  52,          2) /* ParentLocation - LeftHand */
     , (800928,  53,          3) /* PlacementPosition - LeftHand */
     , (800928,  60,        160) /* WeaponRange */
     , (800928,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800928, 114,          1) /* Attuned - Attuned */
     , (800928, 150,        103) /* HookPlacement - Hook */
     , (800928, 151,          2) /* HookType - Wall */
     , (800928, 158,          2) /* WieldRequirements - RawSkill */
     , (800928, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800928, 160,        375) /* WieldDifficulty */
     , (800928, 169,  101188618) /* TsysMutationData */
     , (800928, 179,          256) /* ImbuedEffect - ArmorRending */
     , (800928, 353,          9) /* WeaponType - Crossbow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800928,  11, True ) /* IgnoreCollisions */
     , (800928,  13, True ) /* Ethereal */
     , (800928,  14, True ) /* GravityStatus */
     , (800928,  19, True ) /* Attackable */
     , (800928,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800928,  21,       0) /* WeaponLength */
     , (800928,  22,       0) /* DamageVariance */
     , (800928,  26, 24.8999996185303) /* MaximumVelocity */
     , (800928,  29,     1.2) /* WeaponDefense */
     , (800928,  39,     1.4) /* DefaultScale */
     , (800928,  62,       1) /* WeaponOffense */
     , (800928,  63,       5) /* DamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800928,   1, 'Vhorma Electric Rifle') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800928,   1,   33560026) /* Setup */
     , (800928,   3,  536870932) /* SoundTable */
     , (800928,   6,   67115556) /* PaletteBase */
     , (800928,   7,  268437003) /* ClothingBase */
     , (800928,   8,  100689027) /* Icon */
     , (800928,  22,  872415275) /* PhysicsEffectTable */
     , (800928,  36,  234881053) /* MutateFilter */
     , (800928,  46,  939524105) /* TsysMutationFilter */
     , (800928,  50,  100675757) /* IconOverlay */
     , (800928,  52,  100676436) /* IconUnderlay */;
