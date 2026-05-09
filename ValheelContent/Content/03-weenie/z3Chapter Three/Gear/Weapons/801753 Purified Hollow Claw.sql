DELETE FROM `weenie` WHERE `class_Id` = 801753;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801753, 'PurifiedHollowClaw', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801753,   1,        128) /* ItemType - Misc */
     , (801753,   5,         10) /* EncumbranceVal */
     , (801753,   8,         10) /* Mass */
     , (801753,   9,          0) /* ValidLocations - None */
     , (801753,  11,          1) /* MaxStackSize */
     , (801753,  12,          1) /* StackSize */
     , (801753,  13,         10) /* StackUnitEncumbrance */
     , (801753,  14,         10) /* StackUnitMass */
     , (801753,  15,          1) /* StackUnitValue */
     , (801753,  16,          1) /* ItemUseable - No */
     , (801753,  19,          1) /* Value */
     , (801753,  33,          1) /* Bonded - Bonded */
     , (801753,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801753, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801753,  22, True ) /* Inscribable */
     , (801753,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801753,   1, 'Purified Hollow Claw') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801753,   1,   33556258) /* Setup */
     , (801753,   3,  536870932) /* SoundTable */
     , (801753,   6,   67111919) /* PaletteBase */
     , (801753,   7,  268436380) /* ClothingBase */
     , (801753,   8,  100672905) /* Icon */
     , (801753,  22,  872415275) /* PhysicsEffectTable */;
