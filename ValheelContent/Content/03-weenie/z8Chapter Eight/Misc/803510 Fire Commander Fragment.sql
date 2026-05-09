DELETE FROM `weenie` WHERE `class_Id` = 803510;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803510, 'FireCommanderFragment', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803510,   1,       2048) /* ItemType - Gem */
     , (803510,   5,          1) /* EncumbranceVal */
     , (803510,   8,          1) /* Mass */
     , (803510,   9,          0) /* ValidLocations - None */
     , (803510,  11,          1) /* MaxStackSize */
     , (803510,  12,          1) /* StackSize */
     , (803510,  13,          1) /* StackUnitEncumbrance */
     , (803510,  14,          1) /* StackUnitMass */
     , (803510,  15,          0) /* StackUnitValue */
     , (803510,  16,          1) /* ItemUseable - No */
     , (803510,  19,          0) /* Value */
     , (803510,  33,          1) /* Bonded - Bonded */
     , (803510,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803510, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803510,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803510,   1, 'Fire Commander Fragment') /* Name */
     , (803510,  15, 'A tiny flawed crystalline fire shard.') /* ShortDesc */
     , (803510,  33, 'FireFragment') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803510,   1,   33557506) /* Setup */
     , (803510,   3,  536870932) /* SoundTable */
     , (803510,   6,   67112808) /* PaletteBase */
     , (803510,   7,  268436323) /* ClothingBase */
     , (803510,   8,  100673900) /* Icon */
     , (803510,  22,  872415275) /* PhysicsEffectTable */
     , (803510,  36,  234881046) /* MutateFilter */;
