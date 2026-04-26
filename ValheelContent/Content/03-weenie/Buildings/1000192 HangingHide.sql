DELETE FROM `weenie` WHERE `class_Id` = 1000192;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000192, 'HangingHide', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000192,   1,        128) /* ItemType - Misc */
     , (1000192,   8,        500) /* Mass */
     , (1000192,  16,          0) /* ItemUseable - Remote */
     , (1000192,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000192,   1, True ) /* Stuck */
     , (1000192,  11, False) /* IgnoreCollisions */
     , (1000192,  12, True ) /* ReportCollisions */
     , (1000192,  13, False) /* Ethereal */
     , (1000192,  14, False) /* GravityStatus */
     , (1000192,  19, True ) /* Attackable */
     , (1000192,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000192,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000192,   1, 'HangingHide') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000192,   1,   33557135) /* Setup */
     /* , (1000192,   2,  150994965) /* MotionTable */;
