DELETE FROM `weenie` WHERE `class_Id` = 802107;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802107, 'Tradewinds Path', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802107,   1,      65536) /* ItemType - Portal */
     , (802107,  16,         32) /* ItemUseable - Remote */
     , (802107,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (802107,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802107, 111,         49) /* PortalBitmask - No Tie, Recall */
     , (802107, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802107,   1, True ) /* Stuck */
     , (802107,  11, False) /* IgnoreCollisions */
     , (802107,  12, True ) /* ReportCollisions */
     , (802107,  13, True ) /* Ethereal */
     , (802107,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802107,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802107,   1, 'Tradewinds Path') /* Name */
     , (802107,  37, 'Supporter') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802107,   1, 0x020005D5) /* Setup */
     , (802107,   2, 0x09000003) /* MotionTable */
     , (802107,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802107, 2, 0x00AC0112, 39.969059, -10.327014, 0.005000, 0.001334, 0.000000, 0.000000, -0.999999) /* Destination */
/* @teleloc   0x00AC0112 [39.969059 -10.327014 0.005000] 0.001334 0.000000 0.000000 -0.999999 */;
