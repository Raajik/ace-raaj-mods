DELETE FROM `weenie` WHERE `class_Id` = 802008;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802008, 'AunBurger', 18, '2005-02-09 10:00:00') /* Food */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802008,   1,         32) /* ItemType - Food */
     , (802008,   5,          0) /* EncumbranceVal */
     , (802008,   8,          0) /* Mass */
     , (802008,   9,          0) /* ValidLocations - None */
     , (802008,  11,       1000) /* MaxStackSize */
     , (802008,  12,          1) /* StackSize */
     , (802008,  13,          0) /* StackUnitEncumbrance */
     , (802008,  14,          0) /* StackUnitMass */
     , (802008,  15,          5) /* StackUnitValue */
     , (802008,  16,          8) /* ItemUseable - Contained */
     , (802008,  18,          4) /* UiEffects - BoostHealth */
     , (802008,  19,          5) /* Value */
     , (802008,  89,          2) /* BoosterEnum - Health */
     , (802008,  90,        500) /* BoostValue */
     , (802008,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802008,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802008,  39,     0.7) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802008,   1, 'AunBurger') /* Name */
     , (802008,  14, 'Use this item to eat it.') /* Use */
     , (802008,  15, 'A juicy AunBurger, on bread.  Said to be old Foster''s favorite.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802008,   1,   33556680) /* Setup */
     , (802008,   3,  536870932) /* SoundTable */
     , (802008,   8,  100670859) /* Icon */
     , (802008,  22,  872415275) /* PhysicsEffectTable */;
