DELETE FROM `weenie` WHERE `class_Id` = 1000175;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000175, 'Vase4', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000175,   1,        128) /* ItemType - Misc */
     , (1000175,   8,        500) /* Mass */
     , (1000175,  16,          0) /* ItemUseable - Remote */
     , (1000175,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000175,   1, True ) /* Stuck */
     , (1000175,  11, False) /* IgnoreCollisions */
     , (1000175,  12, True ) /* ReportCollisions */
     , (1000175,  13, False) /* Ethereal */
     , (1000175,  14, False) /* GravityStatus */
     , (1000175,  19, True ) /* Attackable */
     , (1000175,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000175,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000175,   1, 'Vase4') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000175,   1,   33555294) /* Setup */
     /* , (1000175,   2,  150994965) /* MotionTable */;
