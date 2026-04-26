DELETE FROM `weenie` WHERE `class_Id` = 803133;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803133, 'Bladed Armadillo Spine', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803133,   1,        128) /* ItemType - Misc */
     , (803133,   5,        100) /* EncumbranceVal */
     , (803133,   8,         10) /* Mass */
     , (803133,   9,          0) /* ValidLocations - None */
     , (803133,  16,          1) /* ItemUseable - No */
     , (803133,  19,          0) /* Value */
     , (803133,  33,          1) /* Bonded - Bonded */
     , (803133,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803133, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803133,  22, True ) /* Inscribable */
     , (803133,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803133,   1, 'Bladed Armadillo Spine') /* Name */
     , (803133,  15, 'A spine carved from the back of a Bladed Armadillo.') /* ShortDesc */
     /* , (803133,  33, 'PapaTusk') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803133,   1,   33554817) /* Setup */
     , (803133,   3,  536870932) /* SoundTable */
     , (803133,   6,   67111919) /* PaletteBase */
     , (803133,   7,  268435832) /* ClothingBase */
     , (803133,   8,  100670069) /* Icon */
     , (803133,  22,  872415275) /* PhysicsEffectTable */;
