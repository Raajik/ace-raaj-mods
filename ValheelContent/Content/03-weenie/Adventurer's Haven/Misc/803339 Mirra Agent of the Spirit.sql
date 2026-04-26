DELETE FROM `weenie` WHERE `class_Id` = 803339;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803339, 'Mirra Agent of the Spirit', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803339,   1,        128) /* ItemType - Misc */
     , (803339,   5,       4000) /* EncumbranceVal */
     , (803339,   8,          5) /* Mass */
     , (803339,   9,          0) /* ValidLocations - None */
     , (803339,  11,          1) /* MaxStackSize */
     , (803339,  12,          1) /* StackSize */
     , (803339,  13,       4000) /* StackUnitEncumbrance */
     , (803339,  14,          5) /* StackUnitMass */
     , (803339,  15,       5000) /* StackUnitValue */
     , (803339,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803339,  19,       5000) /* Value */
     , (803339,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803339,  94, 1073741824) /* TargetType - TinkeringMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803339,  22, True ) /* Inscribable */
     , (803339,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803339,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803339,   1, 'Mirra Agent of the Spirit') /* Name */
     , (803339,  14, 'Apply this to a full bag of Salvage Green Garnet to increase the tinkering power to maximum.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803339,   1,   33559631) /* Setup */
     , (803339,   3,  536870932) /* SoundTable */
     , (803339,   6,   67116700) /* PaletteBase */
     , (803339,   8,  100673786) /* Icon */
     , (803339,  22,  872415275) /* PhysicsEffectTable */
     , (803339,  52,  100676435) /* IconUnderlay */;
