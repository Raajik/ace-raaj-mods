DELETE FROM `weenie` WHERE `class_Id` = 802452;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802452, 'Cedraic Portal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802452,   1,      65536) /* ItemType - Portal */
     , (802452,  16,         32) /* ItemUseable - Remote */
     , (802452,  86,       6000) /* MinLevel */
     , (802452,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802452, 111,         32) /* PortalBitmask - Unrestricted */
     , (802452, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802452,   1, True ) /* Stuck */
     , (802452,  11, False) /* IgnoreCollisions */
     , (802452,  12, True ) /* ReportCollisions */
     , (802452,  13, True ) /* Ethereal */
     , (802452,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802452,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802452,   1, 'Cedraic Portal') /* Name */
     , (802452,  16, 'You must be Prestige level 100 to enter.') /* LongDesc */
     , (802452,  37, 'PrestigeComplete100') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802452,   1,   33555923) /* Setup */
     , (802452,   2,  150994947) /* MotionTable */
     , (802452,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802452, 2, 0x1B60001C, 87.100601, 78.620903, 190.195007, -0.529190, 0, 0, -0.848503) /* Destination */
/* @teleloc 0x1B60001C [87.100601 78.620903 190.195007] -0.529190 0.000000 0.000000 -0.848503 */;
