DELETE FROM `weenie` WHERE `class_Id` = 803037;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803037, 'Chunk of Steel Ore', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803037,   1,        128) /* ItemType - Misc */
     , (803037,   3,         21) /* PaletteTemplate - Gold */
     , (803037,   5,         50) /* EncumbranceVal */
     , (803037,   8,         50) /* Mass */
     , (803037,   9,          0) /* ValidLocations - None */
     , (803037,  11,        500) /* MaxStackSize */
     , (803037,  12,          1) /* StackSize */
     , (803037,  13,         50) /* StackUnitEncumbrance */
     , (803037,  14,         50) /* StackUnitMass */
     , (803037,  15,          0) /* StackUnitValue */
     , (803037,  16,          1) /* ItemUseable - No */
     , (803037,  19,          0) /* Value */
     , (803037,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803037,  22, True ) /* Inscribable */
     , (803037,  23, True ) /* DestroyOnSell */
     , (803037,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803037,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803037,   1, 'Chunk of Steel Ore') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803037,   1,   33555863) /* Setup */
     , (803037,   3,  536871003) /* SoundTable */
     , (803037,   8,  100667500) /* Icon */
     , (803037,  22,  872415275) /* PhysicsEffectTable */;
