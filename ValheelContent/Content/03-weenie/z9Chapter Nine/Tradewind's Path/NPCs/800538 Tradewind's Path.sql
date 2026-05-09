DELETE FROM `weenie` WHERE `class_Id` = 800538;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800538, 'tpportal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800538,   1,      65536) /* ItemType - Portal */
     , (800538,  16,         32) /* ItemUseable - Remote */
     , (800538,  86,      10000) /* MinLevel */
     , (800538,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800538, 111,         49) /* PortalBitmask - Unrestricted, NoSummon, NoRecall */
     , (800538, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800538,   1, True ) /* Stuck */
     , (800538,  11, False) /* IgnoreCollisions */
     , (800538,  12, True ) /* ReportCollisions */
     , (800538,  13, True ) /* Ethereal */
     , (800538,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800538,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800538,   1, 'Tradewind''s Path') /* Name */
     , (800538,  37, 'TradewindCertified') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800538,   1,   33554867) /* Setup */
     , (800538,   2,  150994947) /* MotionTable */
     , (800538,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800538, 2, 0x00AC0112, 39.969059, -10.327014, 0.005000, 0.001334, 0.000000, 0.000000, -0.999999) /* Destination */
/* @teleloc   0x00AC0112 [39.969059 -10.327014 0.005000] 0.001334 0.000000 0.000000 -0.999999 */;
