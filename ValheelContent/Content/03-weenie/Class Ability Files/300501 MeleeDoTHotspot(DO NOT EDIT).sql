DELETE FROM `weenie` WHERE `class_Id` = 300501;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300501, 'abilitytesthotspot', 13, '2005-02-09 10:00:00') /* HotSpot */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300501,   1,        128) /* ItemType - Misc */
     , (300501,   5,          1) /* EncumbranceVal */
     , (300501,   8,          1) /* Mass */
     , (300501,   9,          0) /* ValidLocations - None */
     , (300501,  16,          1) /* ItemUseable - No */
     , (300501,  19,          1) /* Value */
     , (300501,  44,         -5) /* Damage */
     , (300501,  45,        128) /* DamageType - Health */
     , (300501,  93,         12) /* PhysicsState - Ethereal, ReportCollisions */
     , (300501, 119,          0) /* Active */
	 , (300501, 267,         10) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300501,   1, True ) /* Stuck */
     , (300501,  11, False) /* IgnoreCollisions */
     , (300501,  12, True ) /* ReportCollisions */
     , (300501,  13, True ) /* Ethereal */
     , (300501,  14, False) /* GravityStatus */
     , (300501,  18, False ) /* Visibility */
     , (300501,  24, True ) /* UiHidden */
     , (300501,  55, False ) /* IsHot */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (300501,  22,       0.01) /* DamageVariance */
     , (300501,  39,       1) /* DefaultScale */
	 , (300501,  76,       0.05) /* Translucency  */
     , (300501, 105,       3) /* HotspotCycleTime */
     , (300501, 106,       0) /* HotspotCycleTimeVariance */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300501,   1, 'Ability Test Hotspot') /* Name */
     , (300501,  17, 'You feel a great swell of power rise from the ground beneath you, restoring %i points of your mana.') /* ActivationTalk */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300501,   1,   33561556) /* Setup */
     , (300501,   3,  536871008) /* SoundTable */
     , (300501,   8,  100667465) /* Icon */;
