DELETE FROM `weenie` WHERE `class_Id` = 800511;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800511, 'Putrid Rat', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800511,   1,        128) /* ItemType - Misc */
     , (800511,   5,          1) /* EncumbranceVal */
     , (800511,   8,          1) /* Mass */
     , (800511,   9,          0) /* ValidLocations - None */
     , (800511,  11,       1000) /* MaxStackSize */
     , (800511,  12,          1) /* StackSize */
     , (800511,  13,         10) /* StackUnitEncumbrance */
     , (800511,  14,         10) /* StackUnitMass */
     , (800511,  15,          1) /* StackUnitValue */
     , (800511,  16,          1) /* ItemUseable - No */
     , (800511,  19,          1) /* Value */
     , (800511,  33,          1) /* Bonded - Bonded */
     , (800511,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800511, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800511,  22, True ) /* Inscribable */
     , (800511,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800511,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800511,   1, 'Putrid Rat (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800511,   1,   33554773) /* Setup */
     , (800511,   3,  536870932) /* SoundTable */
     , (800511,   8,  100668176) /* Icon */
     , (800511,  22,  872415275) /* PhysicsEffectTable */;