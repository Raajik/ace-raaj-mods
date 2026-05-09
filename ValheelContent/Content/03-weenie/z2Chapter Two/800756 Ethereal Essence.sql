DELETE FROM `weenie` WHERE `class_Id` = 800756;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800756, 'Ethereal Essence', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800756,   1,        128) /* ItemType - Gem */
     , (800756,   3,         83) /* PaletteTemplate - Amber */
     , (800756,   5,         35) /* EncumbranceVal */
     , (800756,   8,         35) /* Mass */
     , (800756,   9,          0) /* ValidLocations - None */
     , (800756,  11,          1) /* MaxStackSize */
     , (800756,  12,          1) /* StackSize */
     , (800756,  13,         35) /* StackUnitEncumbrance */
     , (800756,  14,         35) /* StackUnitMass */
     , (800756,  15,          0) /* StackUnitValue */
     , (800756,  16,    2097160) /* ItemUseable - SourceRemote */
     , (800756,  19,          1) /* Value */
     , (800756,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800756,  94,        128) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800756,  22, True ) /* Inscribable */
     , (800756,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800756,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800756,   1, 'Ethereal Essence') /* Name */
     , (800756,  15, 'A crystal containing strange magic.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800756,   1,   33554809) /* Setup */
     , (800756,   3,  536870932) /* SoundTable */
     , (800756,   6,   67111919) /* PaletteBase */
     , (800756,   7,  268435723) /* ClothingBase */
     , (800756,   8,      25781) /* Icon */
     , (800756,  22,  872415275) /* PhysicsEffectTable */
     , (800756,  52,  100689404) /* IconUnderlay */;
