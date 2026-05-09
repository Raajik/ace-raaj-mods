DELETE FROM `weenie` WHERE `class_Id` = 801785;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801785, 'Infested Damp Caverns', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801785,   1,      65536) /* ItemType - Portal */
     , (801785,  16,         32) /* ItemUseable - Remote */
     , (801785,  86,         700) /* MinLevel */
     , (801785,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801785, 111,         32) /* PortalBitmask - NoRecall */
     , (801785, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801785,   1, True ) /* Stuck */
     , (801785,  11, False) /* IgnoreCollisions */
     , (801785,  12, True ) /* ReportCollisions */
     , (801785,  13, True ) /* Ethereal */
     , (801785,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801785,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801785,   1, 'Infested Damp Caverns Portal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801785,   1,   33555922) /* Setup */
     , (801785,   2,  150994947) /* MotionTable */
     , (801785,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801785, 2, 21823889, 70, -60, 0, 1, 0, 0, 0) /* Destination */
/* @teleloc 0x014D0191 [70.000000 -60.000000 0.000000] 1.000000 0.000000 0.000000 0.000000 */;
