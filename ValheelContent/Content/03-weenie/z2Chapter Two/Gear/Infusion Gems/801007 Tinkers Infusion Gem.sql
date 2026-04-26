DELETE FROM `weenie` WHERE `class_Id` = 801007;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801007, 'Tinkers Infusion Gem', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801007,   1,        128) /* ItemType - Misc */
     , (801007,   5,          1) /* EncumbranceVal */
     , (801007,   8,          5) /* Mass */
     , (801007,   9,          0) /* ValidLocations - None */
     , (801007,  11,          1) /* MaxStackSize */
     , (801007,  12,          1) /* StackSize */
     , (801007,  13,          1) /* StackUnitEncumbrance */
     , (801007,  14,          5) /* StackUnitMass */
     , (801007,  15,       2500) /* StackUnitValue */
     , (801007,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801007,  18,          0) /* UiEffects */
     , (801007,  19,       2500) /* Value */
     , (801007,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801007,  94,      2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801007,  22, True ) /* Inscribable */
     , (801007,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801007,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801007,   1, 'Tinkers Infusion Gem') /* Name */
     , (801007,  14, 'Use this gem to infuse a piece of Ethereal Vhorma Armor with Tinkers properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801007,   1,   33556769) /* Setup */
     , (801007,   3,  536870932) /* SoundTable */
     , (801007,   6,   67111919) /* PaletteBase */
     , (801007,   7,  268435723) /* ClothingBase */
     , (801007,   8,      28164) /* Icon */
     , (801007,  22,  872415275) /* PhysicsEffectTable */
	 , (801007,  52,  100686604) /* IconUnderlay */;
