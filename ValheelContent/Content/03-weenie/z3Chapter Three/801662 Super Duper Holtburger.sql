DELETE FROM `weenie` WHERE `class_Id` = 801662;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801662, 'Ultra Refreshing Elixir2', 18, '2005-02-09 10:00:00') /* Food */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801662,   1,         32) /* ItemType - Food */
     , (801662,   5,          0) /* EncumbranceVal */
     , (801662,   8,          0) /* Mass */
     , (801662,   9,          0) /* ValidLocations - None */
     , (801662,  11,       1000) /* MaxStackSize */
     , (801662,  12,          1) /* StackSize */
     , (801662,  13,          0) /* StackUnitEncumbrance */
     , (801662,  14,          0) /* StackUnitMass */
     , (801662,  15,          0) /* StackUnitValue */
     , (801662,  16,          8) /* ItemUseable - Contained */
     , (801662,  18,          4) /* UiEffects - BoostHealth */
     , (801662,  19,         89) /* Value */
     , (801662,  89,          2) /* BoosterEnum - Health */
     , (801662,  90,        100) /* BoostValue */
     , (801662,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801662,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801662,  39,     0.7) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801662,   1, 'Super Duper Holtburger') /* Name */
     , (801662,  14, 'Use this item to eat it.') /* Use */
     , (801662,  15, 'A juicy Holtburger, on bread.  Said to be old Foster''s favorite.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801662,   1,   33556680) /* Setup */
     , (801662,   3,  536870932) /* SoundTable */
     , (801662,   8,  100670859) /* Icon */
     , (801662,  22,  872415275) /* PhysicsEffectTable */;
