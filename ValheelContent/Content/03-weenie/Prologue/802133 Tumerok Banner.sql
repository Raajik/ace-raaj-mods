DELETE FROM `weenie` WHERE `class_Id` = 802133;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802133, 'TumerokBanner', 6, '2005-02-09 10:00:00') /* MeleeWeapon */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802133,   1,          1) /* ItemType - MeleeWeapon */
     , (802133,   5,        400) /* EncumbranceVal */
     , (802133,   8,        500) /* Mass */
     , (802133,   9,          0) /* ValidLocations - MeleeWeapon */
     , (802133,  16,          1) /* ItemUseable - No */
     , (802133,  18,          0) /* UiEffects - Magical */
     , (802133,  19,          0) /* Value */
     , (802133,  33,          1) /* Bonded - Bonded */
     , (802133,  44,          1) /* Damage */
     , (802133,  45,          2) /* DamageType - Pierce */
     , (802133,  46,          2) /* DefaultCombatStyle - OneHanded */
     , (802133,  47,          2) /* AttackType - Thrust */
     , (802133,  48,          9) /* WeaponSkill - Spear */
     , (802133,  49,         30) /* WeaponTime */
     , (802133,  51,          1) /* CombatUse - Melee */
     , (802133,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802133, 109,         90) /* ItemDifficulty */
     , (802133, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802133,  22, True ) /* Inscribable */
     , (802133,  23, True ) /* DestroyOnSell */
     , (802133,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802133,   1, 'Tumerok Banner') /* Name */
     , (802133,  33, 'BannerPickup') /* Quest */;
	 
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802133,   1,   33557253) /* Setup */
     , (802133,   3,  536870932) /* SoundTable */
     , (802133,   6,   67113338) /* PaletteBase */
     , (802133,   7,  268436210) /* ClothingBase */
     , (802133,   8,  100671919) /* Icon */
     , (802133,  22,  872415275) /* PhysicsEffectTable */;

