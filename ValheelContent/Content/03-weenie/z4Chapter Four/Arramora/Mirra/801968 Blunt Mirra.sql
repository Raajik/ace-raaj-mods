DELETE FROM `weenie` WHERE `class_Id` = 801968;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801968, 'BluntMirra', 1, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801968,   1,        2304) /* ItemType - Mirra */
     , (801968,   3,         83) /* PaletteTemplate - Amber */
     , (801968,   5,          1) /* EncumbranceVal */
     , (801968,  11,          1) /* MaxStackSize */
     , (801968,  12,          1) /* StackSize */
     , (801968,  13,          1) /* StackUnitEncumbrance */
     , (801968,  15,          1) /* StackUnitValue */
     , (801968,  16,          1) /* ItemUseable - No */
	 , (801968,  18,          512) /* UiEffects - Magical */
     , (801968,  19,          1) /* Value */
     , (801968,  33,          -1) /* Bonded - Bonded */
     , (801968,  65,        101) /* Placement - Resting */
     , (801968,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (801968, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801968,   1, False) /* Stuck */
     , (801968,  11, True ) /* IgnoreCollisions */
     , (801968,  13, True ) /* Ethereal */
     , (801968,  14, True ) /* GravityStatus */
     , (801968,  19, True ) /* Attackable */
     , (801968,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801968,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801968,   1, 'White Sapphire Mirra') /* Name */
     , (801968,   14, 'Instert this gem into a gem socket on a piece of armor to permanently increase the amount of Bludgeon Protection based on the item level.')
     , (801968,   15, 'Instert this gem into a gem socket on a piece or armor.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801968,   1,   33554809) /* Setup */
     , (801968,   3,  536870932) /* SoundTable */
     , (801968,   8,  100674723) /* Icon */
     , (801968,  22,  872415275) /* PhysicsEffectTable */
     , (801968,  52,  100686604) /* IconUnderlay */;
