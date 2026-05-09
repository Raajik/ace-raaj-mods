DELETE FROM `weenie` WHERE `class_Id` = 803270;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803270, 'Life Crystal', 128, '2005-02-09 10:00:00') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803270,   1,        128) /* ItemType - Misc */
     , (803270,  93,         16) /* PhysicsState - IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803270,   1, True ) /* Stuck */
     , (803270,  12, True) /* ReportCollisions */
     , (803270,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803270,  39,       2.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803270,   1, 'Life Crystal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803270,   1,   33556732) /* Setup */
     , (803270,   2,  150995107) /* MotionTable */
     , (803270,   3,  536871001) /* SoundTable */
     , (803270,   8,  100675939) /* Icon */;
