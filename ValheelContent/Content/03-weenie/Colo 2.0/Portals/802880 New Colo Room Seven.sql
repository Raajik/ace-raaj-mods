DELETE FROM `weenie` WHERE `class_Id` = 802880;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802880, 'New Colo Room Seven', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802880,   1,      65536) /* ItemType - Portal */
     , (802880,  16,         32) /* ItemUseable - Remote */
     , (802880,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802880, 111,         32) /* PortalBitmask - Unrestricted */
     , (802880, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802880,   1, True ) /* Stuck */
     , (802880,  11, False) /* IgnoreCollisions */
     , (802880,  12, True ) /* ReportCollisions */
     , (802880,  13, True ) /* Ethereal */
     , (802880,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802880,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802880,   1, 'Next Room') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802880,   1,  33561552) /* Setup */
     , (802880,   2,  0x09000016) /* MotionTable */
     , (802880,   3,  536871119) /* SoundTable */
     , (802880,   8,  100689885) /* Icon */
     , (802880,  22,  0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802880, 2, 0x00B00156, 30.000000, -943.000000, 0.005000, 1.000000, 0, 0, 0.000000) /* Destination */
/* @teleloc  0x00B00156 [30.000000 -943.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 */;
