DELETE FROM `weenie` WHERE `class_Id` = 803483;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803483, 'FireZonePortal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803483,   1,      65536) /* ItemType - Portal */
     , (803483,  16,         32) /* ItemUseable - Remote */
     , (803483,  86,      10000) /* MinLevel */
     , (803483,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803483, 111,         32) /* PortalBitmask - NoRecall */
     , (803483, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803483,   1, True ) /* Stuck */
     , (803483,  11, False) /* IgnoreCollisions */
     , (803483,  12, True ) /* ReportCollisions */
     , (803483,  13, True ) /* Ethereal */
     , (803483,  14, False) /* GravityStatus */
     , (803483,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803483,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803483,   1, 'Fire Zone') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803483,   1,   33555925) /* Setup */
     , (803483,   2,  150994947) /* MotionTable */
     , (803483,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803483, 2, 0x14550002, 5.360964, 45.695332, 20.005999,  -0.721789, 0, 0, 0.692113) /* Destination */
/* @teleloc 0x14550002 [5.360964 45.695332 20.005999] -0.721789 0.000000 0.000000 0.692113 */;
