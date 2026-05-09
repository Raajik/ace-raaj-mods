DELETE FROM `weenie` WHERE `class_Id` = 1000170;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000170, 'WoodenStairs2', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000170,   1,        128) /* ItemType - Misc */
     , (1000170,   8,        500) /* Mass */
     , (1000170,  16,          0) /* ItemUseable - Remote */
     , (1000170,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000170,   1, True ) /* Stuck */
     , (1000170,  11, False) /* IgnoreCollisions */
     , (1000170,  12, True ) /* ReportCollisions */
     , (1000170,  13, False) /* Ethereal */
     , (1000170,  14, False) /* GravityStatus */
     , (1000170,  19, True ) /* Attackable */
     , (1000170,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000170,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000170,   1, 'WoodenStairs2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000170,   1,   33555251) /* Setup */
     /* , (1000170,   2,  150994965) /* MotionTable */;
