DELETE FROM `weenie` WHERE `class_Id` = 801975;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801975, 'Green Garnett Mirra', 1, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801975,   1,       2304) /* ItemType - Misc */
     , (801975,   3,         83) /* PaletteTemplate - Amber */
     , (801975,   5,          1) /* EncumbranceVal */
     , (801975,  11,          1) /* MaxStackSize */
     , (801975,  12,          1) /* StackSize */
     , (801975,  13,          1) /* StackUnitEncumbrance */
     , (801975,  15,          1) /* StackUnitValue */
     , (801975,  16,          1) /* ItemUseable - No */
	 , (801975,  18,          1) /* UiEffects - Magical */
     , (801975,  19,          1) /* Value */
     , (801975,  33,          -1) /* Bonded - Bonded */
     , (801975,  65,        101) /* Placement - Resting */
     , (801975,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (801975, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801975,   1, False) /* Stuck */
     , (801975,  11, True ) /* IgnoreCollisions */
     , (801975,  13, True ) /* Ethereal */
     , (801975,  14, True ) /* GravityStatus */
     , (801975,  19, True ) /* Attackable */
     , (801975,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801975,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801975,   1, 'Green Garnet Mirra') /* Name */
     , (801975,   14, 'Instert this gem into a gem socket on a wand to permanently increase the Damage Bonus.                                                                                      Level 1 = 1-4%, Level 2 = 5-9%, Level 3 = 10-14%, Level 4 = 15-19%, Level 5 = 20-25%.   ')
     , (801975,   15, 'Instert this gem into a gem socket on a wand.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801975,   1,   33554809) /* Setup */
     , (801975,   3,  536870932) /* SoundTable */
     , (801975,   8,  100674740) /* Icon */
     , (801975,  22,  872415275) /* PhysicsEffectTable */
     , (801975,  52,  100686604) /* IconUnderlay */;
