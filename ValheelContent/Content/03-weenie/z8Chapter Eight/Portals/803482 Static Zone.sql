DELETE FROM `weenie` WHERE `class_Id` = 803482;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803482, 'StaticZonePortal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803482,   1,      65536) /* ItemType - Portal */
     , (803482,  16,         32) /* ItemUseable - Remote */
     , (803482,  86,      10000) /* MinLevel */
     , (803482,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803482, 111,         32) /* PortalBitmask - NoRecall */
     , (803482, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803482,   1, True ) /* Stuck */
     , (803482,  11, False) /* IgnoreCollisions */
     , (803482,  12, True ) /* ReportCollisions */
     , (803482,  13, True ) /* Ethereal */
     , (803482,  14, False) /* GravityStatus */
     , (803482,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803482,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803482,   1, 'Static Zone') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803482,   1,   33554867) /* Setup */
     , (803482,   2,  150994947) /* MotionTable */
     , (803482,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803482, 2, 0x856D0040, 178.977295, 188.192993, -0.094000,  -0.462210, 0, 0, -0.886770) /* Destination */
/* @teleloc 0x856D0040 [178.977295 188.192993 -0.094000] -0.462210 0.000000 0.000000 -0.886770 */;
