DELETE FROM `weenie` WHERE `class_Id` = 1000203;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000203, 'MagicTome', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000203,   1,        128) /* ItemType - Misc */
     , (1000203,   8,        500) /* Mass */
     , (1000203,  16,          0) /* ItemUseable - Remote */
     , (1000203,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000203,   1, True ) /* Stuck */
     , (1000203,  11, False) /* IgnoreCollisions */
     , (1000203,  12, True ) /* ReportCollisions */
     , (1000203,  13, False) /* Ethereal */
     , (1000203,  14, False) /* GravityStatus */
     , (1000203,  19, True ) /* Attackable */
     , (1000203,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000203,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000203,   1, 'MagicTome') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000203,   1,   33558978) /* Setup */
     /* , (1000203,   2,  150995197) /* MotionTable */;
