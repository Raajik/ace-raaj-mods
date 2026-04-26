DELETE FROM `weenie` WHERE `class_Id` = 1000186;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000186, 'FullWheelBarrow', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000186,   1,        128) /* ItemType - Misc */
     , (1000186,   8,        500) /* Mass */
     , (1000186,  16,          0) /* ItemUseable - Remote */
     , (1000186,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000186,   1, True ) /* Stuck */
     , (1000186,  11, False) /* IgnoreCollisions */
     , (1000186,  12, True ) /* ReportCollisions */
     , (1000186,  13, False) /* Ethereal */
     , (1000186,  14, False) /* GravityStatus */
     , (1000186,  19, True ) /* Attackable */
     , (1000186,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000186,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000186,   1, 'FullWheelBarrow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000186,   1,   33556240) /* Setup */
     /* , (1000186,   2,  150994965) /* MotionTable */;
