DELETE FROM `weenie` WHERE `class_Id` = 800391;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800391, 'Tradewind''s Path King of the West Crystal', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800391,   1,       2048) /* ItemType - Gem */
     , (800391,   5,         50) /* EncumbranceVal */
     , (800391,   8,         25) /* Mass */
     , (800391,   9,          0) /* ValidLocations - None */
     , (800391,  16,          1) /* ItemUseable - No */
     , (800391,  19,         75) /* Value */
     , (800391,  33,          1) /* Bonded - Bonded */
     , (800391,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800391, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800391,  22, True ) /* Inscribable */
     , (800391,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800391,   1, 'King of the West Crystal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800391,   1,   33554809) /* Setup */
     , (800391,   8,  100673955) /* Icon */;
