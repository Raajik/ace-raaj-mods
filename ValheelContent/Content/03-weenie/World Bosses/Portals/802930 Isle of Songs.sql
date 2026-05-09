DELETE FROM `weenie` WHERE `class_Id` = 802930;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802930, 'Isle of Songs', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802930,   1,      65536) /* ItemType - Portal */
     , (802930,  16,         32) /* ItemUseable - Remote */
     , (802930,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (802930,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802930, 111,         32) /* PortalBitmask - NoRecall */
     , (802930, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802930,   1, True ) /* Stuck */
     , (802930,  11, False) /* IgnoreCollisions */
     , (802930,  12, True ) /* ReportCollisions */
     , (802930,  13, True ) /* Ethereal */
     , (802930,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802930,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802930,   1, 'Isle of Songs') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802930,   1,   33556212) /* Setup */
     , (802930,   2,  150994947) /* MotionTable */
     , (802930,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802930, 2, 0x10480010, 24.335911, 191.143692, 17.650961, -0.869503, 0, 0, -0.493927) /* Destination */
/* @teleloc 0x10480010 [24.335911 191.143692 17.650961] -0.869503 0.000000 0.000000 -0.493927 */;
