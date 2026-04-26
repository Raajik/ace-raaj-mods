DELETE FROM `weenie` WHERE `class_Id` = 802849;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802849, 'ScysLeverLabrynth', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802849,   1,      65536) /* ItemType - Portal */
     , (802849,  16,         32) /* ItemUseable - Remote */
     , (802849,  86,        275) /* MinLevel */
     , (802849,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802849, 111,         32) /* PortalBitmask - Unrestricted */
     , (802849, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802849,   1, True ) /* Stuck */
     , (802849,  11, False) /* IgnoreCollisions */
     , (802849,  12, True ) /* ReportCollisions */
     , (802849,  13, True ) /* Ethereal */
     , (802849,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802849,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802849,   1, 'Scy''s Lever Labrynth') /* Name */
     , (802849,  16, 'Only the greatest of Seer''s can survive the Labrynth.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802849,   1,   33555923) /* Setup */
     , (802849,   2,  150994947) /* MotionTable */
     , (802849,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802849, 2, 0x88040223, 25.511700, -44.890499, -203.995010, 0.999979, 0, 0, -0.006526) /* Destination */
/* @teleloc 0x88040223 [25.511700 -44.890499 -203.995010] 0.999979 0.000000 0.000000 -0.006526 */;
