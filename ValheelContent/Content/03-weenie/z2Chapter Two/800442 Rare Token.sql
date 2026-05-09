DELETE FROM `weenie` WHERE `class_Id` = 800442;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800442, 'Rare Token', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800442,   1,       2048) /* ItemType - Misc */
     , (800442,   3,         20) /* PaletteTemplate - Silver */
     , (800442,   5,         10) /* EncumbranceVal */
     , (800442,   8,         10) /* Mass */
     , (800442,   9,          0) /* ValidLocations - None */
     , (800442,  11,        100) /* MaxStackSize */
     , (800442,  12,          1) /* StackSize */
     , (800442,  13,         10) /* StackUnitEncumbrance */
     , (800442,  14,         10) /* StackUnitMass */
     , (800442,  15,        500) /* StackUnitValue */
     , (800442,  16,          1) /* ItemUseable - No */
     , (800442,  19,        500) /* Value */
     , (800442,  33,          1) /* Bonded - Bonded */
     , (800442,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800442,  94,        128) /* TargetType - Misc */
     , (800442, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800442,  22, True ) /* Inscribable */
     , (800442,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800442,  39,     0.7) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800442,   1, 'Rare Token') /* Name */
     , (800442,  15, 'Use this as currency to purchase rare items from the Rare Items Dealer.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800442,   1,   33554669) /* Setup */
     , (800442,   3,  536870932) /* SoundTable */
     , (800442,   6,   67111928) /* PaletteBase */
     , (800442,   7,  268436017) /* ClothingBase */
     , (800442,   8,  100671375) /* Icon */
     , (800442,  22,  872415275) /* PhysicsEffectTable */;
