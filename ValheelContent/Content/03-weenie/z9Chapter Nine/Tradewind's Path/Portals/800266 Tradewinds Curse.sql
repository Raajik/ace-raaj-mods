DELETE FROM `weenie` WHERE `class_Id` = 800266;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800266, 'tradewindscurse2', 13, '2005-02-09 10:00:00') /* HotSpot */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800266,   1,        128) /* ItemType - Misc */
     , (800266,   5,         10) /* EncumbranceVal */
     , (800266,   8,         10) /* Mass */
     , (800266,  16,          1) /* ItemUseable - No */
     , (800266,  19,          5) /* Value */
     , (800266,  44,       1000) /* Damage */
     , (800266,  45,       1024) /* DamageType - Fire */
     , (800266,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800266, 119,          0) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800266,   1, True ) /* Stuck */
     , (800266,  11, False) /* IgnoreCollisions */
     , (800266,  12, True ) /* ReportCollisions */
     , (800266,  13, True ) /* Ethereal */
     , (800266,  14, True ) /* GravityStatus */
     , (800266,  15, True ) /* LightsStatus */
     , (800266,  24, True ) /* UiHidden */
     , (800266,  55, True ) /* IsHot */
     , (800266,  57, False) /* AffectsAis */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800266,  22,     0.1) /* DamageVariance */
     , (800266,  39,     2.3) /* DefaultScale */
     , (800266, 105,       1) /* HotspotCycleTime */
     , (800266, 106,     0.2) /* HotspotCycleTimeVariance */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800266,   1, 'Tradewinds Curse') /* Name */
     , (800266,  17, 'The roaring corrosion stings you for %i damage!') /* ActivationTalk */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800266,   1,   33561060) /* Setup */
     , (800266,   2,  150995314) /* MotionTable */
     , (800266,   8,  100667499) /* Icon */;
