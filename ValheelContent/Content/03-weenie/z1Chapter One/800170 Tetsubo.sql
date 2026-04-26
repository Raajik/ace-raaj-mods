DELETE FROM `weenie` WHERE `class_Id` = 800170;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800170, 'ace800170-tetsubo', 6, '2021-11-01 00:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800170,   1,          1) /* ItemType - MeleeWeapon */
     , (800170,   3,         20) /* PaletteTemplate - Silver */
     , (800170,   5,        550) /* EncumbranceVal */
     , (800170,   9,   33554432) /* ValidLocations - TwoHanded */
     , (800170,  16,          1) /* ItemUseable - No */
     , (800170,  19,        340) /* Value */
     , (800170,  44,          8) /* Damage */
     , (800170,  45,          4) /* DamageType - Bludgeon */
     , (800170,  46,          8) /* DefaultCombatStyle - TwoHanded */
     , (800170,  47,          4) /* AttackType - Slash */
     , (800170,  48,         41) /* WeaponSkill - TwoHandedCombat */
     , (800170,  49,         50) /* WeaponTime */
     , (800170,  51,          5) /* CombatUse - TwoHanded */
     , (800170,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800170, 169,  285804546) /* TsysMutationData */
     , (800170, 292,          5) /* Cleaving */
     , (800170, 353,         11) /* WeaponType - TwoHanded */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800170,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800170,  21,       1) /* WeaponLength */
     , (800170,  22,     0.6) /* DamageVariance */
     , (800170,  29,       1) /* WeaponDefense */
     , (800170,  39,    0.65) /* DefaultScale */
     , (800170,  62,       1) /* WeaponOffense */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800170,   1, 'Tetsubo') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800170,   1,   33560728) /* Setup */
     , (800170,   3,  536870932) /* SoundTable */
     , (800170,   6,   67116700) /* PaletteBase */
     , (800170,   7,  268437350) /* ClothingBase */
     , (800170,   8,  100690500) /* Icon */
     , (800170,  22,  872415275) /* PhysicsEffectTable */;
