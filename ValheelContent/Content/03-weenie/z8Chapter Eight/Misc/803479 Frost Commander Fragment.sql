DELETE FROM `weenie` WHERE `class_Id` = 803479;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803479, 'FrostCommanderFragment', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803479,   1,       2048) /* ItemType - Gem */
     , (803479,   5,          1) /* EncumbranceVal */
     , (803479,   8,          1) /* Mass */
     , (803479,   9,          0) /* ValidLocations - None */
     , (803479,  11,          1) /* MaxStackSize */
     , (803479,  12,          1) /* StackSize */
     , (803479,  13,          1) /* StackUnitEncumbrance */
     , (803479,  14,          1) /* StackUnitMass */
     , (803479,  15,          0) /* StackUnitValue */
     , (803479,  16,          1) /* ItemUseable - No */
     , (803479,  19,          0) /* Value */
     , (803479,  33,          1) /* Bonded - Bonded */
     , (803479,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803479, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803479,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803479,   1, 'Frost Commander Fragment') /* Name */
     , (803479,  15, 'A tiny flawed crystalline ice shard.') /* ShortDesc */
     , (803479,  33, 'FrostFragment') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803479,   1,   33557506) /* Setup */
     , (803479,   3,  536870932) /* SoundTable */
     , (803479,   6,   67112808) /* PaletteBase */
     , (803479,   7,  268436323) /* ClothingBase */
     , (803479,   8,  100673899) /* Icon */
     , (803479,  22,  872415275) /* PhysicsEffectTable */
     , (803479,  36,  234881046) /* MutateFilter */;
