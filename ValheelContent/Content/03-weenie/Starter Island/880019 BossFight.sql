DELETE FROM `weenie` WHERE `class_Id` = 880019;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (880019, 'BossFight', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (880019,   1,      65536) /* ItemType - Portal */
     , (880019,  16,         32) /* ItemUseable - Remote */
     , (880019,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (880019, 111,          1) /* PortalBitmask - Unrestricted */
     , (880019, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (880019,   1, True ) /* Stuck */
     , (880019,  11, False) /* IgnoreCollisions */
     , (880019,  12, True ) /* ReportCollisions */
     , (880019,  13, True ) /* Ethereal */
     , (880019,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (880019,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (880019,   1, 'Boss Fight') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (880019,   1, 0x020001B3) /* Setup */
     , (880019,   2, 0x09000003) /* MotionTable */
     , (880019,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (880019, 2, 0xF4BA0008, 12.847656, 180.53516, 183.22879, 0.6948542, 0, 0, 0.7191506) /* Destination */
/* @teleloc 0x8391003B [190.800003 64.400002 146.300003] -0.956305 0.000000 0.000000 -0.292372 */;
