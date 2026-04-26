DELETE FROM `weenie` WHERE `class_Id` = 803061;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803061, 'Colosseum2', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803061,   1,      65536) /* ItemType - Portal */
     , (803061,  16,         32) /* ItemUseable - Remote */
     , (803061,  86,       8000) /* MinLevel */
     , (803061,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803061, 111,         32) /* PortalBitmask - Unrestricted */
     , (803061, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803061,   1, True ) /* Stuck */
     , (803061,  11, False) /* IgnoreCollisions */
     , (803061,  12, True ) /* ReportCollisions */
     , (803061,  13, True ) /* Ethereal */
     , (803061,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803061,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803061,   1, 'Colosseum') /* Name */
     /* , (803061,  37, 'PrestigeComplete100') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803061,   1,   33555923) /* Setup */
     , (803061,   2,  150994947) /* MotionTable */
     , (803061,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803061, 2, 0x00B00168, 30, -1483, 0.005, 1, 0, 0, 0) /* Destination */
/* @teleloc 0x00B00168 [30 -1483 0.005] 1 0 0 0 */;
