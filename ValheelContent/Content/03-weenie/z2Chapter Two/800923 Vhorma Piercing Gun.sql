DELETE FROM `weenie` WHERE `class_Id` = 800923;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800923, 'Vhorma Piercing Rifle', 3, '2019-02-04 06:52:23') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800923,   1,        256) /* ItemType - MissileWeapon */
     , (800923,   3,         20) /* PaletteTemplate - Silver */
     , (800923,   5,        960) /* EncumbranceVal */
     , (800923,   8,        320) /* Mass */
     , (800923,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800923,  16,          1) /* ItemUseable - No */
     , (800923,  19,        275) /* Value */
     , (800923,  33,          1) /* Bonded - Bonded */
     , (800923,  44,         85) /* Damage */
     , (800923,  45,          2) /* DamageType - Pierce */
     , (800923,  46,         32) /* DefaultCombatStyle - Crossbow */
     , (800923,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800923,  49,         60) /* WeaponTime */
     , (800923,  50,          4) /* AmmoType - Atlatl */
     , (800923,  51,          2) /* CombatUse - Missle */
     , (800923,  52,          2) /* ParentLocation - LeftHand */
     , (800923,  53,          3) /* PlacementPosition - LeftHand */
     , (800923,  60,        160) /* WeaponRange */
     , (800923,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800923, 114,          1) /* Attuned - Attuned */
     , (800923, 150,        103) /* HookPlacement - Hook */
     , (800923, 151,          2) /* HookType - Wall */
     , (800923, 158,          2) /* WieldRequirements - RawSkill */
     , (800923, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800923, 160,        375) /* WieldDifficulty */
     , (800923, 169,  101188618) /* TsysMutationData */
     , (800923, 179,          16) /* ImbuedEffect - ArmorRending */
     , (800923, 353,          9) /* WeaponType - Crossbow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800923,  11, True ) /* IgnoreCollisions */
     , (800923,  13, True ) /* Ethereal */
     , (800923,  14, True ) /* GravityStatus */
     , (800923,  19, True ) /* Attackable */
     , (800923,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800923,  21,       0) /* WeaponLength */
     , (800923,  22,       0) /* DamageVariance */
     , (800923,  26, 24.8999996185303) /* MaximumVelocity */
     , (800923,  29,     1.2) /* WeaponDefense */
     , (800923,  39,     1.4) /* DefaultScale */
     , (800923,  62,       1) /* WeaponOffense */
     , (800923,  63,       5) /* DamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800923,   1, 'Vhorma Piercing Rifle') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800923,   1,   33560026) /* Setup */
     , (800923,   3,  536870932) /* SoundTable */
     , (800923,   6,   67115556) /* PaletteBase */
     , (800923,   7,  268437003) /* ClothingBase */
     , (800923,   8,  100689027) /* Icon */
     , (800923,  22,  872415275) /* PhysicsEffectTable */
     , (800923,  36,  234881053) /* MutateFilter */
     , (800923,  46,  939524105) /* TsysMutationFilter */
     , (800923,  50,  100675757) /* IconOverlay */
     , (800923,  52,  100676443) /* IconUnderlay */;
