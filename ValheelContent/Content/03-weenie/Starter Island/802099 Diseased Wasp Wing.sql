DELETE FROM `weenie` WHERE `class_Id` = 802099;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802099, 'DiseasedWaspWing', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802099,   1,        128) /* ItemType - Misc */
     , (802099,   3,          7) /* PaletteTemplate - DeepGreen */
     , (802099,   5,         25) /* EncumbranceVal */
     , (802099,   8,         10) /* Mass */
     , (802099,   9,          0) /* ValidLocations - None */
     , (802099,  16,          1) /* ItemUseable - No */
     , (802099,  19,          5) /* Value */
     , (802099,  33,          1) /* Bonded - Bonded */
     , (802099,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802099, 114,          1) /* Attuned - Attuned */
     , (802099, 150,        103) /* HookPlacement - Hook */
     , (802099, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802099,  22, True ) /* Inscribable */
     , (802099,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802099,  39,     1.1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802099,   1, 'Diseased Wasp Wing') /* Name */
     , (802099,  33, 'DiseasedWingPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802099,   1,   33558524) /* Setup */
     , (802099,   3,  536870932) /* SoundTable */
     , (802099,   6,   67109312) /* PaletteBase */
     , (802099,   7,  268435546) /* ClothingBase */
     , (802099,   8,  100670061) /* Icon */
     , (802099,  22,  872415275) /* PhysicsEffectTable */;
