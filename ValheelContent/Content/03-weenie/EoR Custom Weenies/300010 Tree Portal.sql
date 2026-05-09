DELETE FROM `weenie` WHERE `class_Id` = 300010;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300010, 'newportalcandethkeeptree', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300010,   1,      65536) /* ItemType - Portal */
     , (300010,  16,         32) /* ItemUseable - Remote */
     , (300010,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (300010, 111,         1) /* PortalBitmask - Unrestricted, NoSummon, NoRecall */
     , (300010, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300010,   1, True ) /* Stuck */
     , (300010,  11, False) /* IgnoreCollisions */
     , (300010,  12, True ) /* ReportCollisions */
     , (300010,  13, True ) /* Ethereal */
     , (300010,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300010,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300010,   1, 'Tree Portal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300010,   1, 0x020001B3) /* Setup */
     , (300010,   2, 0x09000003) /* MotionTable */
     , (300010,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300010, 2, 0x2B120019, 89.8, 6.2, 73, -0.92388, 0, 0, -0.382684) /* Destination */
/* @teleloc 0x2B120019 [89.800003 6.200000 73.000000] -0.923880 0.000000 0.000000 -0.382684 */;
