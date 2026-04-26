DELETE FROM `weenie` WHERE `class_Id` = 803251;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803251, 'Drakin Forge Weapon Hammer', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803251,   1,        128) /* ItemType - Misc */
     , (803251,   5,       4000) /* EncumbranceVal */
     , (803251,   8,          5) /* Mass */
     , (803251,   9,          0) /* ValidLocations - None */
     , (803251,  11,          1) /* MaxStackSize */
     , (803251,  12,          1) /* StackSize */
     , (803251,  13,       4000) /* StackUnitEncumbrance */
     , (803251,  14,          5) /* StackUnitMass */
     , (803251,  15,        250) /* StackUnitValue */
     , (803251,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803251,  19,        250) /* Value */
     , (803251,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803251,  94,          1) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803251,  22, True ) /* Inscribable */
     , (803251,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803251,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803251,   1, 'Drakin Forge Weapon Hammer') /* Name */
     , (803251,  14, 'Use this item on Arramoran Melee Weapons to harden it with Drakin Forged properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803251,   1,   33559631) /* Setup */
     , (803251,   3,  536870932) /* SoundTable */
     , (803251,   6,   67116700) /* PaletteBase */
     , (803251,   8,  100688029) /* Icon */
     , (803251,  22,  872415275) /* PhysicsEffectTable */
     , (803251,  52,  100686604) /* IconUnderlay */;
