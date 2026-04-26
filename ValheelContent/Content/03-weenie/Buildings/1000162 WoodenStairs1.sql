DELETE FROM `weenie` WHERE `class_Id` = 1000162;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000162, 'WoodenStairs1', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000162,   1,        128) /* ItemType - Misc */
     , (1000162,   8,        500) /* Mass */
     , (1000162,  16,          0) /* ItemUseable - Remote */
     , (1000162,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000162,   1, True ) /* Stuck */
     , (1000162,  11, False) /* IgnoreCollisions */
     , (1000162,  12, True ) /* ReportCollisions */
     , (1000162,  13, False) /* Ethereal */
     , (1000162,  14, False) /* GravityStatus */
     , (1000162,  19, True ) /* Attackable */
     , (1000162,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000162,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000162,   1, 'WoodenStairs1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000162,   1,   33555250) /* Setup */
     /* , (1000162,   2,  150994965) /* MotionTable */;
