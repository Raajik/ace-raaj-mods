DELETE FROM `weenie` WHERE `class_Id` = 802149;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802149, 'Arctic Isle', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802149,   1,      65536) /* ItemType - Portal */
     , (802149,  16,         32) /* ItemUseable - Remote */
     , (802149,  86,         3500) /* MinLevel */
     , (802149,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802149, 111,         32) /* PortalBitmask - NoRecall */
     , (802149, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802149,   1, True ) /* Stuck */
     , (802149,  11, False) /* IgnoreCollisions */
     , (802149,  12, True ) /* ReportCollisions */
     , (802149,  13, True ) /* Ethereal */
     , (802149,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802149,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802149,   1, 'Arctic Isle') /* Name */
     , (802149,  37, 'PrestigeComplete75') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802149,   1,   33555923) /* Setup */
     , (802149,   2,  150994947) /* MotionTable */
     , (802149,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802149, 2, 1508835342, 30.488, 131.764, 346.946, -0.996075, 0, 0, 0.08851) /* Destination */
/* @teleloc 0x59EF000E [30.488001 131.764008 346.946014] -0.996075 0.000000 0.000000 0.088510 */;
