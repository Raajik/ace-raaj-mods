DELETE FROM `weenie` WHERE `class_Id` = 1000221;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000221, 'Jumping Rock', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000221,   1,        128) /* ItemType - Misc */
     , (1000221,   8,        500) /* Mass */
     , (1000221,  16,          0) /* ItemUseable - Remote */
     , (1000221,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000221,   1, True ) /* Stuck */
     , (1000221,  11, False) /* IgnoreCollisions */
     , (1000221,  12, True ) /* ReportCollisions */
     , (1000221,  13, False) /* Ethereal */
     , (1000221,  14, False) /* GravityStatus */
     , (1000221,  19, True ) /* Attackable */
     , (1000221,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000221,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000221,   1, 'Jumping Rock') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000221,   1,   33561153) /* Setup */
     /* , (1000221,   2,  150994965) /* MotionTable */;
