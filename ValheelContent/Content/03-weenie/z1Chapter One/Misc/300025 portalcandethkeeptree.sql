DELETE FROM `weenie` WHERE `class_Id` = 300025;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300025, 'portalcandethkeeptree1', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300025,   1,      65536) /* ItemType - Portal */
     , (300025,  16,         32) /* ItemUseable - Remote */
     , (300025,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (300025, 111,          1) /* PortalBitmask - Unrestricted */
     , (300025, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300025,   1, True ) /* Stuck */
     , (300025,  11, False) /* IgnoreCollisions */
     , (300025,  12, True ) /* ReportCollisions */
     , (300025,  13, True ) /* Ethereal */
     , (300025,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300025,  54,    -0.1) /* UseRadius */;
