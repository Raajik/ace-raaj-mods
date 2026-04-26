DELETE FROM `weenie` WHERE `class_Id` = 800454;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800454, 'manadrainfield', 13, '2005-02-09 10:00:00') /* HotSpot */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800454,   1,        128) /* ItemType - Misc */
     , (800454,   5,          1) /* EncumbranceVal */
     , (800454,   8,          1) /* Mass */
     , (800454,   9,          0) /* ValidLocations - None */
     , (800454,  16,          1) /* ItemUseable - No */
     , (800454,  19,          1) /* Value */
     , (800454,  44,        999) /* Damage */
     , (800454,  45,        512) /* DamageType - Mana */
     , (800454,  93,         12) /* PhysicsState - Ethereal, ReportCollisions */
     , (800454, 119,          0) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800454,   1, True ) /* Stuck */
     , (800454,  11, False) /* IgnoreCollisions */
     , (800454,  12, True ) /* ReportCollisions */
     , (800454,  13, True ) /* Ethereal */
     , (800454,  14, False) /* GravityStatus */
     , (800454,  18, True ) /* Visibility */
     , (800454,  24, True ) /* UiHidden */
     , (800454,  55, True ) /* IsHot */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800454,  22,       1) /* DamageVariance */
     , (800454,  39,    1.75) /* DefaultScale */
     , (800454, 105,       1) /* HotspotCycleTime */
     , (800454, 106,     0.5) /* HotspotCycleTimeVariance */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800454,   1, 'Menhir Mana Drain Field') /* Name */
     , (800454,  17, 'You feel a great swell of power rise from the ground beneath you, restoring %i points of your mana.') /* ActivationTalk */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800454,   1,   33556024) /* Setup */
     , (800454,   3,  536871008) /* SoundTable */
     , (800454,   8,  100667465) /* Icon */;
