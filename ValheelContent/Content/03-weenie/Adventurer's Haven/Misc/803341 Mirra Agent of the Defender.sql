DELETE FROM `weenie` WHERE `class_Id` = 803341;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803341, 'Mirra Agent of the Defender', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803341,   1,        128) /* ItemType - Misc */
     , (803341,   5,       4000) /* EncumbranceVal */
     , (803341,   8,          5) /* Mass */
     , (803341,   9,          0) /* ValidLocations - None */
     , (803341,  11,          1) /* MaxStackSize */
     , (803341,  12,          1) /* StackSize */
     , (803341,  13,       4000) /* StackUnitEncumbrance */
     , (803341,  14,          5) /* StackUnitMass */
     , (803341,  15,       5000) /* StackUnitValue */
     , (803341,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (803341,  19,       5000) /* Value */
     , (803341,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803341,  94, 1073741824) /* TargetType - TinkeringMaterial */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803341,  22, True ) /* Inscribable */
     , (803341,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803341,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803341,   1, 'Mirra Agent of the Defender') /* Name */
     , (803341,  14, 'Apply this to a full bag of Salvage Steel to increase the tinkering power to maximum.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803341,   1,   33559631) /* Setup */
     , (803341,   3,  536870932) /* SoundTable */
     , (803341,   6,   67116700) /* PaletteBase */
     , (803341,   8,  100673778) /* Icon */
     , (803341,  22,  872415275) /* PhysicsEffectTable */
     , (803341,  52,  100676435) /* IconUnderlay */;
