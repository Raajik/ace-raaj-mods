DELETE FROM `weenie` WHERE `class_Id` = 800728;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800728, 'Vhorma Frost Stone', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800728,   1,        128) /* ItemType - Misc */
     , (800728,   5,          1) /* EncumbranceVal */
     , (800728,   8,          5) /* Mass */
     , (800728,   9,          0) /* ValidLocations - None */
     , (800728,  11,          1) /* MaxStackSize */
     , (800728,  12,          1) /* StackSize */
     , (800728,  13,          1) /* StackUnitEncumbrance */
     , (800728,  14,          5) /* StackUnitMass */
     , (800728,  15,          10000) /* StackUnitValue */
     , (800728,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (800728,  18,         128) /* UiEffects */
     , (800728,  19,          10000) /* Value */
     , (800728,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800728,  94,        33025) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800728,  22, True ) /* Inscribable */
     , (800728,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800728,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800728,   1, 'Vhorma Frost Stone') /* Name */
     , (800728,  14, 'This item is used on a Crafted Vhorma weapon to imbue it with Frost Rending.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800728,   1,   33556769) /* Setup */
     , (800728,   3,  536870932) /* SoundTable */
     , (800728,   6,   67111919) /* PaletteBase */
     , (800728,   7,  268435723) /* ClothingBase */
     , (800728,   8,  100673039) /* Icon */
     , (800728,  22,  872415275) /* PhysicsEffectTable */;
