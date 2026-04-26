DELETE FROM `weenie` WHERE `class_Id` = 801594;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801594, 'Black Death Kill Confirmed', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801594,   1,       8192) /* ItemType - Writable */
     , (801594,   5,         25) /* EncumbranceVal */
     , (801594,   8,          5) /* Mass */
     , (801594,   9,          0) /* ValidLocations - None */
     , (801594,  16,          8) /* ItemUseable - Contained */
     , (801594,  19,          0) /* Value */
     , (801594,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801594,  22, False) /* Inscribable */
     , (801594,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801594,  39,    1.22) /* DefaultScale */
     , (801594,  54,     0.2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801594,   1, 'Black Death Kill Confirmed') /* Name */
     , (801594,  33, 'BlackDeathKillConfirmed') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801594,   1,   33554773) /* Setup */
     , (801594,   3,  536870932) /* SoundTable */
     , (801594,   8,  100672431) /* Icon */
     , (801594,  22,  872415275) /* PhysicsEffectTable */;

