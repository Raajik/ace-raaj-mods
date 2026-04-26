DELETE FROM `weenie` WHERE `class_Id` = 802933;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802933, 'UlgrimsIsland', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802933,   1,      65536) /* ItemType - Portal */
     , (802933,  16,         32) /* ItemUseable - Remote */
     , (802933,  86,        400) /* MinLevel */
     , (802933,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802933, 111,         16) /* PortalBitmask - Unrestricted */
     , (802933, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802933,   1, True ) /* Stuck */
     , (802933,  11, False) /* IgnoreCollisions */
     , (802933,  12, True ) /* ReportCollisions */
     , (802933,  13, True ) /* Ethereal */
     , (802933,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802933,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802933,   1, 'Ulgrim''s Island') /* Name */
     , (802933,  16, 'You must be Prestige level 1 to enter.') /* LongDesc */
     , (802933,  37, 'PrestigeComplete') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802933,   1,   33555923) /* Setup */
     , (802933,   2,  150994947) /* MotionTable */
     , (802933,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802933, 2, 0x73080100, 58.625534, 186.179718, 12.004999, 0.485603, 0, 0, -0.874179) /* Destination */
/* @teleloc 0x73080100 [58.625534 186.179718 12.004999] 0.485603 0.000000 0.000000 -0.874179 */;
