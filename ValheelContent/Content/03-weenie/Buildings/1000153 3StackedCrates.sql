DELETE FROM `weenie` WHERE `class_Id` = 1000153;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000153, '3StackedCrates', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000153,   1,        128) /* ItemType - Misc */
     , (1000153,   8,        500) /* Mass */
     , (1000153,  16,          0) /* ItemUseable - Remote */
     , (1000153,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000153,   1, True ) /* Stuck */
     , (1000153,  11, False) /* IgnoreCollisions */
     , (1000153,  12, True ) /* ReportCollisions */
     , (1000153,  13, False) /* Ethereal */
     , (1000153,  14, False) /* GravityStatus */
     , (1000153,  19, True ) /* Attackable */
     , (1000153,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000153,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000153,   1, '3StackedCrates') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000153,   1,   33555046) /* Setup */
     /* , (1000153,   2,  150994965) /* MotionTable */;
