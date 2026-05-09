DELETE FROM `weenie` WHERE `class_Id` = 801967;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801967, 'IronMirra', 1, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801967,   1,       2304) /* ItemType - Mirra */
     , (801967,   3,         83) /* PaletteTemplate - Amber */
     , (801967,   5,          1) /* EncumbranceVal */
     , (801967,  11,          1) /* MaxStackSize */
     , (801967,  12,          1) /* StackSize */
     , (801967,  13,          1) /* StackUnitEncumbrance */
     , (801967,  15,          1) /* StackUnitValue */
     , (801967,  16,          1) /* ItemUseable - No */
	 , (801967,  18,          1) /* UiEffects - Magical */
     , (801967,  19,          1) /* Value */
     , (801967,  33,          -1) /* Bonded - Bonded */
     , (801967,  65,        101) /* Placement - Resting */
     , (801967,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (801967, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801967,   1, False) /* Stuck */
     , (801967,  11, True ) /* IgnoreCollisions */
     , (801967,  13, True ) /* Ethereal */
     , (801967,  14, True ) /* GravityStatus */
     , (801967,  19, True ) /* Attackable */
     , (801967,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801967,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801967,   1, 'Iron Mirra') /* Name */
     , (801967,   14, 'Instert this gem into a gem socket on a melee weapon to permanently increase the Damage.                                                                                      Level 1 = 15, Level 2 = 25, Level 3 = 50, Level 4 = 75, Level 5 = 100.   ')
     , (801967,   15, 'Instert this gem into a gem socket on a melee weapon.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801967,   1,   33554809) /* Setup */
     , (801967,   3,  536870932) /* SoundTable */
     , (801967,   8,  100673229) /* Icon */
     , (801967,  22,  872415275) /* PhysicsEffectTable */
     , (801967,  52,  100686604) /* IconUnderlay */;
