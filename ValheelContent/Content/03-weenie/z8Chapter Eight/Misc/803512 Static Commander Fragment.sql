DELETE FROM `weenie` WHERE `class_Id` = 803512;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803512, 'StaticCommanderFragment', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803512,   1,       2048) /* ItemType - Gem */
     , (803512,   5,          1) /* EncumbranceVal */
     , (803512,   8,          1) /* Mass */
     , (803512,   9,          0) /* ValidLocations - None */
     , (803512,  11,          1) /* MaxStackSize */
     , (803512,  12,          1) /* StackSize */
     , (803512,  13,          1) /* StackUnitEncumbrance */
     , (803512,  14,          1) /* StackUnitMass */
     , (803512,  15,          0) /* StackUnitValue */
     , (803512,  16,          1) /* ItemUseable - No */
     , (803512,  19,          0) /* Value */
     , (803512,  33,          1) /* Bonded - Bonded */
     , (803512,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803512, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803512,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803512,   1, 'Static Commander Fragment') /* Name */
     , (803512,  15, 'A tiny flawed crystalline static shard.') /* ShortDesc */
     , (803512,  33, 'StaticFragment') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803512,   1,   33557506) /* Setup */
     , (803512,   3,  536870932) /* SoundTable */
     , (803512,   6,   67112808) /* PaletteBase */
     , (803512,   7,  268436323) /* ClothingBase */
     , (803512,   8,  100673906) /* Icon */
     , (803512,  22,  872415275) /* PhysicsEffectTable */
     , (803512,  36,  234881046) /* MutateFilter */;
