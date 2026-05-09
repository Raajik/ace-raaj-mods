DELETE FROM `weenie` WHERE `class_Id` = 803256;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803256, 'Forge Fire', 13, '2005-02-09 10:00:00') /* HotSpot */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803256,   1,        128) /* ItemType - Misc */
     , (803256,   5,         10) /* EncumbranceVal */
     , (803256,   8,         10) /* Mass */
     , (803256,  16,          1) /* ItemUseable - No */
     , (803256,  19,          5) /* Value */
     , (803256,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (803256, 119,          0) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803256,   1, True ) /* Stuck */
     , (803256,  11, False) /* IgnoreCollisions */
     , (803256,  12, False ) /* ReportCollisions */
     , (803256,  13, True ) /* Ethereal */
     , (803256,  14, False ) /* GravityStatus */
     , (803256,  15, True ) /* LightsStatus */
     , (803256,  24, True ) /* UiHidden */
     , (803256,  55, False ) /* IsHot */
     , (803256,  57, False) /* AffectsAis */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803256,  22,     0.5) /* DamageVariance */
     , (803256, 105,       5) /* HotspotCycleTime */
     , (803256, 106,     0.2) /* HotspotCycleTimeVariance */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803256,   1, 'Forge Fire') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803256,   1,   33555886) /* Setup */
     , (803256,   3,  536870994) /* SoundTable */
     , (803256,   8,  100669743) /* Icon */;
