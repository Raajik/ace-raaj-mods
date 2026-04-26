DELETE FROM `weenie` WHERE `class_Id` = 801976;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801976, 'Mahogany Mirra', 1, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801976,   1,       2304) /* ItemType - Misc */
     , (801976,   3,         83) /* PaletteTemplate - Amber */
     , (801976,   5,          1) /* EncumbranceVal */
     , (801976,  11,          1) /* MaxStackSize */
     , (801976,  12,          1) /* StackSize */
     , (801976,  13,          1) /* StackUnitEncumbrance */
     , (801976,  15,          1) /* StackUnitValue */
     , (801976,  16,          1) /* ItemUseable - No */
	 , (801976,  18,          1) /* UiEffects - Magical */
     , (801976,  19,          1) /* Value */
     , (801976,  33,          -1) /* Bonded - Bonded */
     , (801976,  65,        101) /* Placement - Resting */
     , (801976,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (801976, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801976,   1, False) /* Stuck */
     , (801976,  11, True ) /* IgnoreCollisions */
     , (801976,  13, True ) /* Ethereal */
     , (801976,  14, True ) /* GravityStatus */
     , (801976,  19, True ) /* Attackable */
     , (801976,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801976,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801976,   1, 'Mahogany Mirra') /* Name */
     , (801976,   14, 'Instert this gem into a gem socket on a missile weapon to permanently increase the damage based on the item level.                                                                                      Level 1 = 1-4%, Level 2 = 5-9%, Level 3 = 10-14%, Level 4 = 15-19%, Level 5 = 20-25%.   ')
     , (801976,   15, 'Instert this gem into a gem socket on a missile weapon.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801976,   1,   33554809) /* Setup */
     , (801976,   3,  536870932) /* SoundTable */
     , (801976,   8,  100673232) /* Icon */
     , (801976,  22,  872415275) /* PhysicsEffectTable */
     , (801976,  52,  100686604) /* IconUnderlay */;
