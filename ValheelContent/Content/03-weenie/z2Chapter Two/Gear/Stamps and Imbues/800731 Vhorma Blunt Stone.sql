DELETE FROM `weenie` WHERE `class_Id` = 800731;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800731, 'Vhorma Blunt Stone1', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800731,   1,        128) /* ItemType - Misc */
     , (800731,   5,          1) /* EncumbranceVal */
     , (800731,   8,          5) /* Mass */
     , (800731,   9,          0) /* ValidLocations - None */
     , (800731,  11,          1) /* MaxStackSize */
     , (800731,  12,          1) /* StackSize */
     , (800731,  13,          1) /* StackUnitEncumbrance */
     , (800731,  14,          5) /* StackUnitMass */
     , (800731,  15,          10000) /* StackUnitValue */
     , (800731,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (800731,  18,         512) /* UiEffects */
     , (800731,  19,          10000) /* Value */
     , (800731,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800731,  94,        33025) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800731,  22, True ) /* Inscribable */
     , (800731,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800731,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800731,   1, 'Vhorma Blunt Stone') /* Name */
     , (800731,  14, 'This item is used on a Crafted Vhorma weapon to imbue it with Bludgeoning Rending.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800731,   1,   33556769) /* Setup */
     , (800731,   3,  536870932) /* SoundTable */
     , (800731,   6,   67111919) /* PaletteBase */
     , (800731,   7,  268435723) /* ClothingBase */
     , (800731,   8,  100673039) /* Icon */
     , (800731,  22,  872415275) /* PhysicsEffectTable */;
