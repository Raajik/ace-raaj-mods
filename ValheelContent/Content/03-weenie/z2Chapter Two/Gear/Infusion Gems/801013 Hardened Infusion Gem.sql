DELETE FROM `weenie` WHERE `class_Id` = 801013;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801013, 'Hardened Infusion Gem', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801013,   1,        128) /* ItemType - Misc */
     , (801013,   5,          1) /* EncumbranceVal */
     , (801013,   8,          5) /* Mass */
     , (801013,   9,          0) /* ValidLocations - None */
     , (801013,  11,          1) /* MaxStackSize */
     , (801013,  12,          1) /* StackSize */
     , (801013,  13,          1) /* StackUnitEncumbrance */
     , (801013,  14,          5) /* StackUnitMass */
     , (801013,  15,       2500) /* StackUnitValue */
     , (801013,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801013,  18,          0) /* UiEffects */
     , (801013,  19,       2500) /* Value */
     , (801013,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801013,  94,      2) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801013,  22, True ) /* Inscribable */
     , (801013,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801013,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801013,   1, 'Hardened Infusion Gem') /* Name */
     , (801013,  14, 'Use this gem to infuse a piece of Ethereal Vhorma Armor with Hardened properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801013,   1,   33556769) /* Setup */
     , (801013,   3,  536870932) /* SoundTable */
     , (801013,   6,   67111919) /* PaletteBase */
     , (801013,   7,  268435723) /* ClothingBase */
     , (801013,   8,      28164) /* Icon */
     , (801013,  22,  872415275) /* PhysicsEffectTable */
	 , (801013,  52,  100686604) /* IconUnderlay */;
