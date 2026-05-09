DELETE FROM `weenie` WHERE `class_Id` = 803484;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803484, 'ElementalPlanesPortal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803484,   1,      65536) /* ItemType - Portal */
     , (803484,  16,         32) /* ItemUseable - Remote */
     , (803484,  86,      10000) /* MinLevel */
     , (803484,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803484, 111,         32) /* PortalBitmask - NoRecall */
     , (803484, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803484,   1, True ) /* Stuck */
     , (803484,  11, False) /* IgnoreCollisions */
     , (803484,  12, True ) /* ReportCollisions */
     , (803484,  13, True ) /* Ethereal */
     , (803484,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803484,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803484,   1, 'Elemental Planes') /* Name */
     , (803484,  37, 'Transcendence') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803484,   1,   33554867) /* Setup */
     , (803484,   2,  150994947) /* MotionTable */
     , (803484,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803484, 2, 0x5F47041E, 188.228638, -119.884926, 0.005000,  0.697246, 0, 0, 0.716832) /* Destination */
/* @teleloc 0x5F47041E [188.228638 -119.884926 0.005000] -0.697246 0.000000 0.000000 0.716832 */;
