DELETE FROM `weenie` WHERE `class_Id` = 803007;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803007, 'Greater Battle DungeonHC', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803007,   1,      65536) /* ItemType - Portal */
     , (803007,  16,         32) /* ItemUseable - Remote */
     , (803007,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803007, 111,         32) /* PortalBitmask - No Recall, No Tie */
     , (803007, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803007,   1, True ) /* Stuck */
     , (803007,  11, False) /* IgnoreCollisions */
     , (803007,  12, True ) /* ReportCollisions */
     , (803007,  13, True ) /* Ethereal */
     , (803007,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803007,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803007,   1, 'Greater Battle Dungeon (Level 300 - 400)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803007,   1,   33554867) /* Setup */
     , (803007,   2,  150994947) /* MotionTable */
     , (803007,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803007, 2, 0x654401FC, 9.659887, -30.818197, 24.004999, 0.007085, 0, 0, -0.999975) /* Destination */
/* @teleloc  0x654401FC [9.659887 -30.818197 24.004999] 0.007085 0.000000 0.000000 -0.999975 */;
