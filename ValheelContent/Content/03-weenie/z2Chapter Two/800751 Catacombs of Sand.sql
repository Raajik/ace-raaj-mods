DELETE FROM `weenie` WHERE `class_Id` = 800751;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800751, 'Catacombs of Sand', 7, '2020-01-08 07:59:44') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800751,   1,      65536) /* ItemType - Portal */
     , (800751,  16,         32) /* ItemUseable - Remote */
     , (800751,  86,        325) /* MinLevel */
     , (800751,  93,       1032) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800751, 111,          1) /* PortalBitmask - Unrestricted */
     , (800751, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800751,   1, True ) /* Stuck */
     , (800751,  11, False) /* IgnoreCollisions */
     , (800751,  12, True ) /* ReportCollisions */
     , (800751,  13, True ) /* Ethereal */
     , (800751,  14, False ) /* GravityStatus */
     , (800751,  15, True ) /* LightsStatus */
     , (800751,  19, True ) /* Attackable */
     , (800751,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800751,  54, -0.100000001490116) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800751,   1, 'Catacombs of Sand') /* Name */
     , (800751,  16, 'A tamed Portal to Catacombs of Sand') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800751,   1,   33555923) /* Setup */
     , (800751,   2,  150994947) /* MotionTable */
     , (800751,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800751, 2, 3891724299, 38.816166, 67.692604, 0.005, -0.999998, 0, 0, -0.002093) /* Destination */
/* @teleloc 0xE7F7000B [38.816166 67.692604 0.005000] -0.999998 0.000000 0.000000 -0.002093 */;
