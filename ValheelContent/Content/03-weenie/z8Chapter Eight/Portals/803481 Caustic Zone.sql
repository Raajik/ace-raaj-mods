DELETE FROM `weenie` WHERE `class_Id` = 803481;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803481, 'AcidZonePortal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803481,   1,      65536) /* ItemType - Portal */
     , (803481,  16,         32) /* ItemUseable - Remote */
     , (803481,  86,      10000) /* MinLevel */
     , (803481,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803481, 111,         32) /* PortalBitmask - NoRecall */
     , (803481, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803481,   1, True ) /* Stuck */
     , (803481,  11, False) /* IgnoreCollisions */
     , (803481,  12, True ) /* ReportCollisions */
     , (803481,  13, True ) /* Ethereal */
     , (803481,  14, False) /* GravityStatus */
     , (803481,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803481,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803481,   1, 'Caustic Zone') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803481,   1,   33555923) /* Setup */
     , (803481,   2,  150994947) /* MotionTable */
     , (803481,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803481, 2, 0xC5B60026, 97.506851, 135.030426, 163.375366,  -0.31677, 0, 0, -0.948500) /* Destination */
/* @teleloc 0xC5B60026 [97.506851 135.030426 163.375366] -0.316778 0.000000 0.000000 -0.948500 */;
