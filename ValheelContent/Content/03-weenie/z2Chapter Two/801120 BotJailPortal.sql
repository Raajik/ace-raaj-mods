DELETE FROM `weenie` WHERE `class_Id` = 801120;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801120, 'Bot Jail Portal', 7, '2020-01-08 07:59:44') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801120,   1,      65536) /* ItemType - Portal */
     , (801120,  16,         32) /* ItemUseable - Remote */
     , (801120,  86,          1) /* MinLevel */
     , (801120,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801120, 111,         32) /* PortalBitmask - Unrestricted */
     , (801120, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (801120, 267,         10) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801120,   1, True ) /* Stuck */
     , (801120,  11, False) /* IgnoreCollisions */
     , (801120,  12, True ) /* ReportCollisions */
     , (801120,  13, True ) /* Ethereal */
     , (801120,  14, True ) /* GravityStatus */
     , (801120,  15, True ) /* LightsStatus */
     , (801120,  18, True ) /* Visibility */
     , (801120,  19, True ) /* Attackable */
     , (801120,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801120,  54, -0.100000001490116) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801120,   1, 'Bot Jail') /* Name */
     , (801120,  16, 'A tamed Portal to Bot Jail') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801120,   1,   33555923) /* Setup */
     , (801120,   2,  150994947) /* MotionTable */
     , (801120,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801120, 2, 3941990456, 145.423981, 182.952179, 0.005, -0.459866, 0, 0, 0.887988) /* Destination */
/* @teleloc 0xEAF60038 [145.423981 182.952179 0.005000] -0.459866 0.000000 0.000000 0.887988 */;
