DELETE FROM `weenie` WHERE `class_Id` = 802129;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802129, 'Paradise Tusk', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802129,   1,        128) /* ItemType - Misc */
     , (802129,   5,        100) /* EncumbranceVal */
     , (802129,   8,         10) /* Mass */
     , (802129,   9,          0) /* ValidLocations - None */
     , (802129,  16,          1) /* ItemUseable - No */
     , (802129,  19,          0) /* Value */
     , (802129,  33,          1) /* Bonded - Bonded */
     , (802129,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802129, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802129,  22, True ) /* Inscribable */
     , (802129,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802129,   1, 'Paradise Tusk') /* Name */
     , (802129,  33, 'ParadiseTusk') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802129,   1,   33557838) /* Setup */
     , (802129,   3,  536870932) /* SoundTable */
     , (802129,   8,  100673056) /* Icon */
     , (802129,  22,  872415275) /* PhysicsEffectTable */;
