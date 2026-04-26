DELETE FROM `weenie` WHERE `class_Id` = 801283;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801283, 'Decrepit Cavern', 7, '2019-03-30 17:13:24') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801283,   1,      65536) /* ItemType - Portal */
     , (801283,  16,         32) /* ItemUseable - Remote */
     , (801283,  86,        325) /* MinLevel */
     , (801283,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801283, 111,          1) /* PortalBitmask - Unrestricted */
     , (801283, 133,          1) /* ShowableOnRadar - ShowNever */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801283,   1, True ) /* Stuck */
     , (801283,  12, True ) /* ReportCollisions */
     , (801283,  13, True ) /* Ethereal */
     , (801283,  14, False) /* GravityStatus */
     , (801283,  15, True ) /* LightsStatus */
     , (801283,  19, True ) /* Attackable */
     , (801283,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801283,  54, -0.100000001490116) /* UseRadius */
     , (801283,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801283,   1, 'Decrepit Cavern') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801283,   1,   33554867) /* Setup */
     , (801283,   2,  150994947) /* MotionTable */
     , (801283,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801283, 2, 0x2BF50141, 240.002167, -371.811737, 0.005000, 0.999843, 0, 0, 0.017702) /* Destination */
/* @teleloc 0x2BF50141 [240.002167 -371.811737 0.005000] 0.999843 0.000000 0.000000 0.017702 */;
