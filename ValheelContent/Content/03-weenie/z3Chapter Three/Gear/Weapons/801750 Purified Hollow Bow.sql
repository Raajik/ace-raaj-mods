DELETE FROM `weenie` WHERE `class_Id` = 801750;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801750, 'PurifiedHollowBow', 128, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801750,   1,        128) /* ItemType - Misc */
     , (801750,   5,         10) /* EncumbranceVal */
     , (801750,   8,         10) /* Mass */
     , (801750,   9,          0) /* ValidLocations - None */
     , (801750,  11,          1) /* MaxStackSize */
     , (801750,  12,          1) /* StackSize */
     , (801750,  13,         10) /* StackUnitEncumbrance */
     , (801750,  14,         10) /* StackUnitMass */
     , (801750,  15,          1) /* StackUnitValue */
     , (801750,  16,          1) /* ItemUseable - No */
     , (801750,  19,          1) /* Value */
     , (801750,  33,          1) /* Bonded - Bonded */
     , (801750,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801750, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801750,  22, True ) /* Inscribable */
     , (801750,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801750,   1, 'Purified Hollow Bow') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801750,   1,   33557729) /* Setup */
     , (801750,   3,  536870932) /* SoundTable */
     , (801750,   6,   67111919) /* PaletteBase */
     , (801750,   7,  268436394) /* ClothingBase */
     , (801750,   8,  100673010) /* Icon */
     , (801750,  22,  872415275) /* PhysicsEffectTable */;
