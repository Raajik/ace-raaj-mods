DELETE FROM `weenie` WHERE `class_Id` = 800926;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800926, 'Vhorma Frost Rifle', 3, '2019-02-04 06:52:23') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800926,   1,        256) /* ItemType - MissileWeapon */
     , (800926,   3,         20) /* PaletteTemplate - Silver */
     , (800926,   5,        960) /* EncumbranceVal */
     , (800926,   8,        320) /* Mass */
     , (800926,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800926,  16,          1) /* ItemUseable - No */
     , (800926,  19,        275) /* Value */
     , (800926,  33,          1) /* Bonded - Bonded */
     , (800926,  44,         85) /* Damage */
     , (800926,  45,          8) /* DamageType - Pierce */
     , (800926,  46,         32) /* DefaultCombatStyle - Crossbow */
     , (800926,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800926,  49,         60) /* WeaponTime */
     , (800926,  50,          4) /* AmmoType - Atlatl */
     , (800926,  51,          2) /* CombatUse - Missle */
     , (800926,  52,          2) /* ParentLocation - LeftHand */
     , (800926,  53,          3) /* PlacementPosition - LeftHand */
     , (800926,  60,        160) /* WeaponRange */
     , (800926,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800926, 114,          1) /* Attuned - Attuned */
     , (800926, 150,        103) /* HookPlacement - Hook */
     , (800926, 151,          2) /* HookType - Wall */
     , (800926, 158,          2) /* WieldRequirements - RawSkill */
     , (800926, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800926, 160,        375) /* WieldDifficulty */
     , (800926, 169,  101188618) /* TsysMutationData */
     , (800926, 179,          128) /* ImbuedEffect - ArmorRending */
     , (800926, 353,          9) /* WeaponType - Crossbow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800926,  11, True ) /* IgnoreCollisions */
     , (800926,  13, True ) /* Ethereal */
     , (800926,  14, True ) /* GravityStatus */
     , (800926,  19, True ) /* Attackable */
     , (800926,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800926,  21,       0) /* WeaponLength */
     , (800926,  22,       0) /* DamageVariance */
     , (800926,  26, 24.8999996185303) /* MaximumVelocity */
     , (800926,  29,     1.2) /* WeaponDefense */
     , (800926,  39,     1.4) /* DefaultScale */
     , (800926,  62,       1) /* WeaponOffense */
     , (800926,  63,       5) /* DamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800926,   1, 'Vhorma Frost Rifle') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800926,   1,   33560026) /* Setup */
     , (800926,   3,  536870932) /* SoundTable */
     , (800926,   6,   67115556) /* PaletteBase */
     , (800926,   7,  268437003) /* ClothingBase */
     , (800926,   8,  100689027) /* Icon */
     , (800926,  22,  872415275) /* PhysicsEffectTable */
     , (800926,  36,  234881053) /* MutateFilter */
     , (800926,  46,  939524105) /* TsysMutationFilter */
     , (800926,  50,  100675757) /* IconOverlay */
     , (800926,  52,  100676435) /* IconUnderlay */;
