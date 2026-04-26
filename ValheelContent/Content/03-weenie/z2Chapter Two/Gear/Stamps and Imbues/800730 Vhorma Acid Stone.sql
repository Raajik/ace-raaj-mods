DELETE FROM `weenie` WHERE `class_Id` = 800730;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800730, 'Vhorma Acid Stone', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800730,   1,        128) /* ItemType - Misc */
     , (800730,   5,          1) /* EncumbranceVal */
     , (800730,   8,          5) /* Mass */
     , (800730,   9,          0) /* ValidLocations - None */
     , (800730,  11,          1) /* MaxStackSize */
     , (800730,  12,          1) /* StackSize */
     , (800730,  13,          1) /* StackUnitEncumbrance */
     , (800730,  14,          5) /* StackUnitMass */
     , (800730,  15,          10000) /* StackUnitValue */
     , (800730,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (800730,  18,         256) /* UiEffects */
     , (800730,  19,          10000) /* Value */
     , (800730,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800730,  94,        33025) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800730,  22, True ) /* Inscribable */
     , (800730,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800730,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800730,   1, 'Vhorma Acid Stone') /* Name */
     , (800730,  14, 'This item is used on a Crafted Vhorma weapon to imbue it with Acid Rending.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800730,   1,   33556769) /* Setup */
     , (800730,   3,  536870932) /* SoundTable */
     , (800730,   6,   67111919) /* PaletteBase */
     , (800730,   7,  268435723) /* ClothingBase */
     , (800730,   8,  100673039) /* Icon */
     , (800730,  22,  872415275) /* PhysicsEffectTable */;
