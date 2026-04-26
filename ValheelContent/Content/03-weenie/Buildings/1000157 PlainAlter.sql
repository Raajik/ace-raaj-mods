DELETE FROM `weenie` WHERE `class_Id` = 1000157;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000157, 'PlainAlter', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000157,   1,        128) /* ItemType - Misc */
     , (1000157,   8,        500) /* Mass */
     , (1000157,  16,          0) /* ItemUseable - Remote */
     , (1000157,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000157,   1, True ) /* Stuck */
     , (1000157,  11, False) /* IgnoreCollisions */
     , (1000157,  12, True ) /* ReportCollisions */
     , (1000157,  13, False) /* Ethereal */
     , (1000157,  14, False) /* GravityStatus */
     , (1000157,  19, True ) /* Attackable */
     , (1000157,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000157,  39,     1.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000157,   1, 'PlainAlter') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000157,   1,   33555060) /* Setup */
     /* , (1000157,   2,  150994965) /* MotionTable */;
