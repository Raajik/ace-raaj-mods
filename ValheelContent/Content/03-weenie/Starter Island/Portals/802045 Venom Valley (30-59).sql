DELETE FROM `weenie` WHERE `class_Id` = 802045;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802045, 'VenomValley', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802045,   1,      65536) /* ItemType - Portal */
     , (802045,  16,         32) /* ItemUseable - Remote */
     , (802045,  86,         30) /* MinLevel */
     , (802045,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802045, 111,         32) /* PortalBitmask - Unrestricted */
     , (802045, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802045,   1, True ) /* Stuck */
     , (802045,  11, False) /* IgnoreCollisions */
     , (802045,  12, True ) /* ReportCollisions */
     , (802045,  13, True ) /* Ethereal */
     , (802045,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802045,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802045,   1, 'Venom Valley (30-59)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802045,   1,   33555922) /* Setup */
     , (802045,   2,  150994947) /* MotionTable */
     , (802045,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802045, 2, 4155179047, 110.839, 159.919, 15.1516, 0.99861, 0, 0, 0.052707) /* Destination */
/* @teleloc 0xF7AB0027 [110.838997 159.919006 15.151600] 0.998610 0.000000 0.000000 0.052707 */;
