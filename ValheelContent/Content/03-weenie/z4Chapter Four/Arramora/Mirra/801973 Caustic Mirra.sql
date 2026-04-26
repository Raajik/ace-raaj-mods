DELETE FROM `weenie` WHERE `class_Id` = 801973;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801973, 'CausticMirra', 1, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801973,   1,        2304) /* ItemType - Mirra */
     , (801973,   3,         83) /* PaletteTemplate - Amber */
     , (801973,   5,          1) /* EncumbranceVal */
     , (801973,  11,          1) /* MaxStackSize */
     , (801973,  12,          1) /* StackSize */
     , (801973,  13,          1) /* StackUnitEncumbrance */
     , (801973,  15,          1) /* StackUnitValue */
     , (801973,  16,          1) /* ItemUseable - No */
	 , (801973,  18,          256) /* UiEffects - Magical */
     , (801973,  19,          1) /* Value */
     , (801973,  33,          -1) /* Bonded - Bonded */
     , (801973,  65,        101) /* Placement - Resting */
     , (801973,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (801973, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801973,   1, False) /* Stuck */
     , (801973,  11, True ) /* IgnoreCollisions */
     , (801973,  13, True ) /* Ethereal */
     , (801973,  14, True ) /* GravityStatus */
     , (801973,  19, True ) /* Attackable */
     , (801973,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801973,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801973,   1, 'Emerald Mirra') /* Name */
     , (801973,   14, 'Instert this gem into a gem socket on a piece of armor to permanently increase the amount of Acid Protection based on the item level.')
     , (801973,   15, 'Instert this gem into a gem socket on a piece or armor.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801973,   1,   33554809) /* Setup */
     , (801973,   3,  536870932) /* SoundTable */
     , (801973,   8,  100674731) /* Icon */
     , (801973,  22,  872415275) /* PhysicsEffectTable */
     , (801973,  52,  100686604) /* IconUnderlay */;
