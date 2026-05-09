DELETE FROM `weenie` WHERE `class_Id` = 802110;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802110, 'portalup', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802110,   1,      65536) /* ItemType - Portal */
     , (802110,  16,         32) /* ItemUseable - Remote */
     , (802110,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802110, 111,         32) /* PortalBitmask - Unrestricted */
     , (802110, 133,          1) /* ShowableOnRadar - ShowNever */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802110,   1, True ) /* Stuck */
     , (802110,  11, False) /* IgnoreCollisions */
     , (802110,  12, True ) /* ReportCollisions */
     , (802110,  13, True ) /* Ethereal */
     , (802110,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802110,  39,     0.3) /* DefaultScale */
     , (802110,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802110,   1, '   ') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802110,   1,   33555922) /* Setup */
     , (802110,   2,  150994947) /* MotionTable */
     , (802110,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802110, 2, 4087808037, 108.157, 111.419, 82.7889, 0.999781, 0, 0, 0.020949) /* Destination */
/* @teleloc 0xF3A70025 [108.156998 111.418999 82.788902] 0.999781 0.000000 0.000000 0.020949 */;
