DELETE FROM `weenie` WHERE `class_Id` = 803511;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803511, 'CausticCommanderFragment', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803511,   1,       2048) /* ItemType - Gem */
     , (803511,   5,          1) /* EncumbranceVal */
     , (803511,   8,          1) /* Mass */
     , (803511,   9,          0) /* ValidLocations - None */
     , (803511,  11,          1) /* MaxStackSize */
     , (803511,  12,          1) /* StackSize */
     , (803511,  13,          1) /* StackUnitEncumbrance */
     , (803511,  14,          1) /* StackUnitMass */
     , (803511,  15,          0) /* StackUnitValue */
     , (803511,  16,          1) /* ItemUseable - No */
     , (803511,  19,          0) /* Value */
     , (803511,  33,          1) /* Bonded - Bonded */
     , (803511,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803511, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803511,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803511,   1, 'Caustic Commander Fragment') /* Name */
     , (803511,  15, 'A tiny flawed crystalline acid shard.') /* ShortDesc */
     , (803511,  33, 'CausticFragment') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803511,   1,   33557506) /* Setup */
     , (803511,   3,  536870932) /* SoundTable */
     , (803511,   6,   67112808) /* PaletteBase */
     , (803511,   7,  268436323) /* ClothingBase */
     , (803511,   8,  100673897) /* Icon */
     , (803511,  22,  872415275) /* PhysicsEffectTable */
     , (803511,  36,  234881046) /* MutateFilter */;
