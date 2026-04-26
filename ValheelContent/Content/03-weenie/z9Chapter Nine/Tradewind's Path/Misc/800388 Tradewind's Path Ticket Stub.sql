DELETE FROM `weenie` WHERE `class_Id` = 800388;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800388, 'TPStub', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800388,   1,        128) /* ItemType - Misc */
     , (800388,   5,          5) /* EncumbranceVal */
     , (800388,  16,          1) /* ItemUseable - No */
     , (800388,  19,          0) /* Value */
     , (800388,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800388, 267,       3600) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800388,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800388,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800388,   1, 'Tradewind''s Path Ticket Stub') /* Name */
     , (800388,  16, 'This ticket will disappear after 1 hour. If you experience issues in Tradewind''s Path, turn this ticket back into the Tradewind''s Path Guard for a reimbursement on your ticket.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800388,   1,   33554773) /* Setup */
     , (800388,   3,  536870932) /* SoundTable */
     , (800388,   8,  100689372) /* Icon */
     , (800388,  22,  872415275) /* PhysicsEffectTable */;
