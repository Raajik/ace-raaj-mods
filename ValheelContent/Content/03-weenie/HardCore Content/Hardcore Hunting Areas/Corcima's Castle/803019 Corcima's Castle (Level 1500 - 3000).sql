DELETE FROM `weenie` WHERE `class_Id` = 803019;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803019, 'Corcimas CastleHC1500', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803019,   1,      65536) /* ItemType - Portal */
     , (803019,  16,         32) /* ItemUseable - Remote */
     , (803019,  86,         1500) /* MinLevel */
     , (803019,  87,         3000) /* MinLevel */
     , (803019,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803019, 111,         32) /* PortalBitmask - No Recall, No Tie */
     , (803019, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803019,   1, True ) /* Stuck */
     , (803019,  11, False) /* IgnoreCollisions */
     , (803019,  12, True ) /* ReportCollisions */
     , (803019,  13, True ) /* Ethereal */
     , (803019,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803019,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803019,   1, 'Corcima''s Castle (Level 1500 - 3000)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803019,   1,   33554867) /* Setup */
     , (803019,   2,  150994947) /* MotionTable */
     , (803019,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803019, 2, 0x41E70015, 58.831593, 96.160645, 160.004990, 0.716767, 0, 0, -0.697313) /* Destination */
/* @teleloc 0x41E70015 [58.831593 96.160645 160.004990] 0.716767 0.000000 0.000000 -0.697313 */;
