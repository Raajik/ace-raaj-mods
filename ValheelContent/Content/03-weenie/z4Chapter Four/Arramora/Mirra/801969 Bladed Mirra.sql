DELETE FROM `weenie` WHERE `class_Id` = 801969;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801969, 'BladedMirra', 1, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801969,   1,        2304) /* ItemType - Mirra */
     , (801969,   3,         83) /* PaletteTemplate - Amber */
     , (801969,   5,          1) /* EncumbranceVal */
     , (801969,  11,          1) /* MaxStackSize */
     , (801969,  12,          1) /* StackSize */
     , (801969,  13,          1) /* StackUnitEncumbrance */
     , (801969,  15,          1) /* StackUnitValue */
     , (801969,  16,          1) /* ItemUseable - No */
	 , (801969,  18,          1024) /* UiEffects - Magical */
     , (801969,  19,          1) /* Value */
     , (801969,  33,          -1) /* Bonded - Bonded */
     , (801969,  65,        101) /* Placement - Resting */
     , (801969,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (801969, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801969,   1, False) /* Stuck */
     , (801969,  11, True ) /* IgnoreCollisions */
     , (801969,  13, True ) /* Ethereal */
     , (801969,  14, True ) /* GravityStatus */
     , (801969,  19, True ) /* Attackable */
     , (801969,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801969,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801969,   1, 'Topaz Mirra') /* Name */
     , (801969,   14, 'Instert this gem into a gem socket on a piece of armor to permanently increase the amount of Slashing Protection based on the item level.')
     , (801969,   15, 'Instert this gem into a gem socket on a piece or armor.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801969,   1,   33554809) /* Setup */
     , (801969,   3,  536870932) /* SoundTable */
     , (801969,   8,  100674743) /* Icon */
     , (801969,  22,  872415275) /* PhysicsEffectTable */
     , (801969,  52,  100686604) /* IconUnderlay */;
