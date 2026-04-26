DELETE FROM `weenie` WHERE `class_Id` = 802169;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802169, 'Harolding Gem', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802169,   1,        128) /* ItemType - Misc */
     , (802169,   3,          2) /* PaletteTemplate - Blue */
     , (802169,   5,          1) /* EncumbranceVal */
     , (802169,  11,          1) /* MaxStackSize */
     , (802169,  12,          1) /* StackSize */
     , (802169,  13,          1) /* StackUnitEncumbrance */
     , (802169,  15,          0) /* StackUnitValue */
     , (802169,  18,          0) /* UiEffects - Undef */
     , (802169,  19,          0) /* Value */
     , (802169,  33,          1) /* Bonded - Bonded */
     , (802169,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802169, 109,          0) /* ItemDifficulty */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802169,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802169,  39,     1.2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802169,   1, 'Harolding Gem') /* Name */
     , (802169,  16, 'Hand this gem to Natalia.') /* LongDesc */
     , (802169,  33, 'haroldinggemtimer') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802169,   1,   33554809) /* Setup */
     , (802169,   3,  536870932) /* SoundTable */
     , (802169,   6,   67111919) /* PaletteBase */
     , (802169,   7,  268435723) /* ClothingBase */
     , (802169,   8,  100671405) /* Icon */
     , (802169,  22,  872415275) /* PhysicsEffectTable */;
