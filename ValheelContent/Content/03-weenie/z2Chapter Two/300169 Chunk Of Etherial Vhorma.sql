DELETE FROM `weenie` WHERE `class_Id` = 300169;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (300169, 'rawchunkofetheralvhorma', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (300169,   1,        128) /* ItemType - Misc */
     , (300169,   3,         39) /* PaletteTemplate - Black */
     , (300169,   5,       1000) /* EncumbranceVal */
     , (300169,   8,         50) /* Mass */
     , (300169,   9,          0) /* ValidLocations - None */
     , (300169,  11,         15) /* MaxStackSize */
     , (300169,  12,          1) /* StackSize */
     , (300169,  13,         50) /* StackUnitEncumbrance */
     , (300169,  14,         50) /* StackUnitMass */
     , (300169,  15,          0) /* StackUnitValue */
     , (300169,  16,          1) /* ItemUseable - No */
     , (300169,  19,          0) /* Value */
     , (300169,  33,          1) /* Bonded - Bonded */
     , (300169,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (300169, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (300169,  22, True ) /* Inscribable */
     , (300169,  23, True ) /* DestroyOnSell */
     , (300169,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (300169,   1, 'Raw Chunk of Ethereal Vhorma') /* Name */
     , (300169,  15, 'A raw chunk of Etheral Vhorma.') /* ShortDesc */
     , (300169,  16, 'A raw chunk of unrefined Etherial Vhorma.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (300169,   1,   33554817) /* Setup */
     , (300169,   3,  536870932) /* SoundTable */
     , (300169,   6,   67111919) /* PaletteBase */
     , (300169,   7,  268435832) /* ClothingBase */
     , (300169,   8,  100670766) /* Icon */
     , (300169,  22,  872415275) /* PhysicsEffectTable */;
