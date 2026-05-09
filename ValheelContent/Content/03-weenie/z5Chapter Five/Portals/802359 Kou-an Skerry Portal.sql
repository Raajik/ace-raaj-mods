DELETE FROM `weenie` WHERE `class_Id` = 802359;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802359, 'Kou-an Skerry', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802359,   1,      65536) /* ItemType - Portal */
     , (802359,  16,         32) /* ItemUseable - Remote */
     , (802359,  86,       6000) /* MinLevel */
     , (802359,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802359, 111,         32) /* PortalBitmask - Unrestricted */
     , (802359, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802359,   1, True ) /* Stuck */
     , (802359,  11, False) /* IgnoreCollisions */
     , (802359,  12, True ) /* ReportCollisions */
     , (802359,  13, True ) /* Ethereal */
     , (802359,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802359,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802359,   1, 'Kou-an Skerry') /* Name */
     , (802359,  16, 'You must be Prestige level 100 to enter.') /* LongDesc */
     , (802359,  37, 'PrestigeComplete100') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802359,   1,   33555923) /* Setup */
     , (802359,   2,  150994947) /* MotionTable */
     , (802359,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802359, 2, 0xF5C30032, 167.885529, 37.270061, 82.005005, 0.999985, 0, 0, 0.005537) /* Destination */
/* @teleloc 0xF5C30032 [167.885529 37.270061 82.005005] 0.999985 0.000000 0.000000 0.005537 */;
