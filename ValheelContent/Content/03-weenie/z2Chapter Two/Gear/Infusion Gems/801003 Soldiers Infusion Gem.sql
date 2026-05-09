DELETE FROM `weenie` WHERE `class_Id` = 801003;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801003, 'Soldiers Infusion Gem', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801003,   1,        128) /* ItemType - Misc */
     , (801003,   5,          1) /* EncumbranceVal */
     , (801003,   8,          5) /* Mass */
     , (801003,   9,          0) /* ValidLocations - None */
     , (801003,  11,          1) /* MaxStackSize */
     , (801003,  12,          1) /* StackSize */
     , (801003,  13,          1) /* StackUnitEncumbrance */
     , (801003,  14,          5) /* StackUnitMass */
     , (801003,  15,       2500) /* StackUnitValue */
     , (801003,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801003,  18,          0) /* UiEffects */
     , (801003,  19,       2500) /* Value */
     , (801003,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801003,  94,      2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801003,  22, True ) /* Inscribable */
     , (801003,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801003,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801003,   1, 'Soldiers Infusion Gem') /* Name */
     , (801003,  14, 'Use this gem to infuse a piece of Ethereal Vhorma Armor with Soldiers properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801003,   1,   33556769) /* Setup */
     , (801003,   3,  536870932) /* SoundTable */
     , (801003,   6,   67111919) /* PaletteBase */
     , (801003,   7,  268435723) /* ClothingBase */
     , (801003,   8,      28164) /* Icon */
     , (801003,  22,  872415275) /* PhysicsEffectTable */
	 , (801003,  52,  100686604) /* IconUnderlay */;
