DELETE FROM `weenie` WHERE `class_Id` = 801966;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801966, 'SteelMirra', 1, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801966,   1,       2304) /* ItemType - Mirra */
     , (801966,   3,         83) /* PaletteTemplate - Amber */
     , (801966,   5,          1) /* EncumbranceVal */
     , (801966,  11,          1) /* MaxStackSize */
     , (801966,  12,          1) /* StackSize */
     , (801966,  13,          1) /* StackUnitEncumbrance */
     , (801966,  15,          1) /* StackUnitValue */
     , (801966,  16,          1) /* ItemUseable - No */
	 , (801966,  18,          1) /* UiEffects - Magical */
     , (801966,  19,          1) /* Value */
     , (801966,  33,          -1) /* Bonded - Bonded */
     , (801966,  65,        101) /* Placement - Resting */
     , (801966,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (801966, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801966,   1, False) /* Stuck */
     , (801966,  11, True ) /* IgnoreCollisions */
     , (801966,  13, True ) /* Ethereal */
     , (801966,  14, True ) /* GravityStatus */
     , (801966,  19, True ) /* Attackable */
     , (801966,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801966,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801966,   1, 'Steel Mirra') /* Name */
     , (801966,   14, 'Instert this gem into a gem socket on a piece of armor to permanently increase the amount of armor based on the item level.                                                                                      Level 1 = 10-24, Level 2 = 25-49, Level 3 = 50-74, Level 4 = 75-99, Level 5 = 100-150.   ')
     , (801966,   15, 'Instert this gem into a gem socket on a piece or armor.');
	 
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801966,   1,   33554809) /* Setup */
     , (801966,   3,  536870932) /* SoundTable */
     , (801966,   8,  100673301) /* Icon */
     , (801966,  22,  872415275) /* PhysicsEffectTable */
     , (801966,  52,  100686604) /* IconUnderlay */;
