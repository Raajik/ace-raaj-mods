DELETE FROM `weenie` WHERE `class_Id` = 802401;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802401, 'Glistening Ore', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802401,   1,        128) /* ItemType - Misc */
     , (802401,   3,          8) /* PaletteTemplate - Green */
     , (802401,   5,         50) /* EncumbranceVal */
     , (802401,   8,         50) /* Mass */
     , (802401,   9,          0) /* ValidLocations - None */
     , (802401,  11,          1) /* MaxStackSize */
     , (802401,  12,          1) /* StackSize */
     , (802401,  13,         50) /* StackUnitEncumbrance */
     , (802401,  14,         50) /* StackUnitMass */
     , (802401,  15,          1) /* StackUnitValue */
     , (802401,  16,          1) /* ItemUseable - No */
     , (802401,  18,          0) /* UiEffects - Magical */
     , (802401,  19,          1) /* Value */
     , (802401,  33,         -1) /* Bonded - Bonded */
     , (802401,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802401,  22, True ) /* Inscribable */
     , (802401,  23, True ) /* DestroyOnSell */
     , (802401,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802401,  39,      2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802401,   1, 'Glistening Ore') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802401,   1,   33556769) /* Setup */
     , (802401,   3,  536870932) /* SoundTable */
     , (802401,   6,   67111919) /* PaletteBase */
     , (802401,   7,  268435723) /* ClothingBase */
     , (802401,   8,  100676753) /* Icon */
     , (802401,  22,  872415275) /* PhysicsEffectTable */;
