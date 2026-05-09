DELETE FROM `weenie` WHERE `class_Id` = 802080;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802080, 'OlthoiNymphPincer', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802080,   1,        128) /* ItemType - Misc */
     , (802080,   5,        100) /* EncumbranceVal */
     , (802080,   8,        100) /* Mass */
     , (802080,   9,          0) /* ValidLocations - None */
     , (802080,  16,          1) /* ItemUseable - No */
     , (802080,  19,          0) /* Value */
     , (802080,  33,          1) /* Bonded - Bonded */
     , (802080,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802080, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802080,  22, True ) /* Inscribable */
     , (802080,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802080,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802080,   1, 'Nymph Pincer') /* Name */
     , (802080,  16, 'The pincer off of an Olthoi Nymph.') /* LongDesc */
     , (802080,  33, 'NymphPincer') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802080,   1,   33554817) /* Setup */
     , (802080,   3,  536870932) /* SoundTable */
     , (802080,   8,  100672037) /* Icon */
     , (802080,  22,  872415275) /* PhysicsEffectTable */;
