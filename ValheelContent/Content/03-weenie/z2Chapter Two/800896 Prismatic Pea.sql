DELETE FROM `weenie` WHERE `class_Id` = 800896;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800896, 'Prismatic Pea', 32, '2005-02-09 10:00:00') /* SpellComponent */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800896,   1,       4096) /* ItemType - SpellComponents */
     , (800896,   5,         10) /* EncumbranceVal */
     , (800896,   8,         50) /* Mass */
     , (800896,   9,          0) /* ValidLocations - None */
     , (800896,  11,        100) /* MaxStackSize */
     , (800896,  12,          1) /* StackSize */
     , (800896,  13,         10) /* StackUnitEncumbrance */
     , (800896,  14,         50) /* StackUnitMass */
     , (800896,  15,       3125) /* StackUnitValue */
     , (800896,  16,          1) /* ItemUseable - No */
     , (800896,  19,       3125) /* Value */
     , (800896,  33,          1) /* Bonded - Bonded */
     , (800896,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800896,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800896,  39,    0.33) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800896,   1, 'Prismatic Pea') /* Name */
     , (800896,  15, 'A concentrated prismatic pea.') /* ShortDesc */
     , (800896,  16, 'A concentrated prismatic pea.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800896,   1,   33555445) /* Setup */
     , (800896,   3,  536870932) /* SoundTable */
     , (800896,   6,   67111410) /* PaletteBase */
     , (800896,   7,  268435641) /* ClothingBase */
     , (800896,   8,      27409) /* Icon */
     , (800896,  22,  872415275) /* PhysicsEffectTable */
     , (800896,  29,        175) /* SpellComponent */
     , (800896,  50,      29915) /* IconOverlay */;
