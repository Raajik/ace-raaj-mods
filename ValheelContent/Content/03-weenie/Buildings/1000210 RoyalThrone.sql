DELETE FROM `weenie` WHERE `class_Id` = 1000210;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000210, 'RoyalThrone', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000210,   1,        128) /* ItemType - Misc */
     , (1000210,   8,        500) /* Mass */
     , (1000210,  16,          0) /* ItemUseable - Remote */
     , (1000210,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000210,   1, True ) /* Stuck */
     , (1000210,  11, False) /* IgnoreCollisions */
     , (1000210,  12, True ) /* ReportCollisions */
     , (1000210,  13, False) /* Ethereal */
     , (1000210,  14, False) /* GravityStatus */
     , (1000210,  19, True ) /* Attackable */
     , (1000210,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000210,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000210,   1, 'RoyalThrone') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000210,   1,   33559199) /* Setup */
     /* , (1000210,   2,  150995197) /* MotionTable */;
