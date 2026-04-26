DELETE FROM `weenie` WHERE `class_Id` = 801436;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801436, 'LinenPowder2', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801436,   1,        128) /* ItemType - Misc */
     , (801436,   5,          1) /* EncumbranceVal */
     , (801436,   8,          1) /* Mass */
     , (801436,   9,          0) /* ValidLocations - None */
     , (801436,  11,      50000) /* MaxStackSize */ 
     , (801436,  12,          1) /* StackSize */
     , (801436,  15,          1) /* StackUnitValue */
     , (801436,  16,          1) /* ItemUseable - No */
     , (801436,  18,          1) /* UiEffects - Magical */
     , (801436,  19,          0) /* Value */
     , (801436,  33,          1) /* Bonded - Bonded */
     , (801436,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801436,  22, True ) /* Inscribable */
     , (801436,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801436,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801436,   1, 'Linen Powder') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801436,   1,   33554773) /* Setup */
     , (801436,   3,  536870932) /* SoundTable */
     , (801436,   8,  100668386) /* Icon */
     , (801436,  22,  872415275) /* PhysicsEffectTable */;
