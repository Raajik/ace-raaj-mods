DELETE FROM `weenie` WHERE `class_Id` = 1000134;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000134, 'WoodenLogs', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000134,   1,        128) /* ItemType - Misc */
     , (1000134,   8,        500) /* Mass */
     , (1000134,  16,          0) /* ItemUseable - Remote */
     , (1000134,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000134,   1, True ) /* Stuck */
     , (1000134,  11, False) /* IgnoreCollisions */
     , (1000134,  12, True ) /* ReportCollisions */
     , (1000134,  13, False) /* Ethereal */
     , (1000134,  14, False) /* GravityStatus */
     , (1000134,  19, True ) /* Attackable */
     , (1000134,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000134,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000134,   1, 'WoodenLogs') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000134,   1,   33554698) /* Setup */
     /* , (1000134,   2,  150994965) /* MotionTable */;
