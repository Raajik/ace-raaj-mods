DELETE FROM `weenie` WHERE `class_Id` = 803676;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803676, 'Holtburg Underground', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803676,   1,      65536) /* ItemType - Portal */
     , (803676,  16,         32) /* ItemUseable - Remote */
     , (803676,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803676, 111,          1) /* PortalBitmask - NoRecall */
     , (803676, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803676,   1, True ) /* Stuck */
     , (803676,  11, False) /* IgnoreCollisions */
     , (803676,  12, True ) /* ReportCollisions */
     , (803676,  13, True ) /* Ethereal */
     , (803676,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803676,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803676,   1, 'Holtburg Underground') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803676,   1,   33554867) /* Setup */
     , (803676,   2,  150994947) /* MotionTable */
     , (803676,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803676, 2, 0x01300125, 30.000294, -49.311146, 6.005000,  0.999983, 0, 0, -0.005842) /* Destination */
/* @teleloc 0x01300125 [30.000294 -49.311146 6.005000] 0.999983 0.000000 0.000000 -0.005842 */;
