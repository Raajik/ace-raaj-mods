DELETE FROM `weenie` WHERE `class_Id` = 1000180;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000180, 'PileofHay', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000180,   1,        128) /* ItemType - Misc */
     , (1000180,   8,        500) /* Mass */
     , (1000180,  16,          0) /* ItemUseable - Remote */
     , (1000180,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000180,   1, True ) /* Stuck */
     , (1000180,  11, False) /* IgnoreCollisions */
     , (1000180,  12, True ) /* ReportCollisions */
     , (1000180,  13, False) /* Ethereal */
     , (1000180,  14, False) /* GravityStatus */
     , (1000180,  19, True ) /* Attackable */
     , (1000180,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000180,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000180,   1, 'PileofHay') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000180,   1,   33555471) /* Setup */
     /* , (1000180,   2,  150994965) /* MotionTable */;
