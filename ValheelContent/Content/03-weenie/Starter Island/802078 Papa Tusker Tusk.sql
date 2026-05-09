DELETE FROM `weenie` WHERE `class_Id` = 802078;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802078, 'Papa Tusker Tusk', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802078,   1,        128) /* ItemType - Misc */
     , (802078,   5,        100) /* EncumbranceVal */
     , (802078,   8,         10) /* Mass */
     , (802078,   9,          0) /* ValidLocations - None */
     , (802078,  16,          1) /* ItemUseable - No */
     , (802078,  19,          0) /* Value */
     , (802078,  33,          1) /* Bonded - Bonded */
     , (802078,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802078, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802078,  22, True ) /* Inscribable */
     , (802078,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802078,   1, 'Papa Tusker Tusk') /* Name */
     , (802078,  15, 'A tusk plucked from the Papa Tusker. Brighteyes'' Protoge collects these.') /* ShortDesc */
     , (802078,  33, 'PapaTusk') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802078,   1,   33557838) /* Setup */
     , (802078,   3,  536870932) /* SoundTable */
     , (802078,   8,  100673056) /* Icon */
     , (802078,  22,  872415275) /* PhysicsEffectTable */;
