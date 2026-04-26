DELETE FROM `weenie` WHERE `class_Id` = 803035;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803035, 'Chunk of Iron Ore', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803035,   1,        128) /* ItemType - Misc */
     , (803035,   3,         21) /* PaletteTemplate - Gold */
     , (803035,   5,         50) /* EncumbranceVal */
     , (803035,   8,         50) /* Mass */
     , (803035,   9,          0) /* ValidLocations - None */
     , (803035,  11,        500) /* MaxStackSize */
     , (803035,  12,          1) /* StackSize */
     , (803035,  13,         50) /* StackUnitEncumbrance */
     , (803035,  14,         50) /* StackUnitMass */
     , (803035,  15,          0) /* StackUnitValue */
     , (803035,  16,          1) /* ItemUseable - No */
     , (803035,  19,          0) /* Value */
     , (803035,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803035,  22, True ) /* Inscribable */
     , (803035,  23, True ) /* DestroyOnSell */
     , (803035,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803035,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803035,   1, 'Chunk of Iron Ore') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803035,   1,   33555863) /* Setup */
     , (803035,   3,  536871003) /* SoundTable */
     , (803035,   8,  100667500) /* Icon */
     , (803035,  22,  872415275) /* PhysicsEffectTable */;
