DELETE FROM `weenie` WHERE `class_Id` = 802877;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802877, 'New Colo Room Four', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802877,   1,      65536) /* ItemType - Portal */
     , (802877,  16,         32) /* ItemUseable - Remote */
     , (802877,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802877, 111,         32) /* PortalBitmask - Unrestricted */
     , (802877, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802877,   1, True ) /* Stuck */
     , (802877,  11, False) /* IgnoreCollisions */
     , (802877,  12, True ) /* ReportCollisions */
     , (802877,  13, True ) /* Ethereal */
     , (802877,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802877,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802877,   1, 'Next Room') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802877,   1,  33561552) /* Setup */
     , (802877,   2,  0x09000016) /* MotionTable */
     , (802877,   3,  536871119) /* SoundTable */
     , (802877,   8,  100689885) /* Icon */
     , (802877,  22,  0x3400002B) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802877, 2, 0x00B0015F, 30.000000, -1213.000000, 0.005000, 1.000000, 0, 0, 0.000000) /* Destination */
/* @teleloc  0x00B0015F [30.000000 -1213.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 */;
