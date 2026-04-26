DELETE FROM `weenie` WHERE `class_Id` = 1000119;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (1000119, 'Templee', 1, '2020-01-08 07:59:45') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (1000119,   1,        128) /* ItemType - Misc */
     , (1000119,   5,      70000) /* EncumbranceVal */
     , (1000119,   8,      14000) /* Mass */
     , (1000119,  16,          1) /* ItemUseable - No */
     , (1000119,  19,        900) /* Value */
     , (1000119,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (1000119,   1, True ) /* Stuck */
     , (1000119,  12, True ) /* ReportCollisions */
     , (1000119,  13, false) /* Ethereal */
     , (1000119,  14, False) /* GravityStatus */
     , (1000119,  22, True ) /*  */
     , (1000119,  24, true ) /* UiHidden */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (1000119,  39,     1.25) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (1000119,   1, 'Temple') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (1000119,   1,  0x02001A91) /* Setup */
     , (1000119,   8,  100667505) /* Icon */;
