DELETE FROM `weenie` WHERE `class_Id` = 801005;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801005, 'Archers Infusion Gem', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801005,   1,        128) /* ItemType - Misc */
     , (801005,   5,          1) /* EncumbranceVal */
     , (801005,   8,          5) /* Mass */
     , (801005,   9,          0) /* ValidLocations - None */
     , (801005,  11,          1) /* MaxStackSize */
     , (801005,  12,          1) /* StackSize */
     , (801005,  13,          1) /* StackUnitEncumbrance */
     , (801005,  14,          5) /* StackUnitMass */
     , (801005,  15,       2500) /* StackUnitValue */
     , (801005,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801005,  18,          0) /* UiEffects */
     , (801005,  19,       2500) /* Value */
     , (801005,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801005,  94,      2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801005,  22, True ) /* Inscribable */
     , (801005,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801005,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801005,   1, 'Archers Infusion Gem') /* Name */
     , (801005,  14, 'Use this gem to infuse a piece of Ethereal Vhorma Armor with Archers properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801005,   1,   33556769) /* Setup */
     , (801005,   3,  536870932) /* SoundTable */
     , (801005,   6,   67111919) /* PaletteBase */
     , (801005,   7,  268435723) /* ClothingBase */
     , (801005,   8,      28164) /* Icon */
     , (801005,  22,  872415275) /* PhysicsEffectTable */
	 , (801005,  52,  100686604) /* IconUnderlay */;
