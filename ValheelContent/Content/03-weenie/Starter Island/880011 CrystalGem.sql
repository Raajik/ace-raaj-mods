DELETE FROM `weenie` WHERE `class_Id` = 880011;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (880011, 'thegemcaulnalainsoul', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (880011,   1,       2048) /* ItemType - Gem */
     , (880011,   3,         13) /* PaletteTemplate - Purple */
     , (880011,   5,        200) /* EncumbranceVal */
     , (880011,   8,        200) /* Mass */
     , (880011,   9,          0) /* ValidLocations - None */
     , (880011,  11,          1) /* MaxStackSize */
     , (880011,  12,          1) /* StackSize */
     , (880011,  13,        200) /* StackUnitEncumbrance */
     , (880011,  14,        200) /* StackUnitMass */
     , (880011,  15,          0) /* StackUnitValue */
     , (880011,  16,          1) /* ItemUseable - No */
     , (880011,  19,          0) /* Value */
     , (880011,  33,          1) /* Bonded - Bonded */
     , (880011,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (880011, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (880011,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (880011,  12,     0.5) /* Shade */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (880011,   1, 'Caulnalain Soul Gem') /* Name */
     , (880011,  15, 'Oooo Shiny.') /* ShortDesc */
     , (880011,  33, 'CrystalGemPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (880011,   1, 0x02000179) /* Setup */
     , (880011,   3, 0x20000014) /* SoundTable */
     , (880011,   6, 0x04000BEF) /* PaletteBase */
     , (880011,   7, 0x1000010B) /* ClothingBase */
     , (880011,   8, 0x06001E0B) /* Icon */
     , (880011,  22, 0x3400002B) /* PhysicsEffectTable */;
