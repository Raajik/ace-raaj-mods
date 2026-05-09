DELETE FROM `weenie` WHERE `class_Id` = 802186;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802186, 'Speedrun Token', 51, '2023-02-25 11:49:55') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802186,   1,        128) /* ItemType - Misc */
     , (802186,   5,          5) /* EncumbranceVal */
     , (802186,  16,          1) /* ItemUseable - No */
     , (802186,  19,        100) /* Value */
     , (802186,  33,          1) /* Bonded - Bonded */
     , (802186,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802186, 114,          1) /* Attuned - Attuned */
     , (802186, 267,        300) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802186,   1, False) /* Stuck */
     , (802186,  11, True ) /* IgnoreCollisions */
     , (802186,  13, True ) /* Ethereal */
     , (802186,  14, True ) /* GravityStatus */
     , (802186,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802186,   1, 'Speedrun Token') /* Name */
     , (802186,  16, 'Hand this to Treylis in the Town Network for a score based reward.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802186,   1,   33554802) /* Setup */
     , (802186,   3,  536870932) /* SoundTable */
     , (802186,   8,  100693003) /* Icon */
     , (802186,  22,  872415275) /* PhysicsEffectTable */
     , (802186,  52,  100689404) /* IconUnderlay */;
