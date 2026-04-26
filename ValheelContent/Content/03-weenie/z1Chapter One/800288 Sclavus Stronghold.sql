DELETE FROM `weenie` WHERE `class_Id` = 800288;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800288, 'Sclavus Stronghold', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800288,   1,      65536) /* ItemType - Portal */
     , (800288,  16,         32) /* ItemUseable - Remote */
     , (800288,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800288,  86,        200) /* MinLevel */
     , (800288,  87,        300) /* MaxLevel */
     , (800288,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800288, 111,         32) /* PortalBitmask - NoRecall */
     , (800288, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800288,   1, True ) /* Stuck */
     , (800288,  11, False) /* IgnoreCollisions */
     , (800288,  12, True ) /* ReportCollisions */
     , (800288,  13, True ) /* Ethereal */
     , (800288,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800288,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800288,   1, 'Sclavus Stronghold') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800288,   1,   33555925) /* Setup */
     , (800288,   2,  150994947) /* MotionTable */
     , (800288,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800288, 2, 4179886105, 83.3581, 3.39562, 17.4391, 0.006279, 0, 0, -0.99998) /* Destination */
/* @teleloc 0xF9240019 [83.358101 3.395620 17.439100] 0.006279 0.000000 0.000000 -0.999980 */;
