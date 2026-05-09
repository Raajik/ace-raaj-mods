DELETE FROM `weenie` WHERE `class_Id` = 802042;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802042, 'ThePit', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802042,   1,      65536) /* ItemType - Portal */
     , (802042,  16,         32) /* ItemUseable - Remote */
     , (802042,  86,          1) /* MinLevel */
     , (802042,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802042, 111,         32) /* PortalBitmask - Unrestricted */
     , (802042, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802042,   1, True ) /* Stuck */
     , (802042,  11, False) /* IgnoreCollisions */
     , (802042,  12, True ) /* ReportCollisions */
     , (802042,  13, True ) /* Ethereal */
     , (802042,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802042,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802042,   1, 'The Pit (1-9)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802042,   1,   33555922) /* Setup */
     , (802042,   2,  150994947) /* MotionTable */
     , (802042,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802042, 2, 4171563030, 58.195, 121.468, 93.3934, -0.982215, 0, 0, 0.18776) /* Destination */
/* @teleloc 0xF8A50016 [58.195000 121.468002 93.393402] -0.982215 0.000000 0.000000 0.187760 */;
