DELETE FROM `weenie` WHERE `class_Id` = 1000132;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000132, 'PortalBase', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000132,   1,        128) /* ItemType - Misc */
     , (1000132,   8,        500) /* Mass */
     , (1000132,  16,          0) /* ItemUseable - Remote */
     , (1000132,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000132,   1, True ) /* Stuck */
     , (1000132,  11, True ) /* IgnoreCollisions */
     , (1000132,  12, False) /* ReportCollisions */
     , (1000132,  13, True ) /* Ethereal */
     , (1000132,  14, False) /* GravityStatus */
     , (1000132,  19, True ) /* Attackable */
     , (1000132,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000132,  39,         1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000132,   1, 'PortalBase') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000132,   1,   33558268) /* Setup */;
