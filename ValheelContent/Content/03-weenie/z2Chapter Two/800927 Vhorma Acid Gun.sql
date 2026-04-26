DELETE FROM `weenie` WHERE `class_Id` = 800927;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800927, 'Vhorma Acid Rifle', 3, '2019-02-04 06:52:23') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800927,   1,        256) /* ItemType - MissileWeapon */
     , (800927,   3,         20) /* PaletteTemplate - Silver */
     , (800927,   5,        960) /* EncumbranceVal */
     , (800927,   8,        320) /* Mass */
     , (800927,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800927,  16,          1) /* ItemUseable - No */
     , (800927,  19,        275) /* Value */
     , (800927,  33,          1) /* Bonded - Bonded */
     , (800927,  44,         85) /* Damage */
     , (800927,  45,          32) /* DamageType - Pierce */
     , (800927,  46,         32) /* DefaultCombatStyle - Crossbow */
     , (800927,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800927,  49,         60) /* WeaponTime */
     , (800927,  50,          4) /* AmmoType - Atlatl */
     , (800927,  51,          2) /* CombatUse - Missle */
     , (800927,  52,          2) /* ParentLocation - LeftHand */
     , (800927,  53,          3) /* PlacementPosition - LeftHand */
     , (800927,  60,        160) /* WeaponRange */
     , (800927,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800927, 114,          1) /* Attuned - Attuned */
     , (800927, 150,        103) /* HookPlacement - Hook */
     , (800927, 151,          2) /* HookType - Wall */
     , (800927, 158,          2) /* WieldRequirements - RawSkill */
     , (800927, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800927, 160,        375) /* WieldDifficulty */
     , (800927, 169,  101188618) /* TsysMutationData */
     , (800927, 179,          64) /* ImbuedEffect - ArmorRending */
     , (800927, 353,          9) /* WeaponType - Crossbow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800927,  11, True ) /* IgnoreCollisions */
     , (800927,  13, True ) /* Ethereal */
     , (800927,  14, True ) /* GravityStatus */
     , (800927,  19, True ) /* Attackable */
     , (800927,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800927,  21,       0) /* WeaponLength */
     , (800927,  22,       0) /* DamageVariance */
     , (800927,  26, 24.8999996185303) /* MaximumVelocity */
     , (800927,  29,     1.2) /* WeaponDefense */
     , (800927,  39,     1.4) /* DefaultScale */
     , (800927,  62,       1) /* WeaponOffense */
     , (800927,  63,       5) /* DamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800927,   1, 'Vhorma Acid Rifle') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800927,   1,   33560026) /* Setup */
     , (800927,   3,  536870932) /* SoundTable */
     , (800927,   6,   67115556) /* PaletteBase */
     , (800927,   7,  268437003) /* ClothingBase */
     , (800927,   8,  100689027) /* Icon */
     , (800927,  22,  872415275) /* PhysicsEffectTable */
     , (800927,  36,  234881053) /* MutateFilter */
     , (800927,  46,  939524105) /* TsysMutationFilter */
     , (800927,  50,  100675757) /* IconOverlay */
     , (800927,  52,  100676437) /* IconUnderlay */;
