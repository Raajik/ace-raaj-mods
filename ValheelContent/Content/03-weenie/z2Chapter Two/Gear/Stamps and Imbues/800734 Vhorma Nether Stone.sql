DELETE FROM `weenie` WHERE `class_Id` = 800734;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800734, 'Vhorma Nether Stone', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800734,   1,        128) /* ItemType - Misc */
     , (800734,   5,          1) /* EncumbranceVal */
     , (800734,   8,          5) /* Mass */
     , (800734,   9,          0) /* ValidLocations - None */
     , (800734,  11,          1) /* MaxStackSize */
     , (800734,  12,          1) /* StackSize */
     , (800734,  13,          1) /* StackUnitEncumbrance */
     , (800734,  14,          5) /* StackUnitMass */
     , (800734,  15,          10000) /* StackUnitValue */
     , (800734,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (800734,  18,         4096) /* UiEffects */
     , (800734,  19,          10000) /* Value */
     , (800734,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800734,  94,        33025) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800734,  22, True ) /* Inscribable */
     , (800734,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800734,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800734,   1, 'Vhorma Nether Stone') /* Name */
     , (800734,  14, 'This item is used on a Crafted Vhorma weapon to imbue it with Nether Rending.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800734,   1,   33556769) /* Setup */
     , (800734,   3,  536870932) /* SoundTable */
     , (800734,   6,   67111919) /* PaletteBase */
     , (800734,   7,  268435723) /* ClothingBase */
     , (800734,   8,  100673039) /* Icon */
     , (800734,  22,  872415275) /* PhysicsEffectTable */;
