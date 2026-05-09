DELETE FROM `weenie` WHERE `class_Id` = 1000017;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000017, 'Wall1', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000017,   1,        128) /* ItemType - Misc */
     , (1000017,   8,        500) /* Mass */
     , (1000017,  16,          0) /* ItemUseable - Remote */
     , (1000017,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000017,   1, True ) /* Stuck */
     , (1000017,  11, False) /* IgnoreCollisions */
     , (1000017,  12, True ) /* ReportCollisions */
     , (1000017,  13, False) /* Ethereal */
     , (1000017,  14, False) /* GravityStatus */
     , (1000017,  19, True ) /* Attackable */
     , (1000017,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000017,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000017,   1, 'Wall1') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000017,   1,   33561462) /* Setup */;
