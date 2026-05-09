DELETE FROM `weenie` WHERE `class_Id` = 1000211;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000211, 'PotionsTable', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000211,   1,        128) /* ItemType - Misc */
     , (1000211,   8,        500) /* Mass */
     , (1000211,  16,          0) /* ItemUseable - Remote */
     , (1000211,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000211,   1, True ) /* Stuck */
     , (1000211,  11, False) /* IgnoreCollisions */
     , (1000211,  12, True ) /* ReportCollisions */
     , (1000211,  13, False) /* Ethereal */
     , (1000211,  14, False) /* GravityStatus */
     , (1000211,  19, True ) /* Attackable */
     , (1000211,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000211,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000211,   1, 'PotionsTable') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000211,   1,   33559200) /* Setup */
     /* , (1000211,   2,  150995197) /* MotionTable */;
