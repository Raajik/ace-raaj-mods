DELETE FROM `weenie` WHERE `class_Id` = 801751;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801751, 'PurifiedHollowSword', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801751,   1,        128) /* ItemType - Misc */
     , (801751,   5,         10) /* EncumbranceVal */
     , (801751,   8,         10) /* Mass */
     , (801751,   9,          0) /* ValidLocations - None */
     , (801751,  11,          1) /* MaxStackSize */
     , (801751,  12,          1) /* StackSize */
     , (801751,  13,         10) /* StackUnitEncumbrance */
     , (801751,  14,         10) /* StackUnitMass */
     , (801751,  15,          1) /* StackUnitValue */
     , (801751,  16,          1) /* ItemUseable - No */
     , (801751,  19,          1) /* Value */
     , (801751,  33,          1) /* Bonded - Bonded */
     , (801751,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801751, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801751,  22, True ) /* Inscribable */
     , (801751,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801751,   1, 'Purified Hollow Sword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801751,   1,   33556262) /* Setup */
     , (801751,   3,  536870932) /* SoundTable */
     , (801751,   6,   67111919) /* PaletteBase */
     , (801751,   7,  268436385) /* ClothingBase */
     , (801751,   8,  100672945) /* Icon */
     , (801751,  22,  872415275) /* PhysicsEffectTable */;
