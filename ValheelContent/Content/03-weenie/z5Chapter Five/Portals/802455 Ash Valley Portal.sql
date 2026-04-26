DELETE FROM `weenie` WHERE `class_Id` = 802455;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802455, 'Ash Valley Portal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802455,   1,      65536) /* ItemType - Portal */
     , (802455,  16,         32) /* ItemUseable - Remote */
     , (802455,  86,       6000) /* MinLevel */
     , (802455,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802455, 111,         32) /* PortalBitmask - Unrestricted */
     , (802455, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802455,   1, True ) /* Stuck */
     , (802455,  11, False) /* IgnoreCollisions */
     , (802455,  12, True ) /* ReportCollisions */
     , (802455,  13, True ) /* Ethereal */
     , (802455,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802455,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802455,   1, 'Ash Valley Portal') /* Name */
     , (802455,  16, 'You must be Prestige level 100 to enter.') /* LongDesc */
     , (802455,  37, 'PrestigeComplete100') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802455,   1,   33555923) /* Setup */
     , (802455,   2,  150994947) /* MotionTable */
     , (802455,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802455, 2, 0xF2BF0031, 147.898056, 11.274376, 5.629189, 0.695799, 0, 0, 0.718236) /* Destination */
/* @teleloc 0xF2BF0031 [147.898056 11.274376 5.629189] 0.695799 0.000000 0.000000 0.718236 */;
