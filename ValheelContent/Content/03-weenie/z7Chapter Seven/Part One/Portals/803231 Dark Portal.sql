DELETE FROM `weenie` WHERE `class_Id` = 803231;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803231, 'Dark Portal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803231,   1,      65536) /* ItemType - Portal */
     , (803231,  16,         32) /* ItemUseable - Remote */
     , (803231,  86,      10000) /* MinLevel */
     , (803231,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803231, 111,         32) /* PortalBitmask - NoRecall */
     , (803231, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803231,   1, True ) /* Stuck */
     , (803231,  11, False) /* IgnoreCollisions */
     , (803231,  12, True ) /* ReportCollisions */
     , (803231,  13, True ) /* Ethereal */
     , (803231,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803231,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803231,   1, 'Dark Portal') /* Name */
     , (803231,  37, 'DarkPortal') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803231,   1,   33554867) /* Setup */
     , (803231,   2,  150994947) /* MotionTable */
     , (803231,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803231, 2, 0x00AE0786, 5.750370, -49.959599, 0.005000,  0.714421, 0, 0, -0.699716) /* Destination */
/* @teleloc 0x00AE0786 [5.750370 -49.959599 0.005000] 0.714421 0.000000 0.000000 -0.699716 */;
