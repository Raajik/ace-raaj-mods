DELETE FROM `weenie` WHERE `class_Id` = 800521;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800521, 'Eternal Death Wisp', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800521,   1,        128) /* ItemType - Misc */
     , (800521,   5,          1) /* EncumbranceVal */
     , (800521,   8,          1) /* Mass */
     , (800521,   9,          0) /* ValidLocations - None */
     , (800521,  11,       1000) /* MaxStackSize */
     , (800521,  12,          1) /* StackSize */
     , (800521,  13,         10) /* StackUnitEncumbrance */
     , (800521,  14,         10) /* StackUnitMass */
     , (800521,  15,          1) /* StackUnitValue */
     , (800521,  16,          1) /* ItemUseable - No */
     , (800521,  19,          1) /* Value */
     , (800521,  33,          1) /* Bonded - Bonded */
     , (800521,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800521, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800521,  22, True ) /* Inscribable */
     , (800521,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800521,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800521,   1, 'Eternal Death Wisp (R)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800521,   1,   33554773) /* Setup */
     , (800521,   3,  536870932) /* SoundTable */
     , (800521,   8,  100668176) /* Icon */
     , (800521,  22,  872415275) /* PhysicsEffectTable */;