DELETE FROM `weenie` WHERE `class_Id` = 802456;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802456, 'Aslans Table Portal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802456,   1,      65536) /* ItemType - Portal */
     , (802456,  16,         32) /* ItemUseable - Remote */
     , (802456,  86,       6000) /* MinLevel */
     , (802456,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802456, 111,         32) /* PortalBitmask - Unrestricted */
     , (802456, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802456,   1, True ) /* Stuck */
     , (802456,  11, False) /* IgnoreCollisions */
     , (802456,  12, True ) /* ReportCollisions */
     , (802456,  13, True ) /* Ethereal */
     , (802456,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802456,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802456,   1, 'Aslans''s Table Portal') /* Name */
     , (802456,  16, 'You must be Prestige level 100 to enter.') /* LongDesc */
     , (802456,  37, 'PrestigeComplete100') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802456,   1,   33555923) /* Setup */
     , (802456,   2,  150994947) /* MotionTable */
     , (802456,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802456, 2, 0x578C003D, 184.157547, 109.711906, 106.000877, -0.630118, 0, 0, -0.776499) /* Destination */
/* @teleloc 0x578C003D [184.157547 109.711906 106.000877] -0.630118 0.000000 0.000000 -0.776499 */;
