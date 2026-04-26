DELETE FROM `weenie` WHERE `class_Id` = 800897;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800897, 'Refined Prismatic Scarab', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800897,   1,        128) /* ItemType - Misc */
     , (800897,   3,         21) /* PaletteTemplate - Gold */
     , (800897,   5,          0) /* EncumbranceVal */
     , (800897,   8,          1) /* Mass */
     , (800897,   9,          0) /* ValidLocations - None */
     , (800897,  11,       2500) /* MaxStackSize */
     , (800897,  12,          1) /* StackSize */
     , (800897,  15,       1200) /* StackUnitValue */
     , (800897,  16,          1) /* ItemUseable - No */
  /* , (800897,  18,          1) /* UiEffects - Magical */
     , (800897,  19,       1200) /* Value */
     , (800897,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800897,  22, True ) /* Inscribable */
     , (800897,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800897,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800897,   1, 'Refined Prismatic Scarab') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800897,   1,   33554802) /* Setup */
     , (800897,   6,   67111919) /* PaletteBase */
     , (800897,   7,  268435747) /* ClothingBase */
     , (800897,   8,      27404) /* Icon */
	 , (800897,  50,      27132) /* IconOverlay */
     /* , (800897,  52,  100689404) /* IconUnderlay */;
