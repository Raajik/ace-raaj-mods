DELETE FROM `weenie` WHERE `class_Id` = 801011;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801011, 'Wise Infusion Gem', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801011,   1,        128) /* ItemType - Misc */
     , (801011,   5,          1) /* EncumbranceVal */
     , (801011,   8,          5) /* Mass */
     , (801011,   9,          0) /* ValidLocations - None */
     , (801011,  11,          1) /* MaxStackSize */
     , (801011,  12,          1) /* StackSize */
     , (801011,  13,          1) /* StackUnitEncumbrance */
     , (801011,  14,          5) /* StackUnitMass */
     , (801011,  15,       2500) /* StackUnitValue */
     , (801011,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801011,  18,          0) /* UiEffects */
     , (801011,  19,       2500) /* Value */
     , (801011,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801011,  94,      2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801011,  22, True ) /* Inscribable */
     , (801011,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801011,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801011,   1, 'Wise Infusion Gem') /* Name */
     , (801011,  14, 'Use this gem to infuse a piece of Ethereal Vhorma Armor with Wise properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801011,   1,   33556769) /* Setup */
     , (801011,   3,  536870932) /* SoundTable */
     , (801011,   6,   67111919) /* PaletteBase */
     , (801011,   7,  268435723) /* ClothingBase */
     , (801011,   8,      28164) /* Icon */
     , (801011,  22,  872415275) /* PhysicsEffectTable */
	 , (801011,  52,  100686604) /* IconUnderlay */;
