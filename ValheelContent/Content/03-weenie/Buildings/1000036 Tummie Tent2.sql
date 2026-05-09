DELETE FROM `weenie` WHERE `class_Id` = 1000036;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000036, 'TummieLeanto2', 1, '2020-01-08 07:59:44') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000036,   1,        128) /* ItemType - Misc */
     , (1000036,   8,        500) /* Mass */
     , (1000036,  19,          0) /* Value */
     , (1000036,  93,          8) /* PhysicsState - ReportCollisions */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000036,   1, True ) /* Stuck */
     , (1000036,  11, False) /* IgnoreCollisions */
     , (1000036,  12, True ) /* ReportCollisions */
     , (1000036,  13, False) /* Ethereal */
     , (1000036,  14, False) /* GravityStatus */
     , (1000036,  19, False) /* Attackable */
     , (1000036,  24, True ) /* UiHidden */
     , (1000036,  33, False) /* ResetMessagePending */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000036,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000036,   1, 'Tumerok Leanto') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000036,   1,   33557350) /* Setup */;
