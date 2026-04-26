DELETE FROM `weenie` WHERE `class_Id` = 1000152;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000152, 'FloorSquare', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000152,   1,        128) /* ItemType - Misc */
     , (1000152,   8,        500) /* Mass */
     , (1000152,  16,          0) /* ItemUseable - Remote */
     , (1000152,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000152,   1, True ) /* Stuck */
     , (1000152,  11, False) /* IgnoreCollisions */
     , (1000152,  12, True ) /* ReportCollisions */
     , (1000152,  13, False) /* Ethereal */
     , (1000152,  14, False) /* GravityStatus */
     , (1000152,  19, True ) /* Attackable */
     , (1000152,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000152,  39,       4) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000152,   1, 'FloorSquare') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000152,   1,   33555034) /* Setup */
     /* , (1000152,   2,  150994965) /* MotionTable */;
