DELETE FROM `weenie` WHERE `class_Id` = 801974;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801974, 'StaticMirra', 1, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801974,   1,        2304) /* ItemType - Mirra */
     , (801974,   3,         83) /* PaletteTemplate - Amber */
     , (801974,   5,          1) /* EncumbranceVal */
     , (801974,  11,          1) /* MaxStackSize */
     , (801974,  12,          1) /* StackSize */
     , (801974,  13,          1) /* StackUnitEncumbrance */
     , (801974,  15,          1) /* StackUnitValue */
     , (801974,  16,          1) /* ItemUseable - No */
	 , (801974,  18,          64) /* UiEffects - Magical */
     , (801974,  19,          1) /* Value */
     , (801974,  33,          -1) /* Bonded - Bonded */
     , (801974,  65,        101) /* Placement - Resting */
     , (801974,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (801974, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801974,   1, False) /* Stuck */
     , (801974,  11, True ) /* IgnoreCollisions */
     , (801974,  13, True ) /* Ethereal */
     , (801974,  14, True ) /* GravityStatus */
     , (801974,  19, True ) /* Attackable */
     , (801974,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801974,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801974,   1, 'Jet Mirra') /* Name */
     , (801974,   14, 'Instert this gem into a gem socket on a piece of armor to permanently increase the amount of Electric Protection based on the item level.')
     , (801974,   15, 'Instert this gem into a gem socket on a piece or armor.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801974,   1,   33554809) /* Setup */
     , (801974,   3,  536870932) /* SoundTable */
     , (801974,   8,  100674744) /* Icon */
     , (801974,  22,  872415275) /* PhysicsEffectTable */
     , (801974,  52,  100686604) /* IconUnderlay */;
