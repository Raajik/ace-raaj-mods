DELETE FROM `weenie` WHERE `class_Id` = 803434;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803434, 'Glistening Fragment', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803434,   1,        128) /* ItemType - Misc */
     , (803434,   3,         21) /* PaletteTemplate - Gold */
     , (803434,   5,          0) /* EncumbranceVal */
     , (803434,   8,          1) /* Mass */
     , (803434,   9,          0) /* ValidLocations - None */
     , (803434,  11,      50000) /* MaxStackSize */
     , (803434,  12,          1) /* StackSize */
     , (803434,  15,        200) /* StackUnitValue */
     , (803434,  16,          1) /* ItemUseable - No */
     , (803434,  18,          0) /* UiEffects - Magical */
     , (803434,  19,        200) /* Value */
     , (803434,  33,          1) /* Bonded - Bonded */
     , (803434,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803434, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803434,  22, True ) /* Inscribable */
     , (803434,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803434,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803434,   1, 'Glistening Fragment') /* Name */
     , (803434,  15, 'Broken or cracked fragments mined from Glistening Ore in a crude manner.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803434,   1,   33554683) /* Setup */
     , (803434,   3,  536870932) /* SoundTable */
     , (803434,   8,  100689307) /* Icon */
     , (803434,  22,  872415275) /* PhysicsEffectTable */
     , (803434,  52,  100667853) /* IconUnderlay */;
