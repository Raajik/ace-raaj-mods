DELETE FROM `weenie` WHERE `class_Id` = 801792;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801792, 'Swamp Ruin Encounter', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801792,   1,      65536) /* ItemType - Portal */
     , (801792,  16,         32) /* ItemUseable - Remote */
     , (801792,  86,         700) /* MinLevel */
     , (801792,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801792, 111,         32) /* PortalBitmask - NoRecall */
     , (801792, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801792,   1, True ) /* Stuck */
     , (801792,  11, False) /* IgnoreCollisions */
     , (801792,  12, True ) /* ReportCollisions */
     , (801792,  13, True ) /* Ethereal */
     , (801792,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801792,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801792,   1, 'Swamp Ruin Encounter') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801792,   1,   33555922) /* Setup */
     , (801792,   2,  150994947) /* MotionTable */
     , (801792,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801792, 2, 29688120, 39.87, -3.15, -5.99, 0.010516, 0, 0, -0.999945) /* Destination */
/* @teleloc 0x01C50138 [39.869999 -3.150000 -5.990000] 0.010516 0.000000 0.000000 -0.999945 */;
