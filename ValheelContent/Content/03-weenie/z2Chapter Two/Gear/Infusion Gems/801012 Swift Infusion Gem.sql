DELETE FROM `weenie` WHERE `class_Id` = 801012;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801012, 'Swift Infusion Gem', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801012,   1,        128) /* ItemType - Misc */
     , (801012,   5,          1) /* EncumbranceVal */
     , (801012,   8,          5) /* Mass */
     , (801012,   9,          0) /* ValidLocations - None */
     , (801012,  11,          1) /* MaxStackSize */
     , (801012,  12,          1) /* StackSize */
     , (801012,  13,          1) /* StackUnitEncumbrance */
     , (801012,  14,          5) /* StackUnitMass */
     , (801012,  15,       2500) /* StackUnitValue */
     , (801012,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801012,  18,          0) /* UiEffects */
     , (801012,  19,       2500) /* Value */
     , (801012,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801012,  94,      2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801012,  22, True ) /* Inscribable */
     , (801012,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801012,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801012,   1, 'Swift Infusion Gem') /* Name */
     , (801012,  14, 'Use this gem to infuse a piece of Ethereal Vhorma Armor with Swift properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801012,   1,   33556769) /* Setup */
     , (801012,   3,  536870932) /* SoundTable */
     , (801012,   6,   67111919) /* PaletteBase */
     , (801012,   7,  268435723) /* ClothingBase */
     , (801012,   8,      28164) /* Icon */
     , (801012,  22,  872415275) /* PhysicsEffectTable */
	 , (801012,  52,  100686604) /* IconUnderlay */;
