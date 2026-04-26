DELETE FROM `weenie` WHERE `class_Id` = 800922;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800922, 'Vhorma Slashing Rifle', 3, '2019-02-04 06:52:23') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800922,   1,        256) /* ItemType - MissileWeapon */
     , (800922,   3,         20) /* PaletteTemplate - Silver */
     , (800922,   5,        960) /* EncumbranceVal */
     , (800922,   8,        320) /* Mass */
     , (800922,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800922,  16,          1) /* ItemUseable - No */
     , (800922,  19,        275) /* Value */
     , (800922,  33,          1) /* Bonded - Bonded */
     , (800922,  44,         85) /* Damage */
     , (800922,  45,          1) /* DamageType - Pierce */
     , (800922,  46,         32) /* DefaultCombatStyle - Crossbow */
     , (800922,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800922,  49,         60) /* WeaponTime */
     , (800922,  50,          4) /* AmmoType - Atlatl */
     , (800922,  51,          2) /* CombatUse - Missle */
     , (800922,  52,          2) /* ParentLocation - LeftHand */
     , (800922,  53,          3) /* PlacementPosition - LeftHand */
     , (800922,  60,        160) /* WeaponRange */
     , (800922,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800922, 114,          1) /* Attuned - Attuned */
     , (800922, 150,        103) /* HookPlacement - Hook */
     , (800922, 151,          2) /* HookType - Wall */
     , (800922, 158,          2) /* WieldRequirements - RawSkill */
     , (800922, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800922, 160,        375) /* WieldDifficulty */
     , (800922, 169,  101188618) /* TsysMutationData */
     , (800922, 179,          8) /* ImbuedEffect - ArmorRending */
     , (800922, 353,          9) /* WeaponType - Crossbow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800922,  11, True ) /* IgnoreCollisions */
     , (800922,  13, True ) /* Ethereal */
     , (800922,  14, True ) /* GravityStatus */
     , (800922,  19, True ) /* Attackable */
     , (800922,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800922,  21,       0) /* WeaponLength */
     , (800922,  22,       0) /* DamageVariance */
     , (800922,  26, 24.8999996185303) /* MaximumVelocity */
     , (800922,  29,     1.2) /* WeaponDefense */
     , (800922,  39,     1.4) /* DefaultScale */
     , (800922,  62,       1) /* WeaponOffense */
     , (800922,  63,       5) /* DamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800922,   1, 'Vhorma Slashing Rifle') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800922,   1,   33560026) /* Setup */
     , (800922,   3,  536870932) /* SoundTable */
     , (800922,   6,   67115556) /* PaletteBase */
     , (800922,   7,  268437003) /* ClothingBase */
     , (800922,   8,  100689027) /* Icon */
     , (800922,  22,  872415275) /* PhysicsEffectTable */
     , (800922,  36,  234881053) /* MutateFilter */
     , (800922,  46,  939524105) /* TsysMutationFilter */
     , (800922,  50,  100675757) /* IconOverlay */
     , (800922,  52,  100676444) /* IconUnderlay */;
