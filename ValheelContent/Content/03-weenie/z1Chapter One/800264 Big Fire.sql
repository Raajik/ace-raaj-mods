DELETE FROM `weenie` WHERE `class_Id` = 800264;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800264, 'bigfire', 13, '2005-02-09 10:00:00') /* HotSpot */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800264,   1,        128) /* ItemType - Misc */
     , (800264,   5,         10) /* EncumbranceVal */
     , (800264,   8,         10) /* Mass */
     , (800264,  16,          1) /* ItemUseable - No */
     , (800264,  19,          5) /* Value */
     , (800264,  93,       3084) /* PhysicsState - Ethereal, ReportCollisions, Gravity, LightingOn */
     , (800264, 119,          0) /* Active */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800264,   1, True ) /* Stuck */
     , (800264,  11, False) /* IgnoreCollisions */
     , (800264,  12, True ) /* ReportCollisions */
     , (800264,  13, True ) /* Ethereal */
     , (800264,  14, True ) /* GravityStatus */
     , (800264,  15, True ) /* LightsStatus */
     , (800264,  24, True ) /* UiHidden */
     , (800264,  57, False) /* AffectsAis */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800264,  22,     0.5) /* DamageVariance */
     , (800264,  39,       5) /* DefaultScale */
     , (800264, 105,       5) /* HotspotCycleTime */
     , (800264, 106,     0.2) /* HotspotCycleTimeVariance */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800264,   1, 'Big Fire') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800264,   1,   33555886) /* Setup */
     , (800264,   3,  536870994) /* SoundTable */
     , (800264,   8,  100669743) /* Icon */;
