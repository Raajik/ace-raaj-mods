DELETE FROM `weenie` WHERE `class_Id` = 801289;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801289, 'Isel''s Revenge', 7, '2019-03-30 17:13:24') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801289,   1,      65536) /* ItemType - Portal */
     , (801289,  16,         32) /* ItemUseable - Remote */
     , (801289,  86,        400) /* MinLevel */
     , (801289,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801289, 111,         32) /* PortalBitmask - NoRecall */
     , (801289, 133,          1) /* ShowableOnRadar - ShowNever */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801289,   1, True ) /* Stuck */
     , (801289,  12, True ) /* ReportCollisions */
     , (801289,  13, True ) /* Ethereal */
     , (801289,  14, False) /* GravityStatus */
     , (801289,  15, True ) /* LightsStatus */
     , (801289,  19, True ) /* Attackable */
     , (801289,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801289,  54, -0.100000001490116) /* UseRadius */
     , (801289,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801289,   1, 'Isel''s Revenge') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801289,   1,   33555925) /* Setup */
     , (801289,   2,  150994947) /* MotionTable */
     , (801289,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801289, 2, 12583324, 79.862442, -93.708916, 0.005000, 0.008901, 0, 0, -0.999960) /* Destination */
/* @teleloc 0x00C0019C [79.862442 -93.708916 0.005000] 0.008901 0.000000 0.000000 -0.999960 */;
