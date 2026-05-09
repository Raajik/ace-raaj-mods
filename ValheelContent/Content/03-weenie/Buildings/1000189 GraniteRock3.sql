DELETE FROM `weenie` WHERE `class_Id` = 1000189;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000189, 'GraniteRock3', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000189,   1,        128) /* ItemType - Misc */
     , (1000189,   8,        500) /* Mass */
     , (1000189,  16,          0) /* ItemUseable - Remote */
     , (1000189,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000189,   1, True ) /* Stuck */
     , (1000189,  11, False) /* IgnoreCollisions */
     , (1000189,  12, True ) /* ReportCollisions */
     , (1000189,  13, False) /* Ethereal */
     , (1000189,  14, False) /* GravityStatus */
     , (1000189,  19, True ) /* Attackable */
     , (1000189,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000189,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000189,   1, 'GraniteRock3') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000189,   1,   33556604) /* Setup */
     /* , (1000189,   2,  150994965) /* MotionTable */;
