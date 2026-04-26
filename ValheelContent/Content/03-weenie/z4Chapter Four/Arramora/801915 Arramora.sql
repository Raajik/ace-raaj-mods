DELETE FROM `weenie` WHERE `class_Id` = 801915;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801915, 'Arramora', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801915,   1,      65536) /* ItemType - Portal */
     , (801915,  16,         32) /* ItemUseable - Remote */
     , (801915,  86,       1500) /* MinLevel */
     , (801915,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801915, 111,         32) /* PortalBitmask - NoRecall */
     , (801915, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801915,   1, True ) /* Stuck */
     , (801915,  11, False) /* IgnoreCollisions */
     , (801915,  12, True ) /* ReportCollisions */
     , (801915,  13, True ) /* Ethereal */
     , (801915,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801915,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801915,   1, 'Arramora') /* Name */
     /* , (801915,  37, 'ArramoraBegins') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801915,   1,   33555923) /* Setup */
     , (801915,   2,  150994947) /* MotionTable */
     , (801915,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801915, 2, 0x4AE20033, 167.997620, 63.173805, 172.004990, -0.999986, 0, 0, 0.005211) /* Destination */
/* @teleloc 0x4AE20033 [167.997620 63.173805 172.004990] -0.999986 0.000000 0.000000 0.005211 */;
