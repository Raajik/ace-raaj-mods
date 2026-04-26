DELETE FROM `weenie` WHERE `class_Id` = 801558;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801558, 'Dread Plateau', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801558,   1,      65536) /* ItemType - Portal */
     , (801558,  16,         32) /* ItemUseable - Remote */
     , (801558,  86,        425) /* MinLevel */
     , (801558,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801558, 111,         32) /* PortalBitmask - NoRecall */
     , (801558, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801558,   1, True ) /* Stuck */
     , (801558,  11, False) /* IgnoreCollisions */
     , (801558,  12, True ) /* ReportCollisions */
     , (801558,  13, True ) /* Ethereal */
     , (801558,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801558,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801558,   1, 'Dread Plateau') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801558,   1,   33554867) /* Setup */
     , (801558,   2,  150994947) /* MotionTable */
     , (801558,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801558, 2, 3906076699, 74.3809, 62.0309, 43.8066, 0.587052, 0, 0, -0.809549) /* Destination */
/* @teleloc 0xE8D2001B [74.380898 62.030899 43.806599] 0.587052 0.000000 0.000000 -0.809549 */;
