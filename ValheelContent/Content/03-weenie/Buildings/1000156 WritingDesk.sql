DELETE FROM `weenie` WHERE `class_Id` = 1000156;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000156, 'WritingDesk', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000156,   1,        128) /* ItemType - Misc */
     , (1000156,   8,        500) /* Mass */
     , (1000156,  16,          0) /* ItemUseable - Remote */
     , (1000156,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000156,   1, True ) /* Stuck */
     , (1000156,  11, False) /* IgnoreCollisions */
     , (1000156,  12, True ) /* ReportCollisions */
     , (1000156,  13, False) /* Ethereal */
     , (1000156,  14, False) /* GravityStatus */
     , (1000156,  19, True ) /* Attackable */
     , (1000156,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000156,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000156,   1, 'WritingDesk') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000156,   1,   33555058) /* Setup */
     /* , (1000156,   2,  150994965) /* MotionTable */;
