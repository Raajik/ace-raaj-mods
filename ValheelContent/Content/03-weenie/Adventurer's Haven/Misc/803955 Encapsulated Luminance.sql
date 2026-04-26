DELETE FROM `weenie` WHERE `class_Id` = 803955;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803955, 'Encapsulated Luminance', 51, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803955,   1,        128) /* ItemType - Misc */
     , (803955,   5,          5) /* EncumbranceVal */
     , (803955,  11,       1000) /* MaxStackSize */
     , (803955,  12,          1) /* StackSize */
     , (803955,  16,          1) /* ItemUseable - No */
     , (803955,  19,          1) /* Value */
     , (803955,  33,          1) /* Bonded - Bonded */
     , (803955,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803955, 114,          0) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803955,   1, False) /* Stuck */
     , (803955,  11, True ) /* IgnoreCollisions */
     , (803955,  13, True ) /* Ethereal */
     , (803955,  14, True ) /* GravityStatus */
     , (803955,  19, True ) /* Attackable */
     , (803955,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803955,   1, 'Encapsulated Luminance') /* Name */
     , (803955,  14, 'This may be used as an alternative currency.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803955,   1,   33557280) /* Setup */
     , (803955,   3,  536870932) /* SoundTable */
     , (803955,   7,  268437442) /* ClothingBase */
     , (803955,   8,  100676297) /* Icon */
     , (803955,  22,  872415275) /* PhysicsEffectTable */
     , (803955,  52,  100676435) /* IconUnderlay */;
