DELETE FROM `weenie` WHERE `class_Id` = 802214;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802214, 'Speedrun Token300', 51, '2023-02-25 11:49:55') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802214,   1,        128) /* ItemType - Misc */
     , (802214,   5,          5) /* EncumbranceVal */
     , (802214,  16,          1) /* ItemUseable - No */
     , (802214,  19,        100) /* Value */
     , (802214,  33,          1) /* Bonded - Bonded */
     , (802214,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802214, 114,          1) /* Attuned - Attuned */
     , (802214, 267,        300) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802214,   1, False) /* Stuck */
     , (802214,  11, True ) /* IgnoreCollisions */
     , (802214,  13, True ) /* Ethereal */
     , (802214,  14, True ) /* GravityStatus */
     , (802214,  19, True ) /* Attackable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802214,   1, 'Speedrun Token') /* Name */
     , (802214,  16, 'Hand this to Treylis in the Town Network for a score based reward.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802214,   1,   33554802) /* Setup */
     , (802214,   3,  536870932) /* SoundTable */
     , (802214,   8,  100693003) /* Icon */
     , (802214,  22,  872415275) /* PhysicsEffectTable */
     , (802214,  52,  100689404) /* IconUnderlay */;
