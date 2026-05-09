DELETE FROM `weenie` WHERE `class_Id` = 801752;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801752, 'PurifiedHollowLongSword', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801752,   1,        128) /* ItemType - Misc */
     , (801752,   5,         10) /* EncumbranceVal */
     , (801752,   8,         10) /* Mass */
     , (801752,   9,          0) /* ValidLocations - None */
     , (801752,  11,          1) /* MaxStackSize */
     , (801752,  12,          1) /* StackSize */
     , (801752,  13,         10) /* StackUnitEncumbrance */
     , (801752,  14,         10) /* StackUnitMass */
     , (801752,  15,          1) /* StackUnitValue */
     , (801752,  16,          1) /* ItemUseable - No */
     , (801752,  19,          1) /* Value */
     , (801752,  33,          1) /* Bonded - Bonded */
     , (801752,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801752, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801752,  22, True ) /* Inscribable */
     , (801752,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801752,   1, 'Purified Hollow Longsword') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801752,   1, 0x02000726) /* Setup */
     , (801752,   3, 0x20000014) /* SoundTable */
     , (801752,   6, 0x04000BEF) /* PaletteBase */
     , (801752,   7, 0x100003A1) /* ClothingBase */
     , (801752,   8, 0x060073D2) /* Icon */
     , (801752,  22, 0x3400002B) /* PhysicsEffectTable */;
