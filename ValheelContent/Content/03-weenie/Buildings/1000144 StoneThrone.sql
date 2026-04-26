DELETE FROM `weenie` WHERE `class_Id` = 1000144;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000144, 'StoneThrone', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000144,   1,        128) /* ItemType - Misc */
     , (1000144,   8,        500) /* Mass */
     , (1000144,  16,          0) /* ItemUseable - Remote */
     , (1000144,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000144,   1, True ) /* Stuck */
     , (1000144,  11, False) /* IgnoreCollisions */
     , (1000144,  12, True ) /* ReportCollisions */
     , (1000144,  13, False) /* Ethereal */
     , (1000144,  14, False) /* GravityStatus */
     , (1000144,  19, True ) /* Attackable */
     , (1000144,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000144,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000144,   1, 'StoneThrone') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000144,   1,   33554823) /* Setup */
     /* , (1000144,   2,  150994965) /* MotionTable */;
