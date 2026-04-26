DELETE FROM `weenie` WHERE `class_Id` = 802046;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802046, 'DemonsPerch', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802046,   1,      65536) /* ItemType - Portal */
     , (802046,  16,         32) /* ItemUseable - Remote */
     , (802046,  86,         30) /* MinLevel */
     , (802046,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802046, 111,         32) /* PortalBitmask - Unrestricted */
     , (802046, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802046,   1, True ) /* Stuck */
     , (802046,  11, False) /* IgnoreCollisions */
     , (802046,  12, True ) /* ReportCollisions */
     , (802046,  13, True ) /* Ethereal */
     , (802046,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802046,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802046,   1, 'Demons Perch (30-59)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802046,   1,   33555922) /* Setup */
     , (802046,   2,  150994947) /* MotionTable */
     , (802046,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802046, 2, 4070899714, 12.6895, 30.1406, 10.039, 0.946084, 0, 0, 0.323922) /* Destination */
/* @teleloc 0xF2A50002 [12.689500 30.140600 10.039000] 0.946084 0.000000 0.000000 0.323922 */;
