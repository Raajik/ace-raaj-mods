DELETE FROM `weenie` WHERE `class_Id` = 801014;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801014, 'Reinforced Infusion Gem', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801014,   1,        128) /* ItemType - Misc */
     , (801014,   5,          1) /* EncumbranceVal */
     , (801014,   8,          5) /* Mass */
     , (801014,   9,          0) /* ValidLocations - None */
     , (801014,  11,          1) /* MaxStackSize */
     , (801014,  12,          1) /* StackSize */
     , (801014,  13,          1) /* StackUnitEncumbrance */
     , (801014,  14,          5) /* StackUnitMass */
     , (801014,  15,       2500) /* StackUnitValue */
     , (801014,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801014,  18,          0) /* UiEffects */
     , (801014,  19,       2500) /* Value */
     , (801014,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801014,  94,      2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801014,  22, True ) /* Inscribable */
     , (801014,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801014,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801014,   1, 'Reinforced Infusion Gem') /* Name */
     , (801014,  14, 'Use this gem to infuse a piece of Ethereal Vhorma Armor with Reinforced properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801014,   1,   33556769) /* Setup */
     , (801014,   3,  536870932) /* SoundTable */
     , (801014,   6,   67111919) /* PaletteBase */
     , (801014,   7,  268435723) /* ClothingBase */
     , (801014,   8,      28164) /* Icon */
     , (801014,  22,  872415275) /* PhysicsEffectTable */
	 , (801014,  52,  100686604) /* IconUnderlay */;
