DELETE FROM `weenie` WHERE `class_Id` = 802191;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802191, 'Egg Orchard Drop', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802191,   1,      65536) /* ItemType - Portal */
     , (802191,  16,         32) /* ItemUseable - Remote */
     , (802191,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (802191,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802191, 111,          1) /* PortalBitmask - Unrestricted */
     , (802191, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802191,   1, True ) /* Stuck */
     , (802191,  11, False) /* IgnoreCollisions */
     , (802191,  12, True ) /* ReportCollisions */
     , (802191,  13, True ) /* Ethereal */
     , (802191,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802191,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802191,   1, 'Egg Orchards') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802191,   1,   33555925) /* Setup */
     , (802191,   2,  150994947) /* MotionTable */
     , (802191,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802191, 2, 0x43F70015, 60.000000, 108.000000, 102.004997, 0.999688, 0, 0, -0.024997) /* Destination */
/* @teleloc 0x43F70015 [60.000000 108.000000 102.004997] 0.999688 0.000000 0.000000 -0.024997 */;
