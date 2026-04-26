DELETE FROM `weenie` WHERE `class_Id` = 802405;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802405, 'Central Kou-an Skerry', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802405,   1,      65536) /* ItemType - Portal */
     , (802405,  16,         32) /* ItemUseable - Remote */
     , (802405,  86,       6000) /* MinLevel */
     , (802405,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802405, 111,         32) /* PortalBitmask - Unrestricted */
     , (802405, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802405,   1, True ) /* Stuck */
     , (802405,  11, False) /* IgnoreCollisions */
     , (802405,  12, True ) /* ReportCollisions */
     , (802405,  13, True ) /* Ethereal */
     , (802405,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802405,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802405,   1, 'Central Kou-an Skerry') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802405,   1,   33555923) /* Setup */
     , (802405,   2,  150994947) /* MotionTable */
     , (802405,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802405, 2, 0x5260003D, 168.479218, 97.354462, 215.852188, 0.897727, 0, 0, -0.440552) /* Destination */
/* @teleloc 0x5260003D [168.479218 97.354462 215.852188] 0.897727 0.000000 0.000000 -0.440552 */;
