DELETE FROM `weenie` WHERE `class_Id` = 1000148;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000148, 'WoodenCavePost', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000148,   1,        128) /* ItemType - Misc */
     , (1000148,   8,        500) /* Mass */
     , (1000148,  16,          0) /* ItemUseable - Remote */
     , (1000148,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000148,   1, True ) /* Stuck */
     , (1000148,  11, False) /* IgnoreCollisions */
     , (1000148,  12, True ) /* ReportCollisions */
     , (1000148,  13, False) /* Ethereal */
     , (1000148,  14, False) /* GravityStatus */
     , (1000148,  19, True ) /* Attackable */
     , (1000148,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000148,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000148,   1, 'WoodenCavePost') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000148,   1,   33554924) /* Setup */
     /* , (1000148,   2,  150994965) /* MotionTable */;
