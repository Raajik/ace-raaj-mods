DELETE FROM `weenie` WHERE `class_Id` = 802931;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802931, 'Gorth Falls', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802931,   1,      65536) /* ItemType - Portal */
     , (802931,  16,         32) /* ItemUseable - Remote */
     , (802931,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (802931,  86,       6000) /* MinLevel */
     , (802931,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802931, 111,         32) /* PortalBitmask - NoRecall */
     , (802931, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802931,   1, True ) /* Stuck */
     , (802931,  11, False) /* IgnoreCollisions */
     , (802931,  12, True ) /* ReportCollisions */
     , (802931,  13, True ) /* Ethereal */
     , (802931,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802931,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802931,   1, 'Gorth Falls') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802931,   1,   33556212) /* Setup */
     , (802931,   2,  150994947) /* MotionTable */
     , (802931,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802931, 2, 0xEC0F0027, 115.973557, 166.970367, 245.175537, -0.133390, 0, 0, 0.991064) /* Destination */
/* @teleloc 0xEC0F0027 [115.973557 166.970367 245.175537] -0.133390 0.000000 0.000000 0.991064 */;
