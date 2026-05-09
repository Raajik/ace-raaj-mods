DELETE FROM `weenie` WHERE `class_Id` = 801688;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801688, 'portalmegagolemgrounds', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801688,   1,      65536) /* ItemType - Portal */
     , (801688,  16,         32) /* ItemUseable - Remote */
     , (801688,  86,        400) /* MinLevel */
     , (801688,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801688, 111,         16) /* PortalBitmask - Unrestricted */
     , (801688, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801688,   1, True ) /* Stuck */
     , (801688,  11, False) /* IgnoreCollisions */
     , (801688,  12, True ) /* ReportCollisions */
     , (801688,  13, True ) /* Ethereal */
     , (801688,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801688,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801688,   1, 'Mega Golem Burial Ground') /* Name */
     , (801688,  16, 'You must be Prestige level 1 to enter.') /* LongDesc */
     , (801688,  37, 'PrestigeComplete') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801688,   1,   33555923) /* Setup */
     , (801688,   2,  150994947) /* MotionTable */
     , (801688,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801688, 2, 28574000, 87.0588, -6.76988, 0.005, 0.317305, 0, 0, -0.948324) /* Destination */
/* @teleloc 0x01B40130 [87.058800 -6.769880 0.005000] 0.317305 0.000000 0.000000 -0.948324 */;
