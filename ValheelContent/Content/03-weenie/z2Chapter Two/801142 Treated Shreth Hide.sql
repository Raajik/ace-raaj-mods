DELETE FROM `weenie` WHERE `class_Id` = 801142;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801142, 'Treated Shreth Hide', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801142,   1,        128) /* ItemType - Misc */
     , (801142,   5,         40) /* EncumbranceVal */
     , (801142,   8,          5) /* Mass */
     , (801142,   9,          0) /* ValidLocations - None */
     , (801142,  11,          1) /* MaxStackSize */
     , (801142,  12,          1) /* StackSize */
     , (801142,  13,         40) /* StackUnitEncumbrance */
     , (801142,  14,          5) /* StackUnitMass */
     , (801142,  15,       1500) /* StackUnitValue */
     , (801142,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801142,  19,       1500) /* Value */
     , (801142,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801142,  94,        128) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801142,  22, True ) /* Inscribable */
     , (801142,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801142,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801142,   1, 'Treated Shreth Hide') /* Name */
     , (801142,  14, 'This item is used in with Stamped Refined Bar of Vhorma for armor.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801142,   1,   33554817) /* Setup */
     , (801142,   3,  536870932) /* SoundTable */
     , (801142,   6,   67111919) /* PaletteBase */
     , (801142,   7,  268435832) /* ClothingBase */
     , (801142,   8,      30032) /* Icon */
     , (801142,  22,  872415275) /* PhysicsEffectTable */;
