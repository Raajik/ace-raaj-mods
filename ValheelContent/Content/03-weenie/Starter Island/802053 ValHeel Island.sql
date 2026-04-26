DELETE FROM `weenie` WHERE `class_Id` = 802053;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802053, 'ValHeelIsland', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802053,   1,      65536) /* ItemType - Portal */
     , (802053,  16,         32) /* ItemUseable - Remote */
     , (802053,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802053, 111,         32) /* PortalBitmask - Unrestricted */
     , (802053, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802053,   1, True ) /* Stuck */
     , (802053,  11, False) /* IgnoreCollisions */
     , (802053,  12, True ) /* ReportCollisions */
     , (802053,  13, True ) /* Ethereal */
     , (802053,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802053,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802053,   1, 'ValHeel Island') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802053,   1,   33555922) /* Setup */
     , (802053,   2,  150994947) /* MotionTable */
     , (802053,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802053, 2, 4087808036, 108.023, 74.6841, 62.005, -0.999976, 0, 0, -0.006875) /* Destination */
/* @teleloc 0xF3A70024 [108.023003 74.684097 62.005001] -0.999976 0.000000 0.000000 -0.006875 */;
