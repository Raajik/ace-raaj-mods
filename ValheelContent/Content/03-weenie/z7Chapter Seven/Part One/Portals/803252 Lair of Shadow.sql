DELETE FROM `weenie` WHERE `class_Id` = 803252;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803252, 'Lair of Shadow', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803252,   1,      65536) /* ItemType - Portal */
     , (803252,  16,         32) /* ItemUseable - Remote */
     , (803252,  86,      10000) /* MinLevel */
     , (803252,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803252, 111,         32) /* PortalBitmask - NoRecall */
     , (803252, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803252,   1, True ) /* Stuck */
     , (803252,  11, False) /* IgnoreCollisions */
     , (803252,  12, True ) /* ReportCollisions */
     , (803252,  13, True ) /* Ethereal */
     , (803252,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803252,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803252,   1, 'Lair of Shadow') /* Name */
     , (803252,  37, 'LairOfShadow') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803252,   1,   33554867) /* Setup */
     , (803252,   2,  150994947) /* MotionTable */
     , (803252,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803252, 2, 0x5878029F, 130, -350, -17.995,  1, 0, 0, 0) /* Destination */
/* @teleloc 0x5878029F [130 -350 -17.995] 1 0 0 0 */;
