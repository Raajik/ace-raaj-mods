DELETE FROM `weenie` WHERE `class_Id` = 800924;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800924, 'Vhorma Bludgeoning Rifle', 3, '2019-02-04 06:52:23') /* MissileLauncher */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800924,   1,        256) /* ItemType - MissileWeapon */
     , (800924,   3,         20) /* PaletteTemplate - Silver */
     , (800924,   5,        960) /* EncumbranceVal */
     , (800924,   8,        320) /* Mass */
     , (800924,   9,    4194304) /* ValidLocations - MissileWeapon */
     , (800924,  16,          1) /* ItemUseable - No */
     , (800924,  19,        275) /* Value */
     , (800924,  33,          1) /* Bonded - Bonded */
     , (800924,  44,         85) /* Damage */
     , (800924,  45,          4) /* DamageType - Pierce */
     , (800924,  46,         32) /* DefaultCombatStyle - Crossbow */
     , (800924,  48,         47) /* WeaponSkill - MissileWeapons */
     , (800924,  49,         60) /* WeaponTime */
     , (800924,  50,          4) /* AmmoType - Atlatl */
     , (800924,  51,          2) /* CombatUse - Missle */
     , (800924,  52,          2) /* ParentLocation - LeftHand */
     , (800924,  53,          3) /* PlacementPosition - LeftHand */
     , (800924,  60,        160) /* WeaponRange */
     , (800924,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800924, 114,          1) /* Attuned - Attuned */
     , (800924, 150,        103) /* HookPlacement - Hook */
     , (800924, 151,          2) /* HookType - Wall */
     , (800924, 158,          2) /* WieldRequirements - RawSkill */
     , (800924, 159,         47) /* WieldSkillType - MissileWeapons */
     , (800924, 160,        375) /* WieldDifficulty */
     , (800924, 169,  101188618) /* TsysMutationData */
     , (800924, 179,          32) /* ImbuedEffect - ArmorRending */
     , (800924, 353,          9) /* WeaponType - Crossbow */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800924,  11, True ) /* IgnoreCollisions */
     , (800924,  13, True ) /* Ethereal */
     , (800924,  14, True ) /* GravityStatus */
     , (800924,  19, True ) /* Attackable */
     , (800924,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800924,  21,       0) /* WeaponLength */
     , (800924,  22,       0) /* DamageVariance */
     , (800924,  26, 24.8999996185303) /* MaximumVelocity */
     , (800924,  29,     1.2) /* WeaponDefense */
     , (800924,  39,     1.4) /* DefaultScale */
     , (800924,  62,       1) /* WeaponOffense */
     , (800924,  63,       5) /* DamageMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800924,   1, 'Vhorma Bludgeoning Rifle') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800924,   1,   33560026) /* Setup */
     , (800924,   3,  536870932) /* SoundTable */
     , (800924,   6,   67115556) /* PaletteBase */
     , (800924,   7,  268437003) /* ClothingBase */
     , (800924,   8,  100689027) /* Icon */
     , (800924,  22,  872415275) /* PhysicsEffectTable */
     , (800924,  36,  234881053) /* MutateFilter */
     , (800924,  46,  939524105) /* TsysMutationFilter */
     , (800924,  50,  100675757) /* IconOverlay */
     , (800924,  52,  100676442) /* IconUnderlay */;
