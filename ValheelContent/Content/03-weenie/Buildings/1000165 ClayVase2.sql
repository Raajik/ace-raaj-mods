DELETE FROM `weenie` WHERE `class_Id` = 1000165;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000165, 'ClayVase2', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000165,   1,        128) /* ItemType - Misc */
     , (1000165,   8,        500) /* Mass */
     , (1000165,  16,          0) /* ItemUseable - Remote */
     , (1000165,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000165,   1, True ) /* Stuck */
     , (1000165,  11, False) /* IgnoreCollisions */
     , (1000165,  12, True ) /* ReportCollisions */
     , (1000165,  13, False) /* Ethereal */
     , (1000165,  14, False) /* GravityStatus */
     , (1000165,  19, True ) /* Attackable */
     , (1000165,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000165,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000165,   1, 'ClayVase2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000165,   1,   33555092) /* Setup */
     /* , (1000165,   2,  150994965) /* MotionTable */;
