DELETE FROM `weenie` WHERE `class_Id` = 300011;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300011, 'Celdiseths House', 7, '2005-02-09 10:00:00') /* Portal */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300011,   1,      65536) /* ItemType - Portal */
     , (300011,  16,         32) /* ItemUseable - Remote */
     , (300011,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (300011, 111,        129) /* PortalBitmask - Unrestricted */
     , (300011, 133,          4) /* ShowableOnRadar - ShowAlways */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300011,   1, True ) /* Stuck */
     , (300011,  11, False) /* IgnoreCollisions */
     , (300011,  12, False) /* ReportCollisions */
     , (300011,  13, True ) /* Ethereal */
     , (300011,  14, False) /* GravityStatus */
     , (300011,  15, True ) /* LightsStatus */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300011,  12,     0.5) /* Shade */
     , (300011,  54,    0.75) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300011,   1, 'Celdiseths House') /* Name */;
    
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300011,   1, 0x020006F4) /* Setup */
     , (300011,   2, 0x09000003) /* MotionTable */
     , (300011,   6, 0x040001FA) /* PaletteBase */
     , (300011,   7, 0x100000C4) /* ClothingBase */
     , (300011,   8, 0x0600106B) /* Icon */;
	 
INSERT INTO `weenie_properties_position` (`object_Id`, `position_Type`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (300011,   2, 0x9AEB001E, 76.01, 141.01, 20.01, 0.382683, 0.0, 0.00, -0.923880) /* Destination */;