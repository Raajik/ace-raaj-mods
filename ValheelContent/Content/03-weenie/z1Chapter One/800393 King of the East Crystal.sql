DELETE FROM `weenie` WHERE `class_Id` = 800393;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800393, 'Tradewind''s Path King of the East Crystal', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800393,   1,       2048) /* ItemType - Gem */
     , (800393,   5,         50) /* EncumbranceVal */
     , (800393,   8,         25) /* Mass */
     , (800393,   9,          0) /* ValidLocations - None */
     , (800393,  16,          1) /* ItemUseable - No */
     , (800393,  19,         75) /* Value */
     , (800393,  33,          1) /* Bonded - Bonded */
     , (800393,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800393, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800393,  22, True ) /* Inscribable */
     , (800393,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800393,   1, 'King of the East Crystal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800393,   1,   33554809) /* Setup */
     , (800393,   8,  100673955) /* Icon */;
