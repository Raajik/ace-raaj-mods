DELETE FROM `weenie` WHERE `class_Id` = 800348;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800348, 'bedstone', 25, '2005-02-09 10:00:00') /* LifeStone */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800348,   1,  268435456) /* ItemType - LifeStone */
     , (800348,  16,         32) /* ItemUseable - Remote */
     , (800348,  93,       1040) /* PhysicsState - IgnoreCollisions, Gravity */
     , (800348, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800348,   1, True ) /* Stuck */
     , (800348,  12, False) /* ReportCollisions */
     , (800348,  13, False) /* Ethereal */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800348,  54,       2) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800348,   1, 'Bedstone') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800348,   1,   33554797) /* Setup */
     , (800348,   8,  100672422) /* Icon */;
