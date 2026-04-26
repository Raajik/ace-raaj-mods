DELETE FROM `weenie` WHERE `class_Id` = 802594;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802594, 'SteelTube', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802594,   1,        128) /* ItemType - Misc */
     , (802594,   3,          8) /* PaletteTemplate - Green */
     , (802594,   5,         50) /* EncumbranceVal */
     , (802594,   8,         50) /* Mass */
     , (802594,   9,          0) /* ValidLocations - None */
     , (802594,  11,          1) /* MaxStackSize */
     , (802594,  12,          1) /* StackSize */
     , (802594,  13,         50) /* StackUnitEncumbrance */
     , (802594,  14,         50) /* StackUnitMass */
     , (802594,  15,          0) /* StackUnitValue */
     , (802594,  16,          1) /* ItemUseable - No */
     , (802594,  18,          0) /* UiEffects - Magical */
     , (802594,  19,          0) /* Value */
     , (802594,  33,         -1) /* Bonded - Bonded */
     , (802594,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802594,  22, True ) /* Inscribable */
     , (802594,  23, True ) /* DestroyOnSell */
     , (802594,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802594,  39,      0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802594,   1, 'Steel Tube') /* Name */
     , (802594,  33, 'SteelTubePickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802594,   1,   33559388) /* Setup */
     , (802594,   3,  536870932) /* SoundTable */
     , (802594,   6,   67111919) /* PaletteBase */
     , (802594,   7,  268435723) /* ClothingBase */
     , (802594,   8,  100668298) /* Icon */
     , (802594,  22,  872415275) /* PhysicsEffectTable */;
