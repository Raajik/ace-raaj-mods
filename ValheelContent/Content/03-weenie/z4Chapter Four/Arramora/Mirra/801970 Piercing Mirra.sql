DELETE FROM `weenie` WHERE `class_Id` = 801970;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801970, 'PiercingMirra', 1, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801970,   1,        2304) /* ItemType - Mirra */
     , (801970,   3,         83) /* PaletteTemplate - Amber */
     , (801970,   5,          1) /* EncumbranceVal */
     , (801970,  11,          1) /* MaxStackSize */
     , (801970,  12,          1) /* StackSize */
     , (801970,  13,          1) /* StackUnitEncumbrance */
     , (801970,  15,          1) /* StackUnitValue */
     , (801970,  16,          1) /* ItemUseable - No */
	 , (801970,  18,          2048) /* UiEffects - Magical */
     , (801970,  19,          1) /* Value */
     , (801970,  33,          -1) /* Bonded - Bonded */
     , (801970,  65,        101) /* Placement - Resting */
     , (801970,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (801970, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801970,   1, False) /* Stuck */
     , (801970,  11, True ) /* IgnoreCollisions */
     , (801970,  13, True ) /* Ethereal */
     , (801970,  14, True ) /* GravityStatus */
     , (801970,  19, True ) /* Attackable */
     , (801970,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801970,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801970,   1, 'Black Garnet Mirra') /* Name */
     , (801970,   14, 'Instert this gem into a gem socket on a piece of armor to permanently increase the amount of Piercing Protection based on the item level.')
     , (801970,   15, 'Instert this gem into a gem socket on a piece or armor.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801970,   1,   33554809) /* Setup */
     , (801970,   3,  536870932) /* SoundTable */
     , (801970,   8,  100674738) /* Icon */
     , (801970,  22,  872415275) /* PhysicsEffectTable */
     , (801970,  52,  100686604) /* IconUnderlay */;
