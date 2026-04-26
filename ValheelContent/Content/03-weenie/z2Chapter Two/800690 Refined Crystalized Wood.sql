DELETE FROM `weenie` WHERE `class_Id` = 800690;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800690, 'Refined Crystalized Wood1', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800690,   1,        128) /* ItemType - Misc */
     , (800690,   5,       4000) /* EncumbranceVal */
     , (800690,   8,          5) /* Mass */
     , (800690,   9,          0) /* ValidLocations - None */
     , (800690,  11,          1) /* MaxStackSize */
     , (800690,  12,          1) /* StackSize */
     , (800690,  13,       4000) /* StackUnitEncumbrance */
     , (800690,  14,          5) /* StackUnitMass */
     , (800690,  15,       1500) /* StackUnitValue */
     , (800690,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (800690,  19,       1500) /* Value */
     , (800690,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800690,  94,        128) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800690,  22, True ) /* Inscribable */
     , (800690,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800690,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800690,   1, 'Refined Crystalized Wood') /* Name */
     , (800690,  14, 'This item is used in with Refined or Ethereal Refined Vhorma.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800690,   1,   33554817) /* Setup */
     , (800690,   3,  536870932) /* SoundTable */
     , (800690,   6,   67111919) /* PaletteBase */
     , (800690,   7,  268435832) /* ClothingBase */
     , (800690,   8,  100676644) /* Icon */
     , (800690,  22,  872415275) /* PhysicsEffectTable */;
