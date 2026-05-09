DELETE FROM `weenie` WHERE `class_Id` = 1000216;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000216, 'StoneFoundation', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000216,   1,        128) /* ItemType - Misc */
     , (1000216,   8,        500) /* Mass */
     , (1000216,  16,          0) /* ItemUseable - Remote */
     , (1000216,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000216,   1, True ) /* Stuck */
     , (1000216,  11, False) /* IgnoreCollisions */
     , (1000216,  12, True ) /* ReportCollisions */
     , (1000216,  13, False) /* Ethereal */
     , (1000216,  14, False) /* GravityStatus */
     , (1000216,  19, True ) /* Attackable */
     , (1000216,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000216,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000216,   1, 'StoneFoundation') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000216,   1,   33555497) /* Setup */
     /* , (1000216,   2,  150995197) /* MotionTable */;
