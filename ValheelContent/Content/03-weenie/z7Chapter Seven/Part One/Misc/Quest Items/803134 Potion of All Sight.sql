DELETE FROM `weenie` WHERE `class_Id` = 803134;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803134, 'Potion of All Sight', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803134,   1,        128) /* ItemType - Misc */
     , (803134,   5,        100) /* EncumbranceVal */
     , (803134,   8,         10) /* Mass */
     , (803134,   9,          0) /* ValidLocations - None */
     , (803134,  16,          1) /* ItemUseable - No */
     , (803134,  18,         64) /* UiEffects - Lightning */
     , (803134,  19,          0) /* Value */
     , (803134,  33,          1) /* Bonded - Bonded */
     , (803134,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803134, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803134,  22, True ) /* Inscribable */
     , (803134,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803134,   1, 'Potion of All Sight') /* Name */
     , (803134,  15, 'A potion to see into the inner depths of the heart and soul.') /* ShortDesc */
     /* , (803134,  33, 'PapaTusk') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803134,   1,   33555209) /* Setup */
     , (803134,   3,  536870932) /* SoundTable */
     , (803134,   6,   67111919) /* PaletteBase */
     , (803134,   8,  100670735) /* Icon */
     , (803134,  22,  872415275) /* PhysicsEffectTable */;
