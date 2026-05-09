DELETE FROM `weenie` WHERE `class_Id` = 802619;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802619, 'ShatteredDepths', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802619,   1,      65536) /* ItemType - Portal */
     , (802619,  16,         32) /* ItemUseable - Remote */
     , (802619,  86,        275) /* MinLevel */
     , (802619,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802619, 111,         32) /* PortalBitmask - NoRecall */
     , (802619, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802619,   1, True ) /* Stuck */
     , (802619,  11, False) /* IgnoreCollisions */
     , (802619,  12, True ) /* ReportCollisions */
     , (802619,  13, True ) /* Ethereal */
     , (802619,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802619,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802619,   1, 'Shattered Depths') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802619,   1,   33555923) /* Setup */
     , (802619,   2,  150994947) /* MotionTable */
     , (802619,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802619, 2, 0x002502B2, 22.679850, -40.051956, -5.995000, -0.717313, 0, 0, 0.696751) /* Destination */
/* @teleloc 0x002502B2 [22.679850 -40.051956 -5.995000] -0.717313 0.000000 0.000000 0.696751 */;
