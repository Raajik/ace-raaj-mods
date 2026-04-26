DELETE FROM `weenie` WHERE `class_Id` = 801401;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801401, 'Fort Terra Sign', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801401,   1,        128) /* ItemType - Misc */
     , (801401,   5,       9000) /* EncumbranceVal */
     , (801401,   8,       2000) /* Mass */
     , (801401,  16,          1) /* ItemUseable - No */
     , (801401,  19,        125) /* Value */
     , (801401,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801401,   1, True ) /* Stuck */
     , (801401,  12, True ) /* ReportCollisions */
     , (801401,  13, False) /* Ethereal */
     , (801401,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801401,   1, 'Fort Terra') /* Name */
     , (801401,  16, 'Welcome to Fort Terra, your home away from home.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801401,   1,   33555229) /* Setup */
     , (801401,   8,  100667494) /* Icon */;
