DELETE FROM `weenie` WHERE `class_Id` = 802408;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802408, 'Volcano South', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802408,   1,      65536) /* ItemType - Portal */
     , (802408,  16,         32) /* ItemUseable - Remote */
     , (802408,  86,       6000) /* MinLevel */
     , (802408,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802408, 111,         32) /* PortalBitmask - Unrestricted */
     , (802408, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802408,   1, True ) /* Stuck */
     , (802408,  11, False) /* IgnoreCollisions */
     , (802408,  12, True ) /* ReportCollisions */
     , (802408,  13, True ) /* Ethereal */
     , (802408,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802408,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802408,   1, 'Volcano South') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802408,   1,   33555923) /* Setup */
     , (802408,   2,  150994947) /* MotionTable */
     , (802408,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802408, 2, 0x5C5F0037, 153.566940, 164.178497, 503.193970, 0.538416, 0, 0, 0.842679) /* Destination */
/* @teleloc 0x5C5F0037 [153.566940 164.178497 503.193970] 0.538416 0.000000 0.000000 0.842679 */;
