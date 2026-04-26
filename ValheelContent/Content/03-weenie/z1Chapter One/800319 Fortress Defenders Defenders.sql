DELETE FROM `weenie` WHERE `class_Id` = 800319;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800319, 'Fortress Defenders Defenders', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800319,   1,      65536) /* ItemType - Portal */
     , (800319,  16,         32) /* ItemUseable - Remote */
     , (800319,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800319,  86,        275) /* MinLevel */
     , (800319,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800319, 111,         16) /* PortalBitmask - No Summon */
     , (800319, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800319,   1, True ) /* Stuck */
     , (800319,  11, False) /* IgnoreCollisions */
     , (800319,  12, True ) /* ReportCollisions */
     , (800319,  13, True ) /* Ethereal */
     , (800319,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800319,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800319,   1, 'Fortress Defenders Defenders') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800319,   1, 0x020005D5) /* Setup */
     , (800319,   2, 0x09000003) /* MotionTable */
     , (800319,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800319, 2, 0xEC0E0032, 155.827667, 31.549616, 31.004999, -0.004079, 0.000000, 0.000000, -0.999992) /* Destination */
/* @teleloc  0xEC0E0032 [155.827667 31.549616 31.004999] -0.004079 0.000000 0.000000 -0.999992 */;
