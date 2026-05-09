DELETE FROM `weenie` WHERE `class_Id` = 802049;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802049, 'ObsidianGraveyard', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802049,   1,      65536) /* ItemType - Portal */
     , (802049,  16,         32) /* ItemUseable - Remote */
     , (802049,  86,        100) /* MinLevel */
     , (802049,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802049, 111,         32) /* PortalBitmask - Unrestricted */
     , (802049, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802049,   1, True ) /* Stuck */
     , (802049,  11, False) /* IgnoreCollisions */
     , (802049,  12, True ) /* ReportCollisions */
     , (802049,  13, True ) /* Ethereal */
     , (802049,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802049,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802049,   1, 'Obsidian Graveyard (100-139)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802049,   1,   33555922) /* Setup */
     , (802049,   2,  150994947) /* MotionTable */
     , (802049,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802049, 2, 4138401796, 1.28037, 73.8033, 14.3251, -0.539577, 0, 0, -0.283444) /* Destination */
/* @teleloc 0xF6AB0004 [1.280370 73.803299 14.325100] -0.539577 0.000000 0.000000 -0.283444 */;
