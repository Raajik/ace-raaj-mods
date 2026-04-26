DELETE FROM `weenie` WHERE `class_Id` = 803250;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803250, 'Drakin Forge Whittling Knife', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803250,   1,        128) /* ItemType - Misc */
     , (803250,   5,       4000) /* EncumbranceVal */
     , (803250,   8,          5) /* Mass */
     , (803250,   9,          0) /* ValidLocations - None */
     , (803250,  11,          1) /* MaxStackSize */
     , (803250,  12,          1) /* StackSize */
     , (803250,  13,       4000) /* StackUnitEncumbrance */
     , (803250,  14,          5) /* StackUnitMass */
     , (803250,  15,        250) /* StackUnitValue */
     , (803250,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803250,  19,        250) /* Value */
     , (803250,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803250,  94,        256) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803250,  22, True ) /* Inscribable */
     , (803250,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803250,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803250,   1, 'Drakin Forge Whittling Knife') /* Name */
     , (803250,  14, 'Use this item on Arramoran Missile Weapons to refine it with Drakin Forged properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803250,   1,   33555971) /* Setup */
     , (803250,   3,  536870932) /* SoundTable */
     , (803250,   8,  100670317) /* Icon */
     , (803250,  22,  872415275) /* PhysicsEffectTable */
     , (803250,  52,  100686604) /* IconUnderlay */;
