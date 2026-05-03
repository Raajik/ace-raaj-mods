DELETE FROM `weenie` WHERE `class_Id` = 801790;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801790, 'FacturedThasali', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801790,   1,      65536) /* ItemType - Portal */
     , (801790,  16,         32) /* ItemUseable - Remote */
     , (801790,  86,         700) /* MinLevel */
     , (801790,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801790, 111,         32) /* PortalBitmask - NoRecall */
     , (801790, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801790,   1, True ) /* Stuck */
     , (801790,  11, False) /* IgnoreCollisions */
     , (801790,  12, True ) /* ReportCollisions */
     , (801790,  13, True ) /* Ethereal */
     , (801790,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801790,  54,    -0.1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801790,   1, 'Fractured Thasali') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801790,   1,   33555922) /* Setup */
     , (801790,   2,  150994947) /* MotionTable */
     , (801790,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (801790, 2, 29622553, 30, -110, 0, 0.714424, 0, 0, -0.699713) /* Destination */
/* @teleloc 0x01C40119 [30.000000 -110.000000 0.000000] 0.714424 0.000000 0.000000 -0.699713 */;
