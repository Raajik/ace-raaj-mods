DELETE FROM `weenie` WHERE `class_Id` = 1000130;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000130, 'Beacon2', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000130,   1,        128) /* ItemType - Misc */
     , (1000130,   8,        500) /* Mass */
     , (1000130,  16,          0) /* ItemUseable - Remote */
     , (1000130,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000130,   1, True ) /* Stuck */
     , (1000130,  11, False) /* IgnoreCollisions */
     , (1000130,  12, True ) /* ReportCollisions */
     , (1000130,  13, False) /* Ethereal */
     , (1000130,  14, False) /* GravityStatus */
     , (1000130,  19, True ) /* Attackable */
     , (1000130,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000130,  39,       3) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000130,   1, 'Beacon2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000130,   1,   33560140) /* Setup */;
