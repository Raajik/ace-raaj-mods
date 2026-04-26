DELETE FROM `weenie` WHERE `class_Id` = 300024;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300024, '300024-ancientstripofparchment', 128, '2022-06-03 19:42:47') /* Misc. */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300024,   1,        128) /* ItemType - Misc */
     , (300024,   5,         25) /* EncumbranceVal */
     , (300024,  11,          1) /* MaxStackSize */
     , (300024,  12,          1) /* StackSize */
     , (300024,  13,         25) /* StackUnitEncumbrance */
     , (300024,  15,         20) /* StackUnitValue */
     , (300024,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (300024,  19,         20) /* Value */
     , (300024,  33,          1) /* Bonded - Bonded */
     , (300024,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300024,  94,        128) /* TargetType - Misc */
     , (300024, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300024,  22, True ) /* Inscribable */
     , (300024,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300024,   1, 'Milena''s Torn Parchment.') /* Name */
     , (300024,  16, 'What little can be seen of the text looks to be written in ancient symbols. Bring this to the Arcanum Historian at 12.5S, 45.5E. He will be able to translate it.') /* LongDesc */
     , (300024,  33, 'ParchmentMilena') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300024,   1,   33554773) /* Setup */
     , (300024,   3,  536870932) /* SoundTable */
     , (300024,   8,  100692696) /* Icon */
     , (300024,  22,  872415275) /* PhysicsEffectTable */;
