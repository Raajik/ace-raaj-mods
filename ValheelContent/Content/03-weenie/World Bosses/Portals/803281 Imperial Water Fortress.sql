DELETE FROM `weenie` WHERE `class_Id` = 803281;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803281, 'Imperial Water Fortress', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803281,   1,      65536) /* ItemType - Portal */
     , (803281,  16,         32) /* ItemUseable - Remote */
     , (803281,  86,      10000) /* MinLevel */
     , (803281,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803281, 111,         32) /* PortalBitmask - NoRecall */
     , (803281, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803281,   1, True ) /* Stuck */
     , (803281,  11, False) /* IgnoreCollisions */
     , (803281,  12, True ) /* ReportCollisions */
     , (803281,  13, True ) /* Ethereal */
     , (803281,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803281,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803281,   1, 'Imperial Water Fortress') /* Name */
     /* , (803281,  37, 'DarkPortal') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803281,   1,   33554867) /* Setup */
     , (803281,   2,  150994947) /* MotionTable */
     , (803281,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803281, 2, 0x1203001A, 85.234886, 45.598167, 1.105000,  0.998459, 0, 0, -0.055493) /* Destination */
/* @teleloc 0x1203001A [85.234886 45.598167 1.105000] 0.998459 0.000000 0.000000 -0.055493 */;
