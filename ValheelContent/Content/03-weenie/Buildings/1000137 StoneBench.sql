DELETE FROM `weenie` WHERE `class_Id` = 1000137;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000137, 'StoneBench', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000137,   1,        128) /* ItemType - Misc */
     , (1000137,   8,        500) /* Mass */
     , (1000137,  16,          0) /* ItemUseable - Remote */
     , (1000137,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000137,   1, True ) /* Stuck */
     , (1000137,  11, False) /* IgnoreCollisions */
     , (1000137,  12, True ) /* ReportCollisions */
     , (1000137,  13, False) /* Ethereal */
     , (1000137,  14, False) /* GravityStatus */
     , (1000137,  19, True ) /* Attackable */
     , (1000137,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000137,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000137,   1, 'StoneBench') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000137,   1,   33554722) /* Setup */
     /* , (1000137,   2,  150994965) /* MotionTable */;
