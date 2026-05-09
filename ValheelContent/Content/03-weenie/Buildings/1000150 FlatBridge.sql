DELETE FROM `weenie` WHERE `class_Id` = 1000150;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000150, 'FlatBridge', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000150,   1,        128) /* ItemType - Misc */
     , (1000150,   8,        500) /* Mass */
     , (1000150,  16,          0) /* ItemUseable - Remote */
     , (1000150,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000150,   1, True ) /* Stuck */
     , (1000150,  11, False) /* IgnoreCollisions */
     , (1000150,  12, True ) /* ReportCollisions */
     , (1000150,  13, False) /* Ethereal */
     , (1000150,  14, False) /* GravityStatus */
     , (1000150,  19, True ) /* Attackable */
     , (1000150,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000150,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000150,   1, 'FlatBridge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000150,   1,   33554981) /* Setup */
     /* , (1000150,   2,  150994965) /* MotionTable */;
