DELETE FROM `weenie` WHERE `class_Id` = 802184;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802184, 'Stage Three Portal', 7, '2019-03-30 17:13:24') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802184,   1,      65536) /* ItemType - Portal */
     , (802184,  16,         32) /* ItemUseable - Remote */
     , (802184,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802184, 111,         32) /* PortalBitmask - NoRecall */
     , (802184, 133,          1) /* ShowableOnRadar - ShowNever */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802184,   1, True ) /* Stuck */
     , (802184,  12, True ) /* ReportCollisions */
     , (802184,  13, True ) /* Ethereal */
     , (802184,  14, False) /* GravityStatus */
     , (802184,  15, True ) /* LightsStatus */
     , (802184,  19, True ) /* Attackable */
     , (802184,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802184,  54, -0.100000001490116) /* UseRadius */
     , (802184,  76,     0.7) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802184,   1, 'Stage Three') /* Name */
     , (802184,  37, 'PartTwoDone') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802184,   1,   33554867) /* Setup */
     , (802184,   2,  150994947) /* MotionTable */
     , (802184,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802184, 2, 2449736387, 118.717, -141.203, 0.005, 0.977131, 0, 0, -0.21264) /* Destination */
/* @teleloc 0x920402C3 [118.717003 -141.203003 0.005000] 0.977131 0.000000 0.000000 -0.212640 */;
