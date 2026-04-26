DELETE FROM `weenie` WHERE `class_Id` = 802741;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802741, 'GaerlanCathedral', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802741,   1,      65536) /* ItemType - Portal */
     , (802741,  16,         32) /* ItemUseable - Remote */
     , (802741,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802741, 111,         32) /* PortalBitmask - Unrestricted */
     , (802741, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802741,   1, True ) /* Stuck */
     , (802741,  11, False) /* IgnoreCollisions */
     , (802741,  12, True ) /* ReportCollisions */
     , (802741,  13, True ) /* Ethereal */
     , (802741,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802741,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802741,   1, 'Gaerlan''s Cathedral') /* Name */
     , (802741,  16, 'It is highly recommended that you be level 10,000 and in a group for this fight.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802741,   1,   33555923) /* Setup */
     , (802741,   2,  150994947) /* MotionTable */
     , (802741,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802741, 2, 0xEC0D002D, 142.247192, 119.101563, 0.005000, -0.998234, 0, 0, 0.059399) /* Destination */
/* @teleloc 0xEC0D002D [142.247192 119.101563 0.005000] -0.998234 0.000000 0.000000 0.059399 */;
