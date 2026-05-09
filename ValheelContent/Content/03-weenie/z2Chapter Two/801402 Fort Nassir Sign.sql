DELETE FROM `weenie` WHERE `class_Id` = 801402;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801402, 'Fort Nassir Sign', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801402,   1,        128) /* ItemType - Misc */
     , (801402,   5,       9000) /* EncumbranceVal */
     , (801402,   8,       2000) /* Mass */
     , (801402,  16,          1) /* ItemUseable - No */
     , (801402,  19,        125) /* Value */
     , (801402,  93,       1048) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801402,   1, True ) /* Stuck */
     , (801402,  12, True ) /* ReportCollisions */
     , (801402,  13, False) /* Ethereal */
     , (801402,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801402,   1, 'Fort Nassir') /* Name */
     , (801402,  16, 'Welcome to Fort Nassir.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801402,   1,   33555229) /* Setup */
     , (801402,   8,  100667494) /* Icon */;
