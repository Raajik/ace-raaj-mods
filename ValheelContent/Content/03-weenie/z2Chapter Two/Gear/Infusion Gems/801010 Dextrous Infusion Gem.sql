DELETE FROM `weenie` WHERE `class_Id` = 801010;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801010, 'Dextrous Infusion Gem', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801010,   1,        128) /* ItemType - Misc */
     , (801010,   5,          1) /* EncumbranceVal */
     , (801010,   8,          5) /* Mass */
     , (801010,   9,          0) /* ValidLocations - None */
     , (801010,  11,          1) /* MaxStackSize */
     , (801010,  12,          1) /* StackSize */
     , (801010,  13,          1) /* StackUnitEncumbrance */
     , (801010,  14,          5) /* StackUnitMass */
     , (801010,  15,       2500) /* StackUnitValue */
     , (801010,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801010,  18,          0) /* UiEffects */
     , (801010,  19,       2500) /* Value */
     , (801010,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801010,  94,      2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801010,  22, True ) /* Inscribable */
     , (801010,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801010,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801010,   1, 'Dextrous Infusion Gem') /* Name */
     , (801010,  14, 'Use this gem to infuse a piece of Ethereal Vhorma Armor with Dextrous properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801010,   1,   33556769) /* Setup */
     , (801010,   3,  536870932) /* SoundTable */
     , (801010,   6,   67111919) /* PaletteBase */
     , (801010,   7,  268435723) /* ClothingBase */
     , (801010,   8,      28164) /* Icon */
     , (801010,  22,  872415275) /* PhysicsEffectTable */
	 , (801010,  52,  100686604) /* IconUnderlay */;
