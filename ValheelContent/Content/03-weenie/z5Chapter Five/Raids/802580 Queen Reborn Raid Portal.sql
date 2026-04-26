DELETE FROM `weenie` WHERE `class_Id` = 802580;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802580, 'Queen Reborn Raid Portal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802580,   1,      65536) /* ItemType - Portal */
     , (802580,  16,         32) /* ItemUseable - Remote */
     , (802580,  86,       1750) /* MinLevel */
     , (802580,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802580, 111,         32) /* PortalBitmask - Unrestricted */
     , (802580, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802580,   1, True ) /* Stuck */
     , (802580,  11, False) /* IgnoreCollisions */
     , (802580,  12, True ) /* ReportCollisions */
     , (802580,  13, True ) /* Ethereal */
     , (802580,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802580,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802580,   1, 'Queen Reborn Raid Portal') /* Name */
     , (802580,  16, 'This is an extremely difficult boss fight. It is suggested to have at least 4 to 5 people fighting at a time, with 1 to 2 dedicated tank players using shield and health Drain proc jewelry. You can run this as many times as you want.') /* LongDesc */
     /* , (802580,  37, 'PrestigeComplete100') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802580,   1,   33555923) /* Setup */
     , (802580,   2,  150994947) /* MotionTable */
     , (802580,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802580, 2, 0x2bf50115, 30, -38, 0.0049999998882413, 1, 0, 0, 0) /* Destination */
/* @teleloc 0x2bf50115 30 -38 0.0049999998882413 1 0 0 0 */;
