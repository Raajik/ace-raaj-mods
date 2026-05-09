DELETE FROM `weenie` WHERE `class_Id` = 1000184;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000184, 'GraniteRock2', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000184,   1,        128) /* ItemType - Misc */
     , (1000184,   8,        500) /* Mass */
     , (1000184,  16,          0) /* ItemUseable - Remote */
     , (1000184,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000184,   1, True ) /* Stuck */
     , (1000184,  11, False) /* IgnoreCollisions */
     , (1000184,  12, True ) /* ReportCollisions */
     , (1000184,  13, False) /* Ethereal */
     , (1000184,  14, False) /* GravityStatus */
     , (1000184,  19, True ) /* Attackable */
     , (1000184,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000184,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000184,   1, 'GraniteRock2') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000184,   1,   33556172) /* Setup */
     /* , (1000184,   2,  150994965) /* MotionTable */;
