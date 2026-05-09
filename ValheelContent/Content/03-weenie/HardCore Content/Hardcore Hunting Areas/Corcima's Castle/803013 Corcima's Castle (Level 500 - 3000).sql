DELETE FROM `weenie` WHERE `class_Id` = 803013;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803013, 'Corcimas CastleHC', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803013,   1,      65536) /* ItemType - Portal */
     , (803013,  16,         32) /* ItemUseable - Remote */
     , (803013,  86,         500) /* MinLevel */
     , (803013,  87,         3000) /* MinLevel */
     , (803013,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803013, 111,         32) /* PortalBitmask - No Recall, No Tie */
     , (803013, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803013,   1, True ) /* Stuck */
     , (803013,  11, False) /* IgnoreCollisions */
     , (803013,  12, True ) /* ReportCollisions */
     , (803013,  13, True ) /* Ethereal */
     , (803013,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803013,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803013,   1, 'Corcima''s Castle (Level 700 - 3000') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803013,   1,   33554867) /* Setup */
     , (803013,   2,  150994947) /* MotionTable */
     , (803013,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803013, 2, 0x40E80025, 96.050011, 109.477165, 200.004990, 0.011370, 0, 0, 0.99993) /* Destination */
/* @teleloc   0x40E80025 [96.050011 109.477165 200.004990] 0.011370 0.000000 0.000000 0.99993 */;
