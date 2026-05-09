DELETE FROM `weenie` WHERE `class_Id` = 803559;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803559, 'Elemental Diffusion Device', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803559,   1,       2048) /* ItemType - Gem */
     , (803559,   5,          1) /* EncumbranceVal */
     , (803559,   8,          1) /* Mass */
     , (803559,   9,          0) /* ValidLocations - None */
     , (803559,  11,          1) /* MaxStackSize */
     , (803559,  12,          1) /* StackSize */
     , (803559,  13,          1) /* StackUnitEncumbrance */
     , (803559,  14,          1) /* StackUnitMass */
     , (803559,  15,          0) /* StackUnitValue */
     , (803559,  16,          1) /* ItemUseable - No */
	 , (803559,  18,          1) /* UiEffects - Magical */
     , (803559,  19,          0) /* Value */
     , (803559,  33,          1) /* Bonded - Bonded */
     , (803559,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803559, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803559,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803559,   1, 'Elemental Diffusion Device') /* Name */
     , (803559,  15, 'A contraption designed for elemental stabalization of eradic elemental charges.') /* ShortDesc */
     , (803559,  33, 'EDDevicePickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803559,   1,   33557506) /* Setup */
     , (803559,   3,  536870932) /* SoundTable */
     , (803559,   6,   67112808) /* PaletteBase */
     , (803559,   7,  268436323) /* ClothingBase */
     , (803559,   8,  100674152) /* Icon */
     , (803559,  22,  872415275) /* PhysicsEffectTable */
     , (803559,  36,  234881046) /* MutateFilter */
     , (803559,  50,  100676420) /* IconOverlay */
     , (803559,  52,  100676442) /* IconUnderlay */;
