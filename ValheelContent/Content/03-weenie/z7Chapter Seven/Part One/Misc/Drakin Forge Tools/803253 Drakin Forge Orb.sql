DELETE FROM `weenie` WHERE `class_Id` = 803253;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803253, 'Drakin Forge Orb', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803253,   1,        128) /* ItemType - Misc */
     , (803253,   5,       4000) /* EncumbranceVal */
     , (803253,   8,          5) /* Mass */
     , (803253,   9,          0) /* ValidLocations - None */
     , (803253,  11,          1) /* MaxStackSize */
     , (803253,  12,          1) /* StackSize */
     , (803253,  13,       4000) /* StackUnitEncumbrance */
     , (803253,  14,          5) /* StackUnitMass */
     , (803253,  15,        250) /* StackUnitValue */
     , (803253,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803253,  19,        250) /* Value */
     , (803253,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803253,  94,      32768) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803253,  22, True ) /* Inscribable */
     , (803253,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803253,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803253,   1, 'Drakin Forge Orb') /* Name */
     , (803253,  14, 'Use this item on Arramoran Magic Casters to enliven it with Drakin Forged properties.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803253,   1,   33556767) /* Setup */
     , (803253,   3,  536870932) /* SoundTable */
     , (803253,   6,   67111928) /* PaletteBase */
     , (803253,   7,  268436041) /* ClothingBase */
     , (803253,   8,  100670982) /* Icon */
     , (803253,  22,  872415275) /* PhysicsEffectTable */
     , (803253,  52,  100686604) /* IconUnderlay */;
