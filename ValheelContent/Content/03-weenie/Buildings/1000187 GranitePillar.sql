DELETE FROM `weenie` WHERE `class_Id` = 1000187;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000187, 'GranitePillar', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000187,   1,        128) /* ItemType - Misc */
     , (1000187,   8,        500) /* Mass */
     , (1000187,  16,          0) /* ItemUseable - Remote */
     , (1000187,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000187,   1, True ) /* Stuck */
     , (1000187,  11, False) /* IgnoreCollisions */
     , (1000187,  12, True ) /* ReportCollisions */
     , (1000187,  13, False) /* Ethereal */
     , (1000187,  14, False) /* GravityStatus */
     , (1000187,  19, True ) /* Attackable */
     , (1000187,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000187,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000187,   1, 'GranitePillar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000187,   1,   33556573) /* Setup */
     /* , (1000187,   2,  150994965) /* MotionTable */;
