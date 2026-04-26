DELETE FROM `weenie` WHERE `class_Id` = 801744;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801744, 'Purification Stone', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801744,   1,        128) /* ItemType - Misc */
     , (801744,   5,          1) /* EncumbranceVal */
     , (801744,   8,          5) /* Mass */
     , (801744,   9,          0) /* ValidLocations - None */
     , (801744,  11,          1) /* MaxStackSize */
     , (801744,  12,          1) /* StackSize */
     , (801744,  13,          1) /* StackUnitEncumbrance */
     , (801744,  14,          5) /* StackUnitMass */
     , (801744,  15,      10000) /* StackUnitValue */
     , (801744,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801744,  18,          1) /* UiEffects */
     , (801744,  19,       0000) /* Value */
     , (801744,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801744,  94,          2147483647) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801744,  22, True ) /* Inscribable */
     , (801744,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801744,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801744,   1, 'Purification Stone') /* Name */
     , (801744,  14, 'This item is to be used on Cursed Hollow Weapons and Unpurified Vhorma Armor to Purify them from their curse.') /* Use */
     , (801744,  33, 'PureStone') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801744,   1,   33556769) /* Setup */
     , (801744,   3,  536870932) /* SoundTable */
     , (801744,   6,   67111919) /* PaletteBase */
     , (801744,   7,  268435723) /* ClothingBase */
     , (801744,   8,  100673039) /* Icon */
     , (801744,  22,  872415275) /* PhysicsEffectTable */
     , (801744,  52,  100676435) /* IconUnderlay */;
