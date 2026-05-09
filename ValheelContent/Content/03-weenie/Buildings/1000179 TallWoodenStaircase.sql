DELETE FROM `weenie` WHERE `class_Id` = 1000179;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000179, 'TallWoodenStaircase', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000179,   1,        128) /* ItemType - Misc */
     , (1000179,   8,        500) /* Mass */
     , (1000179,  16,          0) /* ItemUseable - Remote */
     , (1000179,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000179,   1, True ) /* Stuck */
     , (1000179,  11, False) /* IgnoreCollisions */
     , (1000179,  12, True ) /* ReportCollisions */
     , (1000179,  13, False) /* Ethereal */
     , (1000179,  14, False) /* GravityStatus */
     , (1000179,  19, True ) /* Attackable */
     , (1000179,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000179,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000179,   1, 'TallWoodenStaircase') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000179,   1,   33555436) /* Setup */
     /* , (1000179,   2,  150994965) /* MotionTable */;
