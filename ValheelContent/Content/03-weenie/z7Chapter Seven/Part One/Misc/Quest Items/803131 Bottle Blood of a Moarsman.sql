DELETE FROM `weenie` WHERE `class_Id` = 803131;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803131, 'Bottled Blood of a Moarsman', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803131,   1,        128) /* ItemType - Misc */
     , (803131,   5,        100) /* EncumbranceVal */
     , (803131,   8,         10) /* Mass */
     , (803131,   9,          0) /* ValidLocations - None */
     , (803131,  16,          1) /* ItemUseable - No */
     , (803131,  19,          0) /* Value */
     , (803131,  33,          1) /* Bonded - Bonded */
     , (803131,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803131, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803131,  22, True ) /* Inscribable */
     , (803131,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803131,   1, 'Bottled Blood of a Moarsman') /* Name */
     , (803131,  15, 'A bottle of purple blood.') /* ShortDesc */
     /* , (803131,  33, 'PapaTusk') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803131,   1,   33555209) /* Setup */
     , (803131,   3,  536870932) /* SoundTable */
     , (803131,   6,   67111919) /* PaletteBase */
     , (803131,   8,  100670735) /* Icon */
     , (803131,  22,  872415275) /* PhysicsEffectTable */;
