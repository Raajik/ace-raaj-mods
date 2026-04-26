DELETE FROM `weenie` WHERE `class_Id` = 1000195;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000195, 'FloatingPillar', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000195,   1,        128) /* ItemType - Misc */
     , (1000195,   8,        500) /* Mass */
     , (1000195,  16,          0) /* ItemUseable - Remote */
     , (1000195,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000195,   1, True ) /* Stuck */
     , (1000195,  11, False) /* IgnoreCollisions */
     , (1000195,  12, True ) /* ReportCollisions */
     , (1000195,  13, False) /* Ethereal */
     , (1000195,  14, False) /* GravityStatus */
     , (1000195,  19, True ) /* Attackable */
     , (1000195,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000195,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000195,   1, 'FloatingPillar') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000195,   1,   33557439) /* Setup */
     /* , (1000195,   2,  150994965) /* MotionTable */;
