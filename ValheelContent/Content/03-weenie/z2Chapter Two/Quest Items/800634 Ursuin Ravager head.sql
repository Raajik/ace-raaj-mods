DELETE FROM `weenie` WHERE `class_Id` = 800634;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800634, 'Ursuin Ravager Head', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800634,   1,        128) /* ItemType - Misc */
     , (800634,   5,        400) /* EncumbranceVal */
     , (800634,   8,        200) /* Mass */
     , (800634,   9,          0) /* ValidLocations - None */
     , (800634,  16,          1) /* ItemUseable - No */
     , (800634,  19,          5) /* Value */
     , (800634,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800634, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800634,   1, True ) /* Stuck */
     , (800634,  14, True ) /* GravityStatus */
     , (800634,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800634,   1, 'Ursuin Ravager Head') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800634,   1,   33556974) /* Setup */
     , (800634,   3,  536870932) /* SoundTable */
     , (800634,   8,  100671287) /* Icon */
     , (800634,  22,  872415275) /* PhysicsEffectTable */;
