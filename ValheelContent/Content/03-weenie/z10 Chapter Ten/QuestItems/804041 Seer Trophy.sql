DELETE FROM `weenie` WHERE `class_Id` = 804041;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804041, 'SeerTrophy', 51, '2005-02-09 10:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804041,   1,        128) /* ItemType - Misc */
     , (804041,   3,         39) /* PaletteTemplate - Black */
     , (804041,   5,        300) /* EncumbranceVal */
     , (804041,   8,        600) /* Mass */
     , (804041,   9,          0) /* ValidLocations - None */
     , (804041,  11,          5) /* MaxStackSize */
     , (804041,  12,          1) /* StackSize */
     , (804041,  13,          1) /* StackUnitEncumbrance */
     , (804041,  14,          1) /* StackUnitMass */
     , (804041,  15,          1) /* StackUnitValue */
     , (804041,  16,          1) /* ItemUseable - No */
     , (804041,  19,          1) /* Value */
     , (804041,  33,          1) /* Bonded - Bonded */
     , (804041,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (804041, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804041,  22, True ) /* Inscribable */
     , (804041,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804041,  12,    0.66) /* Shade */
     , (804041,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804041,   1, 'Seer Trophy') /* Name */
     , (804041,  16, 'The head of a Grand Seer, hoisted high like a trophy.') /* LongDesc */
     , (804041,  33, 'ENTERQUEST') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804041,   1,   33558415) /* Setup */
     , (804041,   3,  536870932) /* SoundTable */
     , (804041,   6,   67108990) /* PaletteBase */
     , (804041,   7,  268436477) /* ClothingBase */
     , (804041,   8,  100674852) /* Icon */
     , (804041,  22,  872415275) /* PhysicsEffectTable */;
