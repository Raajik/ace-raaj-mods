DELETE FROM `weenie` WHERE `class_Id` = 801971;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801971, 'FrostMirra', 1, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801971,   1,        2304) /* ItemType - Mirra */
     , (801971,   3,         83) /* PaletteTemplate - Amber */
     , (801971,   5,          1) /* EncumbranceVal */
     , (801971,  11,          1) /* MaxStackSize */
     , (801971,  12,          1) /* StackSize */
     , (801971,  13,          1) /* StackUnitEncumbrance */
     , (801971,  15,          1) /* StackUnitValue */
     , (801971,  16,          1) /* ItemUseable - No */
	 , (801971,  18,          128) /* UiEffects - Magical */
     , (801971,  19,          1) /* Value */
     , (801971,  33,          -1) /* Bonded - Bonded */
     , (801971,  65,        101) /* Placement - Resting */
     , (801971,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (801971, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801971,   1, False) /* Stuck */
     , (801971,  11, True ) /* IgnoreCollisions */
     , (801971,  13, True ) /* Ethereal */
     , (801971,  14, True ) /* GravityStatus */
     , (801971,  19, True ) /* Attackable */
     , (801971,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801971,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801971,   1, 'Aquamarine Mirra') /* Name */
     , (801971,   14, 'Instert this gem into a gem socket on a piece of armor to permanently increase the amount of Cold Protection based on the item level.')
     , (801971,   15, 'Instert this gem into a gem socket on a piece or armor.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801971,   1,   33554809) /* Setup */
     , (801971,   3,  536870932) /* SoundTable */
     , (801971,   8,  100674736) /* Icon */
     , (801971,  22,  872415275) /* PhysicsEffectTable */
     , (801971,  52,  100686604) /* IconUnderlay */;
