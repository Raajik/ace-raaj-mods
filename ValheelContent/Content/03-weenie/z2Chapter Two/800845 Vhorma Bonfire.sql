DELETE FROM `weenie` WHERE `class_Id` = 800845;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800845, 'Vhorma Bonfire', 13, '2021-11-01 00:00:00') /* HotSpot */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800845,   1,        128) /* ItemType - Misc */
     , (800845,   5,          1) /* EncumbranceVal */
     , (800845,  16,          1) /* ItemUseable - No */
     , (800845,  19,          1) /* Value */
     , (800845,  93,         12) /* PhysicsState - Ethereal, ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800845,   1, True ) /* Stuck */
     , (800845,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800845,  39,     1.2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800845,   1, 'Vhorma Bonfire') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800845,   1,   33556218) /* Setup */
     , (800845,   3,  536870994) /* SoundTable */
     , (800845,   8,  100669743) /* Icon */;
