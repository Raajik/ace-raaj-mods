DELETE FROM `weenie` WHERE `class_Id` = 803480;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803480, 'FrostZonePortal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803480,   1,      65536) /* ItemType - Portal */
     , (803480,  16,         32) /* ItemUseable - Remote */
     , (803480,  86,      10000) /* MinLevel */
     , (803480,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803480, 111,         32) /* PortalBitmask - NoRecall */
     , (803480, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803480,   1, True ) /* Stuck */
     , (803480,  11, False) /* IgnoreCollisions */
     , (803480,  12, True ) /* ReportCollisions */
     , (803480,  13, True ) /* Ethereal */
     , (803480,  14, False) /* GravityStatus */
     , (803480,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803480,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803480,   1, 'Frost Zone') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803480,   1,   33555922) /* Setup */
     , (803480,   2,  150994947) /* MotionTable */
     , (803480,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803480, 2, 0x7BF00022, 108, 36, 182.004990,  0.988771, 0, 0, 0.149438) /* Destination */
/* @teleloc 0x7BF00022 [108.000000 36.000000 182.004990] 0.988771 0.000000 0.000000 0.149438 */;
