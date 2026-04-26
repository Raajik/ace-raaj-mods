DELETE FROM `weenie` WHERE `class_Id` = 802213;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802213, 'Speedrun Token200', 51, '2023-02-25 11:49:55') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802213,   1,        128) /* ItemType - Misc */
     , (802213,   5,          5) /* EncumbranceVal */
     , (802213,  16,          1) /* ItemUseable - No */
     , (802213,  19,        100) /* Value */
     , (802213,  33,          1) /* Bonded - Bonded */
     , (802213,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802213, 114,          1) /* Attuned - Attuned */
     , (802213, 267,        300) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802213,   1, False) /* Stuck */
     , (802213,  11, True ) /* IgnoreCollisions */
     , (802213,  13, True ) /* Ethereal */
     , (802213,  14, True ) /* GravityStatus */
     , (802213,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802213,   1, 'Speedrun Token') /* Name */
     , (802213,  16, 'Hand this to Treylis in the Town Network for a score based reward.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802213,   1,   33554802) /* Setup */
     , (802213,   3,  536870932) /* SoundTable */
     , (802213,   8,  100693003) /* Icon */
     , (802213,  22,  872415275) /* PhysicsEffectTable */
     , (802213,  52,  100689404) /* IconUnderlay */;
