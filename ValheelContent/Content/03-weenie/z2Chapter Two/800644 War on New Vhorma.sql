DELETE FROM `weenie` WHERE `class_Id` = 800644;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800644, 'War on New Vhorma', 7, '2019-03-30 17:13:24') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800644,   1,      65536) /* ItemType - Portal */
     , (800644,  16,         32) /* ItemUseable - Remote */
     , (800644,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800644, 111,         32) /* PortalBitmask - Restricted */
     , (800644, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800644,   1, True ) /* Stuck */
     , (800644,  12, True ) /* ReportCollisions */
     , (800644,  13, True ) /* Ethereal */
     , (800644,  14, True ) /* GravityStatus */
     , (800644,  15, True ) /* LightsStatus */
     , (800644,  19, True ) /* Attackable */
     , (800644,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800644,  54, -0.100000001490116) /* UseRadius */
     , (800644,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800644,   1, 'War on New Vhorma') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800644,   1,   33554867) /* Setup */
     , (800644,   2,  150994947) /* MotionTable */
     , (800644,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800644, 2, 48300706, 61.732239, 73.474556, 0.005000, 0.705627, 0, 0, 0.708583) /* Destination */
/* @teleloc 0xF1DA0014 [61.732239 73.474556 0.005000] 0.705627 0.000000 0.000000 0.708583 */;
