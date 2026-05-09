DELETE FROM `weenie` WHERE `class_Id` = 801009;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801009, 'Hearty Infusion Gem', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801009,   1,        128) /* ItemType - Misc */
     , (801009,   5,          1) /* EncumbranceVal */
     , (801009,   8,          5) /* Mass */
     , (801009,   9,          0) /* ValidLocations - None */
     , (801009,  11,          1) /* MaxStackSize */
     , (801009,  12,          1) /* StackSize */
     , (801009,  13,          1) /* StackUnitEncumbrance */
     , (801009,  14,          5) /* StackUnitMass */
     , (801009,  15,       2500) /* StackUnitValue */
     , (801009,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801009,  18,          0) /* UiEffects */
     , (801009,  19,       2500) /* Value */
     , (801009,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801009,  94,          2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801009,  22, True ) /* Inscribable */
     , (801009,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801009,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801009,   1, 'Hearty Infusion Gem') /* Name */
     , (801009,  14, 'Use this gem to infuse a piece of Ethereal Vhorma Armor with Hearty properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801009,   1,   33556769) /* Setup */
     , (801009,   3,  536870932) /* SoundTable */
     , (801009,   6,   67111919) /* PaletteBase */
     , (801009,   7,  268435723) /* ClothingBase */
     , (801009,   8,      28164) /* Icon */
     , (801009,  22,  872415275) /* PhysicsEffectTable */
	 , (801009,  52,  100686604) /* IconUnderlay */;
