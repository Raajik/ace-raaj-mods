DELETE FROM `weenie` WHERE `class_Id` = 42713;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (42713, 'ace42713-empyreanfacilitymiddlelevel', 7, '2021-11-17 16:56:08') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (42713,   1,      65536) /* ItemType - Portal */
     , (42713,  16,         32) /* ItemUseable - Remote */
     , (42713,  86,      10000) /* MinLevel */
     , (42713,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (42713, 111,          1) /* PortalBitmask - Unrestricted */
     , (42713, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (42713,   1, True ) /* Stuck */
     , (42713,  12, True ) /* ReportCollisions */
     , (42713,  13, True ) /* Ethereal */
     , (42713,  14, True ) /* GravityStatus */
     , (42713,  15, True ) /* LightsStatus */
     , (42713,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (42713,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (42713,   1, 'Empyrean Facility Middle Level') /* Name */
     , (42713,  37, 'Transcendence') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (42713,   1,   33555926) /* Setup */
     , (42713,   2,  150994947) /* MotionTable */
     , (42713,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (42713, 2, 0x89040241, 50, 1.052969, 11.602971, -0.000328, 0, 0, -1) /* Destination */
/* @teleloc  0x89040241 [50.004646 1.052969 11.602971] -0.000328 0.000000 0.000000 -1.000000 */;
