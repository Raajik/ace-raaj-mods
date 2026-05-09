DELETE FROM `weenie` WHERE `class_Id` = 300118;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300118, 'rynthidinvasionarea', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300118,   1,      65536) /* ItemType - Portal */
     , (300118,  16,         32) /* ItemUseable - Remote */
     , (300118,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (300118, 111,          1) /* PortalBitmask - Unrestricted */
     , (300118, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300118,   1, True ) /* Stuck */
     , (300118,  11, False) /* IgnoreCollisions */
     , (300118,  12, True ) /* ReportCollisions */
     , (300118,  13, True ) /* Ethereal */
     , (300118,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300118,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300118,   1, 'Rynthid Invasion') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300118,   1,   33554867) /* Setup */
     , (300118,   2,  150994947) /* MotionTable */
     , (300118,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300118, 2, 0x69AB0107, 34.915112, 81.330360, 244.00499, 0, 0, 0, -0.683845); /* Destination */
/* @teleloc 0x69AB0107 [34.915112 81.330360 244.004990] 0.729627 0.000000 0.000000 -0.683845 */
