DELETE FROM `weenie` WHERE `class_Id` = 300503;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300503, 'lifewellhotspot', 13, '2005-02-09 10:00:00') /* HotSpot */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300503,   1,        128) /* ItemType - Misc */
     , (300503,   5,          1) /* EncumbranceVal */
     , (300503,   8,          1) /* Mass */
     , (300503,   9,          0) /* ValidLocations - None */
     , (300503,  16,          1) /* ItemUseable - No */
     , (300503,  19,          1) /* Value */
     , (300503,  44,          5) /* Damage */
     , (300503,  45,        128) /* DamageType - Health */
     , (300503,  93,         12) /* PhysicsState - Ethereal, ReportCollisions */
     , (300503, 119,          0) /* Active */
	 , (300503, 267,         10) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300503,   1, True ) /* Stuck */
     , (300503,  11, False) /* IgnoreCollisions */
     , (300503,  12, True ) /* ReportCollisions */
     , (300503,  13, True ) /* Ethereal */
     , (300503,  14, False) /* GravityStatus */
     , (300503,  18, True ) /* Visibility */
     , (300503,  24, True ) /* UiHidden */
     , (300503,  55, False ) /* IsHot */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300503,  22,       0.01) /* DamageVariance */
     , (300503,  39,          1) /* DefaultScale */
	 , (300503,  76,       0.05) /* Translucency  */
     , (300503, 105,       3) /* HotspotCycleTime */
     , (300503, 106,       0) /* HotspotCycleTimeVariance */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300503,   1, 'Life Well Hotspot') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300503,   1,   33561556) /* Setup */
     , (300503,   3,  536871008) /* SoundTable */
     , (300503,   8,  100667465) /* Icon */;
