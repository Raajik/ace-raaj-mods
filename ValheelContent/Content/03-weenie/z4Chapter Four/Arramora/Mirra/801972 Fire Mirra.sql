DELETE FROM `weenie` WHERE `class_Id` = 801972;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801972, 'FireMirra', 1, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801972,   1,        2304) /* ItemType - Mirra */
     , (801972,   3,         83) /* PaletteTemplate - Amber */
     , (801972,   5,          1) /* EncumbranceVal */
     , (801972,  11,          1) /* MaxStackSize */
     , (801972,  12,          1) /* StackSize */
     , (801972,  13,          1) /* StackUnitEncumbrance */
     , (801972,  15,          1) /* StackUnitValue */
     , (801972,  16,          1) /* ItemUseable - No */
	 , (801972,  18,          32) /* UiEffects - Magical */
     , (801972,  19,          1) /* Value */
     , (801972,  33,          -1) /* Bonded - Bonded */
     , (801972,  65,        101) /* Placement - Resting */
     , (801972,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (801972, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801972,   1, False) /* Stuck */
     , (801972,  11, True ) /* IgnoreCollisions */
     , (801972,  13, True ) /* Ethereal */
     , (801972,  14, True ) /* GravityStatus */
     , (801972,  19, True ) /* Attackable */
     , (801972,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801972,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801972,   1, 'Red Garnet Mirra') /* Name */
     , (801972,   14, 'Instert this gem into a gem socket on a piece of armor to permanently increase the amount of Fire Protection based on the item level.')
     , (801972,   15, 'Instert this gem into a gem socket on a piece or armor.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801972,   1,   33554809) /* Setup */
     , (801972,   3,  536870932) /* SoundTable */
     , (801972,   8,  100674752) /* Icon */
     , (801972,  22,  872415275) /* PhysicsEffectTable */
     , (801972,  52,  100686604) /* IconUnderlay */;
