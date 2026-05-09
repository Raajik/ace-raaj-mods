DELETE FROM `weenie` WHERE `class_Id` = 1000035;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000035, 'TummieLeanto1', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000035,   1,        128) /* ItemType - Misc */
     , (1000035,   8,        500) /* Mass */
     , (1000035,  19,          0) /* Value */
     , (1000035,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000035,   1, True ) /* Stuck */
     , (1000035,  11, False) /* IgnoreCollisions */
     , (1000035,  12, True ) /* ReportCollisions */
     , (1000035,  13, False) /* Ethereal */
     , (1000035,  14, False) /* GravityStatus */
     , (1000035,  19, False) /* Attackable */
     , (1000035,  24, True ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000035,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000035,   1, 'Tumerok Leanto') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000035,   1,   33557349) /* Setup */;
