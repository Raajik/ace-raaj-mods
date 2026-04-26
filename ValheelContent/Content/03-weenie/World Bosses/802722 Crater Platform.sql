DELETE FROM `weenie` WHERE `class_Id` = 802722;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802722, 'CraterPlatform', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802722,   1,      65536) /* ItemType - Portal */
     , (802722,  16,         32) /* ItemUseable - Remote */
     , (802722,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802722, 111,         32) /* PortalBitmask - Unrestricted */
     , (802722, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802722,   1, True ) /* Stuck */
     , (802722,  11, False) /* IgnoreCollisions */
     , (802722,  12, True ) /* ReportCollisions */
     , (802722,  13, True ) /* Ethereal */
     , (802722,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802722,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802722,   1, 'Crater Platform') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802722,   1,   33555923) /* Setup */
     , (802722,   2,  150994947) /* MotionTable */
     , (802722,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802722, 2, 0x302E002B, 126.557755, 65.141541, 155.580460, -0.925005, 0, 0, -0.379954) /* Destination */
/* @teleloc 0x302E002B [126.557755 65.141541 155.580460] -0.925005 0.000000 0.000000 -0.379954 */;
