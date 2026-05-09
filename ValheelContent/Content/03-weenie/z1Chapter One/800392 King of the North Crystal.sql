DELETE FROM `weenie` WHERE `class_Id` = 800392;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800392, 'Tradewind''s Path King of the North Crystal', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800392,   1,       2048) /* ItemType - Gem */
     , (800392,   5,         50) /* EncumbranceVal */
     , (800392,   8,         25) /* Mass */
     , (800392,   9,          0) /* ValidLocations - None */
     , (800392,  16,          1) /* ItemUseable - No */
     , (800392,  19,         75) /* Value */
     , (800392,  33,          1) /* Bonded - Bonded */
     , (800392,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800392, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800392,  22, True ) /* Inscribable */
     , (800392,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800392,   1, 'King of the North Crystal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800392,   1,   33554809) /* Setup */
     , (800392,   8,  100673955) /* Icon */;
