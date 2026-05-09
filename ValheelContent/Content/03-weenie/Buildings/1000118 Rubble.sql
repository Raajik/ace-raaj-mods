DELETE FROM `weenie` WHERE `class_Id` = 1000118;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000118, 'Rubble', 1, '2020-01-08 07:59:45') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000118,   1,        128) /* ItemType - Misc */
     , (1000118,   5,      70000) /* EncumbranceVal */
     , (1000118,   8,      14000) /* Mass */
     , (1000118,  16,          1) /* ItemUseable - No */
     , (1000118,  19,        900) /* Value */
     , (1000118,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000118,   1, True ) /* Stuck */
     , (1000118,  12, True ) /* ReportCollisions */
     , (1000118,  13, true) /* Ethereal */
     , (1000118,  14, False) /* GravityStatus */
     , (1000118,  24, true ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000118,  44,    -1) /* TimeToRot */
     , (1000118,  39,     4) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000118,   1, 'Rubble') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000118,   1,   0x02000922) /* Setup */
     , (1000118,   8,  100667505) /* Icon */;
