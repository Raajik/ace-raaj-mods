DELETE FROM `weenie` WHERE `class_Id` = 801500;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801500, 'Dread Islands', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801500,   1,      65536) /* ItemType - Portal */
     , (801500,  16,         32) /* ItemUseable - Remote */
     , (801500,  86,        400) /* MinLevel */
     , (801500,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801500, 111,         32) /* PortalBitmask - No Recall, No Tie */
     , (801500, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801500,   1, True ) /* Stuck */
     , (801500,  11, False) /* IgnoreCollisions */
     , (801500,  12, True ) /* ReportCollisions */
     , (801500,  13, True ) /* Ethereal */
     , (801500,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801500,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801500,   1, 'Dread Islands') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801500,   1,   33554867) /* Setup */
     , (801500,   2,  150994947) /* MotionTable */
     , (801500,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801500, 2, 3839229972, 58.117764, 82.428085, 8.005001, -0.007978, 0, 0, 0.999968) /* Destination */
/* @teleloc 0xE4D60014 [58.117764 82.428085 8.005001] -0.007978 0.000000 0.000000 0.999968 */;
