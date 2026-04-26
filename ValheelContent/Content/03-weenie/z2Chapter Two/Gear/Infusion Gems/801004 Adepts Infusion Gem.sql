DELETE FROM `weenie` WHERE `class_Id` = 801004;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801004, 'Adepts Infusion Gem', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801004,   1,        128) /* ItemType - Misc */
     , (801004,   5,          1) /* EncumbranceVal */
     , (801004,   8,          5) /* Mass */
     , (801004,   9,          0) /* ValidLocations - None */
     , (801004,  11,          1) /* MaxStackSize */
     , (801004,  12,          1) /* StackSize */
     , (801004,  13,          1) /* StackUnitEncumbrance */
     , (801004,  14,          5) /* StackUnitMass */
     , (801004,  15,       2500) /* StackUnitValue */
     , (801004,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801004,  18,          0) /* UiEffects */
     , (801004,  19,       2500) /* Value */
     , (801004,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801004,  94,      2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801004,  22, True ) /* Inscribable */
     , (801004,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801004,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801004,   1, 'Adepts Infusion Gem') /* Name */
     , (801004,  14, 'Use this gem to infuse a piece of Ethereal Vhorma Armor with Adepts properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801004,   1,   33556769) /* Setup */
     , (801004,   3,  536870932) /* SoundTable */
     , (801004,   6,   67111919) /* PaletteBase */
     , (801004,   7,  268435723) /* ClothingBase */
     , (801004,   8,      28164) /* Icon */
     , (801004,  22,  872415275) /* PhysicsEffectTable */
	 , (801004,  52,  100686604) /* IconUnderlay */;
