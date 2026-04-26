DELETE FROM `weenie` WHERE `class_Id` = 800725;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800725, 'Vhorma Fire Stone', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800725,   1,        128) /* ItemType - Misc */
     , (800725,   5,          1) /* EncumbranceVal */
     , (800725,   8,          5) /* Mass */
     , (800725,   9,          0) /* ValidLocations - None */
     , (800725,  11,          1) /* MaxStackSize */
     , (800725,  12,          1) /* StackSize */
     , (800725,  13,          1) /* StackUnitEncumbrance */
     , (800725,  14,          5) /* StackUnitMass */
     , (800725,  15,          10000) /* StackUnitValue */
     , (800725,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (800725,  18,         32) /* UiEffects */
     , (800725,  19,          10000) /* Value */
     , (800725,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800725,  94,        33025) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800725,  22, True ) /* Inscribable */
     , (800725,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800725,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800725,   1, 'Vhorma Fire Stone') /* Name */
     , (800725,  14, 'This item is used on a Crafted Vhorma weapon to imbue it with Fire Rending.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800725,   1,   33556769) /* Setup */
     , (800725,   3,  536870932) /* SoundTable */
     , (800725,   6,   67111919) /* PaletteBase */
     , (800725,   7,  268435723) /* ClothingBase */
     , (800725,   8,  100673039) /* Icon */
     , (800725,  22,  872415275) /* PhysicsEffectTable */;
