DELETE FROM `weenie` WHERE `class_Id` = 802453;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802453, 'Kou-an Ruin Portal', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802453,   1,      65536) /* ItemType - Portal */
     , (802453,  16,         32) /* ItemUseable - Remote */
     , (802453,  86,       6000) /* MinLevel */
     , (802453,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802453, 111,         32) /* PortalBitmask - Unrestricted */
     , (802453, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802453,   1, True ) /* Stuck */
     , (802453,  11, False) /* IgnoreCollisions */
     , (802453,  12, True ) /* ReportCollisions */
     , (802453,  13, True ) /* Ethereal */
     , (802453,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802453,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802453,   1, 'Kou-an Ruin Portal') /* Name */
     , (802453,  16, 'You must be Prestige level 100 to enter.') /* LongDesc */
     , (802453,  37, 'PrestigeComplete100') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802453,   1,   33555923) /* Setup */
     , (802453,   2,  150994947) /* MotionTable */
     , (802453,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (802453, 2, 0x5C8F0027, 107.343681, 161.307510, 46.005001, -0.999014, 0, 0, 0.044407) /* Destination */
/* @teleloc 0x5C8F0027 [107.343681 161.307510 46.005001] -0.999014 0.000000 0.000000 0.044407 */;
