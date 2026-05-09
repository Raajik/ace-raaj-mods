DELETE FROM `weenie` WHERE `class_Id` = 800553;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800553, 'A''nekshay Mummy', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800553,   1,        128) /* ItemType - Misc */
     , (800553,   5,          1) /* EncumbranceVal */
     , (800553,   8,          1) /* Mass */
     , (800553,   9,          0) /* ValidLocations - None */
     , (800553,  11,       1000) /* MaxStackSize */
     , (800553,  12,          1) /* StackSize */
     , (800553,  13,         10) /* StackUnitEncumbrance */
     , (800553,  14,         10) /* StackUnitMass */
     , (800553,  15,          1) /* StackUnitValue */
     , (800553,  16,          1) /* ItemUseable - No */
     , (800553,  19,          1) /* Value */
     , (800553,  33,          1) /* Bonded - Bonded */
     , (800553,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800553, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800553,  22, True ) /* Inscribable */
     , (800553,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800553,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800553,   1, 'A''nekshay Mummy (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800553,   1,   33554773) /* Setup */
     , (800553,   3,  536870932) /* SoundTable */
     , (800553,   8,  100668176) /* Icon */
     , (800553,  22,  872415275) /* PhysicsEffectTable */;