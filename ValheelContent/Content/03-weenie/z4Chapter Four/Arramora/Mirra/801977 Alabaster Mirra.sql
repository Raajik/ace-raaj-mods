DELETE FROM `weenie` WHERE `class_Id` = 801977;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801977, 'Alabaster Mirra', 1, '2021-11-01 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801977,   1,       2304) /* ItemType - Misc */
     , (801977,   3,         83) /* PaletteTemplate - Amber */
     , (801977,   5,          1) /* EncumbranceVal */
     , (801977,  11,          1) /* MaxStackSize */
     , (801977,  12,          1) /* StackSize */
     , (801977,  13,          1) /* StackUnitEncumbrance */
     , (801977,  15,          1) /* StackUnitValue */
     , (801977,  16,          1) /* ItemUseable - No */
	 , (801977,  18,          1) /* UiEffects - Magical */
     , (801977,  19,          1) /* Value */
     , (801977,  33,         -1) /* Bonded - Bonded */
     , (801977,  65,        101) /* Placement - Resting */
     , (801977,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
	 , (801977, 169,  252313860) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801977,   1, False) /* Stuck */
     , (801977,  11, True ) /* IgnoreCollisions */
     , (801977,  13, True ) /* Ethereal */
     , (801977,  14, True ) /* GravityStatus */
     , (801977,  19, True ) /* Attackable */
     , (801977,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801977,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801977,   1, 'Alabaster Mirra') /* Name */
     , (801977,   14, 'Instert this gem into a gem socket on a piece of armor to permanently increase the Ratings based on the item level.                                                                                      Level 1 = 5, Level 2 = 10, Level 3 = 15, Level 4 = 20, Level 5 = 25.   ')
     , (801977,   15, 'Instert this gem into a gem socket on a piece or armor.');

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801977,   1,   33554809) /* Setup */
     , (801977,   3,  536870932) /* SoundTable */
     , (801977,   8,  100673223) /* Icon */
     , (801977,  22,  872415275) /* PhysicsEffectTable */
     , (801977,  52,  100686604) /* IconUnderlay */;
