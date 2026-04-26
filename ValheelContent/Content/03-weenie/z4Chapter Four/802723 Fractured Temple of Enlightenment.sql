DELETE FROM `weenie` WHERE `class_Id` = 802723;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802723, 'FracturedTempleofEnlightenment', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802723,   1,      65536) /* ItemType - Portal */
     , (802723,  16,         32) /* ItemUseable - Remote */
     , (802723,  86,       3000) /* MinLevel */
     , (802723,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802723, 111,         32) /* PortalBitmask - Unrestricted */
     , (802723, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802723,   1, True ) /* Stuck */
     , (802723,  11, False) /* IgnoreCollisions */
     , (802723,  12, True ) /* ReportCollisions */
     , (802723,  13, True ) /* Ethereal */
     , (802723,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802723,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802723,   1, 'Fractured Temple of Enlightenment') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802723,   1,   33555923) /* Setup */
     , (802723,   2,  150994947) /* MotionTable */
     , (802723,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802723, 2, 0x5D47016B, 37.547405, 2.575243, 18.059999, 0.376700, 0, 0, -0.926335) /* Destination */
/* @teleloc 0x5D47016B [37.547405 2.575243 18.059999] 0.376700 0.000000 0.000000 -0.926335 */;
