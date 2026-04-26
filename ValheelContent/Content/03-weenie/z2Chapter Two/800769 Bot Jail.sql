DELETE FROM `weenie` WHERE `class_Id` = 800769;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800769, 'Bot Jail', 7, '2020-01-08 07:59:44') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800769,   1,      65536) /* ItemType - Portal */
     , (800769,  16,         32) /* ItemUseable - Remote */
     , (800769,  86,          1) /* MinLevel */
     , (800769,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800769, 111,         32) /* PortalBitmask - Unrestricted */
     , (800769, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (800769, 267,         10) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800769,   1, True ) /* Stuck */
     , (800769,  11, False) /* IgnoreCollisions */
     , (800769,  12, True ) /* ReportCollisions */
     , (800769,  13, True ) /* Ethereal */
     , (800769,  14, True ) /* GravityStatus */
     , (800769,  15, True ) /* LightsStatus */
     , (800423,  18, False ) /* Visibility */
     , (800769,  19, True ) /* Attackable */
     , (800769,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800769,  54, -0.100000001490116) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800769,   1, 'Bot Jail') /* Name */
     , (800769,  16, 'A tamed Portal to Bot Jail') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800769,   1,   33555923) /* Setup */
     , (800769,   2,  150994947) /* MotionTable */
     , (800769,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800769, 2, 3941990456, 145.423981, 182.952179, 0.005, -0.459866, 0, 0, 0.887988) /* Destination */
/* @teleloc 0xEAF60038 [145.423981 182.952179 0.005000] -0.459866 0.000000 0.000000 0.887988 */;
