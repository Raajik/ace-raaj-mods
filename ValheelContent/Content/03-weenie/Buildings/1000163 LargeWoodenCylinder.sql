DELETE FROM `weenie` WHERE `class_Id` = 1000163;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000163, 'LargeWoodenCylinder', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000163,   1,        128) /* ItemType - Misc */
     , (1000163,   8,        500) /* Mass */
     , (1000163,  16,          0) /* ItemUseable - Remote */
     , (1000163,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000163,   1, True ) /* Stuck */
     , (1000163,  11, False) /* IgnoreCollisions */
     , (1000163,  12, True ) /* ReportCollisions */
     , (1000163,  13, False) /* Ethereal */
     , (1000163,  14, False) /* GravityStatus */
     , (1000163,  19, True ) /* Attackable */
     , (1000163,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000163,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000163,   1, 'LargeWoodenCylinder') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000163,   1,   33555090) /* Setup */
     /* , (1000163,   2,  150994965) /* MotionTable */;
