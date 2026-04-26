DELETE FROM `weenie` WHERE `class_Id` = 803302;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803302, 'Tusker Haven', 7, '2021-11-17 16:56:08') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803302,   1,      65536) /* ItemType - Portal */
     , (803302,  16,         32) /* ItemUseable - Remote */
     , (803302,  86,        275) /* MinLevel */
     , (803302,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803302, 111,         49) /* PortalBitmask - Unrestricted, NoSummon, NoRecall */
     , (803302, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803302,   1, True ) /* Stuck */
     , (803302,  12, True ) /* ReportCollisions */
     , (803302,  13, True ) /* Ethereal */
     , (803302,  14, True ) /* GravityStatus */
     , (803302,  15, True ) /* LightsStatus */
     , (803302,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803302,  39,     0.8) /* DefaultScale */
     , (803302,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803302,   1, 'Tusker Haven') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803302,   1,   33554867) /* Setup */
     , (803302,   2,  150994947) /* MotionTable */
     , (803302,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803302, 2, 0x82F0002C, 133.356110, 81.634117, 138.807831, -0.295283, 0, 0, 0.955410) /* Destination */
/* @teleloc 0x82F0002C [133.356110 81.634117 138.807831] -0.295283 0.000000 0.000000 0.955410 */;
