DELETE FROM `weenie` WHERE `class_Id` = 1000168;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000168, 'BarTable', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000168,   1,        128) /* ItemType - Misc */
     , (1000168,   8,        500) /* Mass */
     , (1000168,  16,          0) /* ItemUseable - Remote */
     , (1000168,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000168,   1, True ) /* Stuck */
     , (1000168,  11, False) /* IgnoreCollisions */
     , (1000168,  12, True ) /* ReportCollisions */
     , (1000168,  13, False) /* Ethereal */
     , (1000168,  14, False) /* GravityStatus */
     , (1000168,  19, True ) /* Attackable */
     , (1000168,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000168,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000168,   1, 'BarTable') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000168,   1,   33555196) /* Setup */
     /* , (1000168,   2,  150994965) /* MotionTable */;
