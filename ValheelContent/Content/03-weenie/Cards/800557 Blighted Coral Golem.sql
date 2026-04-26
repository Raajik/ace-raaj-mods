DELETE FROM `weenie` WHERE `class_Id` = 800557;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800557, 'Blighted Coral Golem', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800557,   1,        128) /* ItemType - Misc */
     , (800557,   5,          1) /* EncumbranceVal */
     , (800557,   8,          1) /* Mass */
     , (800557,   9,          0) /* ValidLocations - None */
     , (800557,  11,       1000) /* MaxStackSize */
     , (800557,  12,          1) /* StackSize */
     , (800557,  13,         10) /* StackUnitEncumbrance */
     , (800557,  14,         10) /* StackUnitMass */
     , (800557,  15,          1) /* StackUnitValue */
     , (800557,  16,          1) /* ItemUseable - No */
     , (800557,  19,          1) /* Value */
     , (800557,  33,          1) /* Bonded - Bonded */
     , (800557,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800557, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800557,  22, True ) /* Inscribable */
     , (800557,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800557,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800557,   1, 'Blighted Coral Golem (UC)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800557,   1,   33554773) /* Setup */
     , (800557,   3,  536870932) /* SoundTable */
     , (800557,   8,  100668176) /* Icon */
     , (800557,  22,  872415275) /* PhysicsEffectTable */;