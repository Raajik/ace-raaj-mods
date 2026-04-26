DELETE FROM `weenie` WHERE `class_Id` = 800211;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800211, 'cave of the shadow pirates', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800211,   1,      65536) /* ItemType - Portal */
     , (800211,  16,         32) /* ItemUseable - Remote */
     , (800211,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800211,  86,        275) /* MinLevel */
     , (800211,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800211, 111,         16) /* PortalBitmask - No Summon */
     , (800211, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800211,   1, True ) /* Stuck */
     , (800211,  11, False) /* IgnoreCollisions */
     , (800211,  12, True ) /* ReportCollisions */
     , (800211,  13, True ) /* Ethereal */
     , (800211,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800211,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800211,   1, 'Cave of the Shadow Pirates') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800211,   1, 0x020005D5) /* Setup */
     , (800211,   2, 0x09000003) /* MotionTable */
     , (800211,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800211, 2, 0x003F0330, 69.922813, -150.282639, -5.995000, 0.999987, 0.000000, 0.000000, -0.005032) /* Destination */
/* @teleloc  0x003F0330 [69.922813 -150.282639 -5.995000] 0.999987 0.000000 0.000000 -0.005032 */;
