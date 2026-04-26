DELETE FROM `weenie` WHERE `class_Id` = 801008;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801008, 'Crafters Infusion Gem', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801008,   1,        128) /* ItemType - Misc */
     , (801008,   5,          1) /* EncumbranceVal */
     , (801008,   8,          5) /* Mass */
     , (801008,   9,          0) /* ValidLocations - None */
     , (801008,  11,          1) /* MaxStackSize */
     , (801008,  12,          1) /* StackSize */
     , (801008,  13,          1) /* StackUnitEncumbrance */
     , (801008,  14,          5) /* StackUnitMass */
     , (801008,  15,       2500) /* StackUnitValue */
     , (801008,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801008,  18,          0) /* UiEffects */
     , (801008,  19,       2500) /* Value */
     , (801008,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801008,  94,      2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801008,  22, True ) /* Inscribable */
     , (801008,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801008,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801008,   1, 'Crafters Infusion Gem') /* Name */
     , (801008,  14, 'Use this gem to infuse a piece of Ethereal Vhorma Armor with Crafters properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801008,   1,   33556769) /* Setup */
     , (801008,   3,  536870932) /* SoundTable */
     , (801008,   6,   67111919) /* PaletteBase */
     , (801008,   7,  268435723) /* ClothingBase */
     , (801008,   8,      28164) /* Icon */
     , (801008,  22,  872415275) /* PhysicsEffectTable */
	 , (801008,  52,  100686604) /* IconUnderlay */;
