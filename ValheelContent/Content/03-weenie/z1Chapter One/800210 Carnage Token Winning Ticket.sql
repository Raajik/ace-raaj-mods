DELETE FROM `weenie` WHERE `class_Id` = 800210;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800210, 'Winning Ticket', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800210,   1,       32768) /* ItemType - Gem */
     , (800210,   5,          5) /* EncumbranceVal */
     , (800210,  16,          1) /* ItemUseable - No */
     , (800210,  19,          10) /* Value */
     , (800210,  33,          1) /* Bonded - Bonded */
     , (800210,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800210, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800210,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800210,   1, 'Carnage Token Winning Ticket') /* Name */
     , (800210,  15, 'Give this Ticket to the Shadow Explorer to receive Carnage Tokens.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800210,   1,   33554659) /* Setup */
     , (800210,   3,  536870932) /* SoundTable */
     , (800210,   8,  100692711) /* Icon */
     , (800210,  22,  872415275) /* PhysicsEffectTable */;
