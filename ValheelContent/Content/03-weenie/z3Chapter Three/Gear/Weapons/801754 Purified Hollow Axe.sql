DELETE FROM `weenie` WHERE `class_Id` = 801754;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801754, 'PurifiedHollowAxe', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801754,   1,        128) /* ItemType - Misc */
     , (801754,   5,         10) /* EncumbranceVal */
     , (801754,   8,         10) /* Mass */
     , (801754,   9,          0) /* ValidLocations - None */
     , (801754,  11,          1) /* MaxStackSize */
     , (801754,  12,          1) /* StackSize */
     , (801754,  13,         10) /* StackUnitEncumbrance */
     , (801754,  14,         10) /* StackUnitMass */
     , (801754,  15,          1) /* StackUnitValue */
     , (801754,  16,          1) /* ItemUseable - No */
     , (801754,  19,          1) /* Value */
     , (801754,  33,          1) /* Bonded - Bonded */
     , (801754,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801754, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801754,  22, True ) /* Inscribable */
     , (801754,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801754,   1, 'Purified Hollow Axe') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801754,   1,   33556302) /* Setup */
     , (801754,   3,  536870932) /* SoundTable */
     , (801754,   6,   67111919) /* PaletteBase */
     , (801754,   7,  268435881) /* ClothingBase */
     , (801754,   8,  100670513) /* Icon */
     , (801754,  22,  872415275) /* PhysicsEffectTable */;
