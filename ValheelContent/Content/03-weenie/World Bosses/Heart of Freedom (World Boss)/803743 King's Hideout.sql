DELETE FROM `weenie` WHERE `class_Id` = 803743;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803743, 'KingsHideout', 7, '2021-11-17 16:56:08') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803743,   1,      65536) /* ItemType - Portal */
     , (803743,  16,         32) /* ItemUseable - Remote */
     , (803743,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803743, 111,         32) /* PortalBitmask - Unrestricted, NoSummon, NoRecall */
     , (803743, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803743,   1, True ) /* Stuck */
     , (803743,  12, True ) /* ReportCollisions */
     , (803743,  13, True ) /* Ethereal */
     , (803743,  14, True ) /* GravityStatus */
     , (803743,  15, True ) /* LightsStatus */
     , (803743,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803743,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803743,   1, 'King''s Hideout') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803743,   1,   33555925) /* Setup */
     , (803743,   2,  150994947) /* MotionTable */
     , (803743,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803743, 2, 0x59560119, 110, -20, 0.050000000745058, -0.70710700750351, 0, 0, -0.70710700750351) /* Destination */
/* @teleloc 0x59560119 110 -20 0.050000000745058 -0.70710700750351 0 0 -0.70710700750351 */;
