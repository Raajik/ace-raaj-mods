DELETE FROM `weenie` WHERE `class_Id` = 803299;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803299, 'TradewindsPathPortal', 7, '2021-11-08 06:01:47') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803299,   1,      65536) /* ItemType - Portal */
     , (803299,  16,         32) /* ItemUseable - Remote */
     , (803299,  86,        250) /* MinLevel */
     , (803299,  87,        400) /* MaxLevel */
     , (803299,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803299, 111,         49) /* PortalBitmask - No Tie, Recall */
     , (803299, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803299,   1, True ) /* Stuck */
     , (803299,  11, False) /* IgnoreCollisions */
     , (803299,  12, True ) /* ReportCollisions */
     , (803299,  13, True ) /* Ethereal */
     , (803299,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803299,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803299,   1, 'Tradewinds Path') /* Name */
     /* , (803299,  37, 'KingAlarthaKT@KillTaskInProgress') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803299,   1, 0x020005D5) /* Setup */
     , (803299,   2, 0x09000003) /* MotionTable */
     , (803299,   8, 0x0600106B) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (803299, 2, 0x00AC0112, 39.969059, -10.327014, 0.005000, 0.001334, 0.000000, 0.000000, -0.999999) /* Destination */
/* @teleloc   0x00AC0112 [39.969059 -10.327014 0.005000] 0.001334 0.000000 0.000000 -0.999999 */;
