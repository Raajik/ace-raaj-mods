DELETE FROM `weenie` WHERE `class_Id` = 800919;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800919, 'Aetherial Vault', 7, '2020-01-08 07:59:44') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800919,   1,      65536) /* ItemType - Portal */
     , (800919,  16,         32) /* ItemUseable - Remote */
     , (800919,  86,        300) /* MinLevel */
     , (800919,  93,       1032) /* PhysicsState - ReportCollisions, Gravity */
     , (800919, 111,          1) /* PortalBitmask - Unrestricted */
     , (800919, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800919,   1, True ) /* Stuck */
     , (800919,  11, False) /* IgnoreCollisions */
     , (800919,  12, True ) /* ReportCollisions */
     , (800919,  13, True ) /* Ethereal */
     , (800919,  14, False) /* GravityStatus */
     , (800919,  15, True ) /* LightsStatus */
     , (800919,  19, True ) /* Attackable */
     , (800919,  88, True ) /* PortalShowDestination */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800919,  54, -0.100000001490116) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800919,   1, 'Aetherial Vault') /* Name */
     , (800919,  16, 'A tamed Portal to Aetherial Vault') /* LongDesc */
     , (800919,  37, 'AetheriaGuardianKTCompleted') /* QuestRestriction */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800919,   1,   33555923) /* Setup */
     , (800919,   2,  150994947) /* MotionTable */
     , (800919,   8,  100667499) /* Icon */;

INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (800919, 2, 3908501556, 166.409, 82.041, 0.005, -0.92553, 0, 0, -0.378673) /* Destination */
/* @teleloc 0xE8F70034 [166.408997 82.041000 0.005000] -0.925530 0.000000 0.000000 -0.378673 */;
