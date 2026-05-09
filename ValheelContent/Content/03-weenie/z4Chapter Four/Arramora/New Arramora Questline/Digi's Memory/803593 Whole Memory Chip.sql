DELETE FROM `weenie` WHERE `class_Id` = 803593;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803593, 'WholeMemoryChip', 1, '2024-05-11 06:17:47') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803593,   1,        128) /* ItemType - Writable */
     , (803593,   5,         25) /* EncumbranceVal */
     , (803593,   8,          5) /* Mass */
     , (803593,   9,          0) /* ValidLocations - None */
     , (803593,  16,          0) /* ItemUseable - No */
     , (803593,  19,         10) /* Value */
     , (803593,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803593, 114,          1) /* Attuned - Normal */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803593,  22, False) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803593,  54,       1) /* UseRadius */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803593,   1, 'Chipset of Forgotten Memories') /* Name */
     , (803593,  33, 'MemoryChipPickup1') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803593,   1, 0x02000179) /* Setup */
     , (803593,   3, 0x20000014) /* SoundTable */
     , (803593,   8,  100673500) /* Icon */
     , (803593,  22, 0x3400002B) /* PhysicsEffectTable */;

