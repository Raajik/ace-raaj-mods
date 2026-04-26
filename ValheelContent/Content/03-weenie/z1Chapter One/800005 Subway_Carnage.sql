DELETE FROM `weenie` WHERE `class_Id` = 800005;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800005, 'subwaycarnage2', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800005,   1,      65536) /* ItemType - Portal */
     , (800005,  16,         32) /* ItemUseable - Remote */
     , (800005,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800005,  86,        275) /* MinLevel */
     , (800005,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800005, 111,         16) /* PortalBitmask - No Summon */
     , (800005, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800005,   1, True ) /* Stuck */
     , (800005,  11, False) /* IgnoreCollisions */
     , (800005,  12, True ) /* ReportCollisions */
     , (800005,  13, True ) /* Ethereal */
     , (800005,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800005,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800005,   1, 'Subway Carnage Hunting Grounds') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800005,   1, 0x020005D5) /* Setup */
     , (800005,   2, 0x09000003) /* MotionTable */
     , (800005,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800005, 2, 0x01C9013D, 89.833939, -147.750305, -41.994999, 0.003499, 0.000000, 0.000000, 0.999994) /* Destination */
/* @teleloc  0x01C9013D [89.833939 -147.750305 -41.994999] 0.003499 0.000000 0.000000 0.999994 */;
