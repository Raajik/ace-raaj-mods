DELETE FROM `weenie` WHERE `class_Id` = 800733;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800733, 'Vhorma Piercing Stone', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800733,   1,        128) /* ItemType - Misc */
     , (800733,   5,          1) /* EncumbranceVal */
     , (800733,   8,          5) /* Mass */
     , (800733,   9,          0) /* ValidLocations - None */
     , (800733,  11,          1) /* MaxStackSize */
     , (800733,  12,          1) /* StackSize */
     , (800733,  13,          1) /* StackUnitEncumbrance */
     , (800733,  14,          5) /* StackUnitMass */
     , (800733,  15,          10000) /* StackUnitValue */
     , (800733,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (800733,  18,         2048) /* UiEffects */
     , (800733,  19,          10000) /* Value */
     , (800733,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800733,  94,        33025) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800733,  22, True ) /* Inscribable */
     , (800733,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800733,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800733,   1, 'Vhorma Piercing Stone') /* Name */
     , (800733,  14, 'This item is used on a Crafted Vhorma weapon to imbue it with Pierce Rending.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800733,   1,   33556769) /* Setup */
     , (800733,   3,  536870932) /* SoundTable */
     , (800733,   6,   67111919) /* PaletteBase */
     , (800733,   7,  268435723) /* ClothingBase */
     , (800733,   8,  100673039) /* Icon */
     , (800733,  22,  872415275) /* PhysicsEffectTable */;
