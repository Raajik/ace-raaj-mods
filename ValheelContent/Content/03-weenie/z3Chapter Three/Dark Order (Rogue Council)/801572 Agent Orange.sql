DELETE FROM `weenie` WHERE `class_Id` = 801572;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801572, 'Agent Orange', 13, '2005-02-09 10:00:00') /* HotSpot */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801572,   1,        128) /* ItemType - Misc */
     , (801572,   5,         10) /* EncumbranceVal */
     , (801572,   8,         10) /* Mass */
     , (801572,  16,          1) /* ItemUseable - No */
     , (801572,  19,          5) /* Value */
     , (801572,  44,        300) /* Damage */
     , (801572,  45,         16) /* DamageType - Fire */
     , (801572,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (801572, 119,          0) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801572,   1, True ) /* Stuck */
     , (801572,  11, False) /* IgnoreCollisions */
     , (801572,  12, True ) /* ReportCollisions */
     , (801572,  13, True ) /* Ethereal */
     , (801572,  14, True ) /* GravityStatus */
     , (801572,  15, True ) /* LightsStatus */
     , (801572,  24, True ) /* UiHidden */
     , (801572,  55, True ) /* IsHot */
     , (801572,  57, False) /* AffectsAis */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801572,  22,     0.1) /* DamageVariance */
     , (801572,  39,     2.3) /* DefaultScale */
     , (801572, 105,       1) /* HotspotCycleTime */
     , (801572, 106,     0.2) /* HotspotCycleTimeVariance */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801572,   1, 'Agent Orange') /* Name */
     , (801572,  17, 'The roaring corrosion stings you for %i damage!') /* ActivationTalk */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801572,   1,   33556116) /* Setup */
     , (801572,   2,  150995314) /* MotionTable */
     , (801572,   8,  100667499) /* Icon */;
