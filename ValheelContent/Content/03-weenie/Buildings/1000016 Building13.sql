DELETE FROM `weenie` WHERE `class_Id` = 1000016;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000016, 'Building13', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000016,   1,        128) /* ItemType - Misc */
     , (1000016,   8,        500) /* Mass */
     , (1000016,  16,          0) /* ItemUseable - Remote */
     , (1000016,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000016,   1, True ) /* Stuck */
     , (1000016,  11, False) /* IgnoreCollisions */
     , (1000016,  12, True ) /* ReportCollisions */
     , (1000016,  13, False) /* Ethereal */
     , (1000016,  14, False) /* GravityStatus */
     , (1000016,  19, True ) /* Attackable */
     , (1000016,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000016,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000016,   1, 'Building13') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000016,   1,   33561464) /* Setup */;
