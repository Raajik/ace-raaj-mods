DELETE FROM `weenie` WHERE `class_Id` = 800186;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800186, 'virindi charmer2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800186,   1,       2048) /* ItemType - Gem */
     , (800186,   3,         10) /* PaletteTemplate - LightBlue */
     , (800186,   5,         10) /* EncumbranceVal */
     , (800186,   8,         10) /* Mass */
     , (800186,   9,          0) /* ValidLocations - None */
     , (800186,  11,          1) /* MaxStackSize */
     , (800186,  12,          1) /* StackSize */
     , (800186,  13,         10) /* StackUnitEncumbrance */
     , (800186,  14,         10) /* StackUnitMass */
     , (800186,  15,        200) /* StackUnitValue */
     , (800186,  16,          1) /* ItemUseable - No */
     , (800186,  19,        200) /* Value */
     , (800186,  33,          1) /* Bonded - Bonded */
     , (800186,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800186, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800186,  22, True ) /* Inscribable */
     , (800186,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800186,   1, 'Virindi Charming Jewel') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800186,   1,   33554809) /* Setup */
     , (800186,   3,  536870932) /* SoundTable */
     , (800186,   6,   67111919) /* PaletteBase */
     , (800186,   7,  268435723) /* ClothingBase */
     , (800186,   8,  100670079) /* Icon */
     , (800186,  22,  872415275) /* PhysicsEffectTable */
     , (800186,  36,  234881046) /* MutateFilter */;
