DELETE FROM `weenie` WHERE `class_Id` = 803027;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803027, 'Spore Hideout', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803027,   1,      65536) /* ItemType - Portal */
     , (803027,  16,         32) /* ItemUseable - Remote */
     , (803027,  86,      10000) /* MinLevel */
     , (803027,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803027, 111,         32) /* PortalBitmask - NoRecall */
     , (803027, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803027,   1, True ) /* Stuck */
     , (803027,  11, False) /* IgnoreCollisions */
     , (803027,  12, True ) /* ReportCollisions */
     , (803027,  13, True ) /* Ethereal */
     , (803027,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803027,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803027,   1, 'Spore Hideout') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803027,   1,   33554867) /* Setup */
     , (803027,   2,  150994947) /* MotionTable */
     , (803027,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803027, 2, 0x017f010f, 10, -300, 0.0049999998882413,  1, 0, 0, 0) /* Destination */
/* @teleloc 0x017f010f 10 -300 0.0049999998882413 1 0 0 0 */;
