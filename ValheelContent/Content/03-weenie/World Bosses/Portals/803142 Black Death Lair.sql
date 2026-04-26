DELETE FROM `weenie` WHERE `class_Id` = 803142;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803142, 'Black Death Lair', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803142,   1,      65536) /* ItemType - Portal */
     , (803142,  16,         32) /* ItemUseable - Remote */
     , (803142,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803142, 111,         32) /* PortalBitmask - NoRecall */
     , (803142, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803142,   1, True ) /* Stuck */
     , (803142,  11, False) /* IgnoreCollisions */
     , (803142,  12, True ) /* ReportCollisions */
     , (803142,  13, True ) /* Ethereal */
     , (803142,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803142,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803142,   1, 'Black Death Lair') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803142,   1,   33554867) /* Setup */
     , (803142,   2,  150994947) /* MotionTable */
     , (803142,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803142, 2, 0x2BF5011A, 30.000000, -198.000000, 0.005000,  1.000000, 0, 0, 0.000000) /* Destination */
/* @teleloc   0x2BF5011A [30.000000 -198.000000 0.005000] 1.000000 0.000000 0.000000 0.000000 */;
