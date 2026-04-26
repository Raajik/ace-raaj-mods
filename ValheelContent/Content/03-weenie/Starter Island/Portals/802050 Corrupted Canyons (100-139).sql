DELETE FROM `weenie` WHERE `class_Id` = 802050;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802050, 'CorruptedCanyons', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802050,   1,      65536) /* ItemType - Portal */
     , (802050,  16,         32) /* ItemUseable - Remote */
     , (802050,  86,        100) /* MinLevel */
     , (802050,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802050, 111,         32) /* PortalBitmask - Unrestricted */
     , (802050, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802050,   1, True ) /* Stuck */
     , (802050,  11, False) /* IgnoreCollisions */
     , (802050,  12, True ) /* ReportCollisions */
     , (802050,  13, True ) /* Ethereal */
     , (802050,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802050,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802050,   1, 'Corrupted Canyons (100-139)') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802050,   1,   33555922) /* Setup */
     , (802050,   2,  150994947) /* MotionTable */
     , (802050,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802050, 2, 4121231418, 189.432, 35.6069, 17.7627, -0.54482, 0, 0, 0.838553) /* Destination */
/* @teleloc 0xF5A5003A [189.432007 35.606899 17.762699] -0.544820 0.000000 0.000000 0.838553 */;
