DELETE FROM `weenie` WHERE `class_Id` = 801549;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801549, 'Fort Nassir', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801549,   1,      65536) /* ItemType - Portal */
     , (801549,  16,         32) /* ItemUseable - Remote */
     , (801549,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801549, 111,         32) /* PortalBitmask - No Recall, No Tie */
     , (801549, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801549,   1, True ) /* Stuck */
     , (801549,  11, False) /* IgnoreCollisions */
     , (801549,  12, True ) /* ReportCollisions */
     , (801549,  13, True ) /* Ethereal */
     , (801549,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801549,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801549,   1, 'Fort Nassir') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801549,   1,   33554867) /* Setup */
     , (801549,   2,  150994947) /* MotionTable */
     , (801549,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801549, 2, 4191748104, 4.346360, 184.310181, 0.005000, 0.376101, 0, 0, -0.926579) /* Destination */
/* @teleloc 4191748104 [4.346360 184.310181 0.005000] 0.376101 0.000000 0.000000 -0.926579 */;
