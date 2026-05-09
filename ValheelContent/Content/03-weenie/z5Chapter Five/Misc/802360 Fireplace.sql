DELETE FROM `weenie` WHERE `class_Id` = 802360;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802360, 'bigfire2', 13, '2005-02-09 10:00:00') /* HotSpot */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802360,   1,        128) /* ItemType - Misc */
     , (802360,   5,         10) /* EncumbranceVal */
     , (802360,   8,         10) /* Mass */
     , (802360,  16,          1) /* ItemUseable - No */
     , (802360,  19,          5) /* Value */
     , (802360,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (802360, 119,          0) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802360,   1, True ) /* Stuck */
     , (802360,  11, False) /* IgnoreCollisions */
     , (802360,  12, True ) /* ReportCollisions */
     , (802360,  13, True ) /* Ethereal */
     , (802360,  14, True ) /* GravityStatus */
     , (802360,  15, True ) /* LightsStatus */
     , (802360,  24, True ) /* UiHidden */
     , (802360,  57, False) /* AffectsAis */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802360,  22,     0.5) /* DamageVariance */
     , (802360,  39,       2) /* DefaultScale */
     , (802360, 105,       5) /* HotspotCycleTime */
     , (802360, 106,     0.2) /* HotspotCycleTimeVariance */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802360,   1, 'Big Fire') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802360,   1,   33555886) /* Setup */
     , (802360,   3,  536870994) /* SoundTable */
     , (802360,   8,  100669743) /* Icon */;
