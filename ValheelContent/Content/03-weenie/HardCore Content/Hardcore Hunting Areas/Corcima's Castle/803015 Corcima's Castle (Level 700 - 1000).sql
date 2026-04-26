DELETE FROM `weenie` WHERE `class_Id` = 803015;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803015, 'Corcimas CastleHC700', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803015,   1,      65536) /* ItemType - Portal */
     , (803015,  16,         32) /* ItemUseable - Remote */
     , (803015,  86,         700) /* MinLevel */
     , (803015,  87,         1000) /* MinLevel */
     , (803015,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803015, 111,         32) /* PortalBitmask - No Recall, No Tie */
     , (803015, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803015,   1, True ) /* Stuck */
     , (803015,  11, False) /* IgnoreCollisions */
     , (803015,  12, True ) /* ReportCollisions */
     , (803015,  13, True ) /* Ethereal */
     , (803015,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803015,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803015,   1, 'Corcima''s Castle (Level 700 - 1000)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803015,   1,   33554867) /* Setup */
     , (803015,   2,  150994947) /* MotionTable */
     , (803015,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803015, 2, 0x3FE7002C, 134.015381, 94.663963, 160.004990, 0.698043, 0, 0, 0.716056) /* Destination */
/* @teleloc   0x3FE7002C [134.015381 94.663963 160.004990] 0.698043 0.000000 0.000000 0.716056 */;
