DELETE FROM `weenie` WHERE `class_Id` = 802454;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802454, 'Halder Plains Portal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802454,   1,      65536) /* ItemType - Portal */
     , (802454,  16,         32) /* ItemUseable - Remote */
     , (802454,  86,       6000) /* MinLevel */
     , (802454,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802454, 111,         32) /* PortalBitmask - Unrestricted */
     , (802454, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802454,   1, True ) /* Stuck */
     , (802454,  11, False) /* IgnoreCollisions */
     , (802454,  12, True ) /* ReportCollisions */
     , (802454,  13, True ) /* Ethereal */
     , (802454,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802454,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802454,   1, 'Halder Plains Portal') /* Name */
     , (802454,  16, 'You must be Prestige level 100 to enter.') /* LongDesc */
     , (802454,  37, 'PrestigeComplete100') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802454,   1,   33555923) /* Setup */
     , (802454,   2,  150994947) /* MotionTable */
     , (802454,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802454, 2, 0xF2BE002D, 133.023682, 96.029663 , 73.992645, 0.505446, 0, 0, 0.862858) /* Destination */
/* @teleloc 0xF2BE002D [133.023682 96.029663 73.992645] 0.505446 0.000000 0.000000 0.862858 */;
