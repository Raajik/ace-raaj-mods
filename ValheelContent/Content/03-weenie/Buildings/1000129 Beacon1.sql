DELETE FROM `weenie` WHERE `class_Id` = 1000129;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000129, 'Beacon1', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000129,   1,        128) /* ItemType - Misc */
     , (1000129,   8,        500) /* Mass */
     , (1000129,  16,          0) /* ItemUseable - Remote */
     , (1000129,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000129,   1, True ) /* Stuck */
     , (1000129,  11, False) /* IgnoreCollisions */
     , (1000129,  12, True ) /* ReportCollisions */
     , (1000129,  13, False) /* Ethereal */
     , (1000129,  14, False) /* GravityStatus */
     , (1000129,  19, True ) /* Attackable */
     , (1000129,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000129,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000129,   1, 'Beacon1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000129,   1,   33560160) /* Setup */;
