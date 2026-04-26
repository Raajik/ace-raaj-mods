DELETE FROM `weenie` WHERE `class_Id` = 800555;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800555, 'Spiny Chittick', 51, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800555,   1,        128) /* ItemType - Misc */
     , (800555,   5,          1) /* EncumbranceVal */
     , (800555,   8,          1) /* Mass */
     , (800555,   9,          0) /* ValidLocations - None */
     , (800555,  11,       1000) /* MaxStackSize */
     , (800555,  12,          1) /* StackSize */
     , (800555,  13,         10) /* StackUnitEncumbrance */
     , (800555,  14,         10) /* StackUnitMass */
     , (800555,  15,          1) /* StackUnitValue */
     , (800555,  16,          1) /* ItemUseable - No */
     , (800555,  19,          1) /* Value */
     , (800555,  33,          1) /* Bonded - Bonded */
     , (800555,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800555, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800555,  22, True ) /* Inscribable */
     , (800555,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800555,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800555,   1, 'Spiny Chittick (C)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800555,   1,   33554773) /* Setup */
     , (800555,   3,  536870932) /* SoundTable */
     , (800555,   8,  100668176) /* Icon */
     , (800555,  22,  872415275) /* PhysicsEffectTable */;