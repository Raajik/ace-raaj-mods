DELETE FROM `weenie` WHERE `class_Id` = 801006;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801006, 'Defenders Infusion Gem', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801006,   1,        128) /* ItemType - Misc */
     , (801006,   5,          1) /* EncumbranceVal */
     , (801006,   8,          5) /* Mass */
     , (801006,   9,          0) /* ValidLocations - None */
     , (801006,  11,          1) /* MaxStackSize */
     , (801006,  12,          1) /* StackSize */
     , (801006,  13,          1) /* StackUnitEncumbrance */
     , (801006,  14,          5) /* StackUnitMass */
     , (801006,  15,       2500) /* StackUnitValue */
     , (801006,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801006,  18,          0) /* UiEffects */
     , (801006,  19,       2500) /* Value */
     , (801006,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801006,  94,      2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801006,  22, True ) /* Inscribable */
     , (801006,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801006,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801006,   1, 'Defenders Infusion Gem') /* Name */
     , (801006,  14, 'Use this gem to infuse a piece of Ethereal Vhorma Armor with Defenders properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801006,   1,   33556769) /* Setup */
     , (801006,   3,  536870932) /* SoundTable */
     , (801006,   6,   67111919) /* PaletteBase */
     , (801006,   7,  268435723) /* ClothingBase */
     , (801006,   8,      28164) /* Icon */
     , (801006,  22,  872415275) /* PhysicsEffectTable */
	 , (801006,  52,  100686604) /* IconUnderlay */;
