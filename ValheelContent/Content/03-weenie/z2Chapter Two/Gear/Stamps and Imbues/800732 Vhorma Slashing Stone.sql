DELETE FROM `weenie` WHERE `class_Id` = 800732;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800732, 'Vhorma Slashing Stone', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800732,   1,        128) /* ItemType - Misc */
     , (800732,   5,          1) /* EncumbranceVal */
     , (800732,   8,          5) /* Mass */
     , (800732,   9,          0) /* ValidLocations - None */
     , (800732,  11,          1) /* MaxStackSize */
     , (800732,  12,          1) /* StackSize */
     , (800732,  13,          1) /* StackUnitEncumbrance */
     , (800732,  14,          5) /* StackUnitMass */
     , (800732,  15,          10000) /* StackUnitValue */
     , (800732,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (800732,  18,         1024) /* UiEffects */
     , (800732,  19,          10000) /* Value */
     , (800732,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800732,  94,        33025) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800732,  22, True ) /* Inscribable */
     , (800732,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800732,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800732,   1, 'Vhorma Slashing Stone') /* Name */
     , (800732,  14, 'This item is used on a Crafted Vhorma weapon to imbue it with Slash Rending.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800732,   1,   33556769) /* Setup */
     , (800732,   3,  536870932) /* SoundTable */
     , (800732,   6,   67111919) /* PaletteBase */
     , (800732,   7,  268435723) /* ClothingBase */
     , (800732,   8,  100673039) /* Icon */
     , (800732,  22,  872415275) /* PhysicsEffectTable */;
