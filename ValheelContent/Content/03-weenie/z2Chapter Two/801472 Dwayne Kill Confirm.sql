DELETE FROM `weenie` WHERE `class_Id` = 801472;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801472, 'Dwayne Kill Confirmed', 8, '2005-02-09 10:00:00') /* Book */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801472,   1,       8192) /* ItemType - Writable */
     , (801472,   5,         25) /* EncumbranceVal */
     , (801472,   8,          5) /* Mass */
     , (801472,   9,          0) /* ValidLocations - None */
     , (801472,  16,          8) /* ItemUseable - Contained */
     , (801472,  19,          0) /* Value */
     , (801472,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801472,  22, False) /* Inscribable */
     , (801472,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801472,  39,    1.22) /* DefaultScale */
     , (801472,  54,     0.2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801472,   1, 'Dwayne Kill Confirmed') /* Name */
     , (801472,  33, 'DwayneKillConfirmed') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801472,   1,   33554773) /* Setup */
     , (801472,   3,  536870932) /* SoundTable */
     , (801472,   8,  100672431) /* Icon */
     , (801472,  22,  872415275) /* PhysicsEffectTable */;

