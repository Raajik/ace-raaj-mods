DELETE FROM `weenie` WHERE `class_Id` = 803340;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803340, 'Mirra Agent of the Archer', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803340,   1,        128) /* ItemType - Misc */
     , (803340,   5,       4000) /* EncumbranceVal */
     , (803340,   8,          5) /* Mass */
     , (803340,   9,          0) /* ValidLocations - None */
     , (803340,  11,          1) /* MaxStackSize */
     , (803340,  12,          1) /* StackSize */
     , (803340,  13,       4000) /* StackUnitEncumbrance */
     , (803340,  14,          5) /* StackUnitMass */
     , (803340,  15,       5000) /* StackUnitValue */
     , (803340,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803340,  19,       5000) /* Value */
     , (803340,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803340,  94, 1073741824) /* TargetType - TinkeringMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803340,  22, True ) /* Inscribable */
     , (803340,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803340,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803340,   1, 'Mirra Agent of the Archer') /* Name */
     , (803340,  14, 'Apply this to a full bag of Salvage Mahogony to increase the tinkering power to maximum.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803340,   1,   33559631) /* Setup */
     , (803340,   3,  536870932) /* SoundTable */
     , (803340,   6,   67116700) /* PaletteBase */
     , (803340,   8,  100673759) /* Icon */
     , (803340,  22,  872415275) /* PhysicsEffectTable */
     , (803340,  52,  100676435) /* IconUnderlay */;
