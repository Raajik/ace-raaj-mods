DELETE FROM `weenie` WHERE `class_Id` = 1000207;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000207, 'WeaponRack', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000207,   1,        128) /* ItemType - Misc */
     , (1000207,   8,        500) /* Mass */
     , (1000207,  16,          0) /* ItemUseable - Remote */
     , (1000207,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000207,   1, True ) /* Stuck */
     , (1000207,  11, False) /* IgnoreCollisions */
     , (1000207,  12, True ) /* ReportCollisions */
     , (1000207,  13, False) /* Ethereal */
     , (1000207,  14, False) /* GravityStatus */
     , (1000207,  19, True ) /* Attackable */
     , (1000207,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000207,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000207,   1, 'WeaponRack') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000207,   1,   33559175) /* Setup */
     /* , (1000207,   2,  150995197) /* MotionTable */;
