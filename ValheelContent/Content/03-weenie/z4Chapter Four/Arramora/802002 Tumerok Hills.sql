DELETE FROM `weenie` WHERE `class_Id` = 802002;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802002, 'TumerokHills', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802002,   1,      65536) /* ItemType - Portal */
     , (802002,  16,         32) /* ItemUseable - Remote */
     , (802002,  86,        550) /* MinLevel */
     , (802002,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802002, 111,         32) /* PortalBitmask - Unrestricted */
     , (802002, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802002,   1, True ) /* Stuck */
     , (802002,  11, False) /* IgnoreCollisions */
     , (802002,  12, True ) /* ReportCollisions */
     , (802002,  13, True ) /* Ethereal */
     , (802002,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802002,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802002,   1, 'Tumerok Hills') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802002,   1,   33555923) /* Setup */
     , (802002,   2,  150994947) /* MotionTable */
     , (802002,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802002, 2, 296419389, 191.671997, 117.527809, 104.005005, -0.999684, 0, 0, 0.025147) /* Destination */
/* @teleloc 296419389 [191.671997 117.527809 104.005005] -0.999684 0.000000 0.000000 0.025147 */;
