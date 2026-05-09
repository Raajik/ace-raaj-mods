DELETE FROM `weenie` WHERE `class_Id` = 1000167;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000167, 'DyingPineTree', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000167,   1,        128) /* ItemType - Misc */
     , (1000167,   8,        500) /* Mass */
     , (1000167,  16,          0) /* ItemUseable - Remote */
     , (1000167,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000167,   1, True ) /* Stuck */
     , (1000167,  11, False) /* IgnoreCollisions */
     , (1000167,  12, True ) /* ReportCollisions */
     , (1000167,  13, False) /* Ethereal */
     , (1000167,  14, False) /* GravityStatus */
     , (1000167,  19, True ) /* Attackable */
     , (1000167,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000167,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000167,   1, 'DyingPineTree') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000167,   1,   33555161) /* Setup */
     /* , (1000167,   2,  150994965) /* MotionTable */;
