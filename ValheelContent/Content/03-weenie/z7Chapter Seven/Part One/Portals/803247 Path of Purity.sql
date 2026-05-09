DELETE FROM `weenie` WHERE `class_Id` = 803247;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803247, 'Path of Purity', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803247,   1,      65536) /* ItemType - Portal */
     , (803247,  16,         32) /* ItemUseable - Remote */
     , (803247,  86,      10000) /* MinLevel */
     , (803247,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803247, 111,         32) /* PortalBitmask - NoRecall */
     , (803247, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803247,   1, True ) /* Stuck */
     , (803247,  11, False) /* IgnoreCollisions */
     , (803247,  12, True ) /* ReportCollisions */
     , (803247,  13, True ) /* Ethereal */
     , (803247,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803247,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803247,   1, 'Path of Purity') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803247,   1,   33554867) /* Setup */
     , (803247,   2,  150994947) /* MotionTable */
     , (803247,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803247, 2, 0x472C02FA, 122.389076, -897.299988, 1.518217,  -0.552664, 0, 0, -0.833404) /* Destination */
/* @teleloc 0x472C02FA [122.389076 -897.299988 1.518217] -0.552664 0.000000 0.000000 -0.833404 */;
