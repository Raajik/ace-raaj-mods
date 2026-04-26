DELETE FROM `weenie` WHERE `class_Id` = 1000164;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000164, 'ClayVase1', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000164,   1,        128) /* ItemType - Misc */
     , (1000164,   8,        500) /* Mass */
     , (1000164,  16,          0) /* ItemUseable - Remote */
     , (1000164,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000164,   1, True ) /* Stuck */
     , (1000164,  11, False) /* IgnoreCollisions */
     , (1000164,  12, True ) /* ReportCollisions */
     , (1000164,  13, False) /* Ethereal */
     , (1000164,  14, False) /* GravityStatus */
     , (1000164,  19, True ) /* Attackable */
     , (1000164,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000164,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000164,   1, 'ClayVase1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000164,   1,   33555091) /* Setup */
     /* , (1000164,   2,  150994965) /* MotionTable */;
