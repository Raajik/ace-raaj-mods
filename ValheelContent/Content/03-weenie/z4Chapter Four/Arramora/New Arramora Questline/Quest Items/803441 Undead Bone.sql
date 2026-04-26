DELETE FROM `weenie` WHERE `class_Id` = 803441;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803441, 'ArraBones', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803441,   1,        128) /* ItemType - Misc */
     , (803441,   5,         10) /* EncumbranceVal */
     , (803441,   8,         10) /* Mass */
     , (803441,   9,          0) /* ValidLocations - None */
     , (803441,  16,          1) /* ItemUseable - No */
     , (803441,  19,          0) /* Value */
     , (803441,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803441, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803441,  22, True ) /* Inscribable */
     , (803441,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803441,   1, 'Undead Bone') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803441,   1,   33556593) /* Setup */
     , (803441,   3,  536870932) /* SoundTable */
     , (803441,   8,  100673055) /* Icon */
     , (803441,  22,  872415275) /* PhysicsEffectTable */;
