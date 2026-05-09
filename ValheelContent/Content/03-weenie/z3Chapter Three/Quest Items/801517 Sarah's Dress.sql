DELETE FROM `weenie` WHERE `class_Id` = 801517;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801517, 'Sarahs Dress', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801517,   1,          4) /* ItemType - Clothing */
     , (801517,   3,         90) /* PaletteTemplate - DyeWinterSilver */
     , (801517,   4,      81664) /* ClothingPriority - OuterwearUpperLegs, OuterwearLowerLegs, OuterwearChest, OuterwearAbdomen, OuterwearUpperArms, OuterwearLowerArms, Feet */
     , (801517,   5,        500) /* EncumbranceVal */
     , (801517,   8,        150) /* Mass */
     , (801517,   9,      32512) /* ValidLocations - Armor */
     , (801517,  16,          1) /* ItemUseable - No */
     , (801517,  19,       5000) /* Value */
     , (801517,  27,          1) /* ArmorType - Cloth */
     , (801517,  28,         20) /* ArmorLevel */
     , (801517,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801517, 114,          2) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801517,  22, True ) /* Inscribable */
     , (801517,  69, False) /* IsSellable */
     , (801517, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801517,  12,     0.5) /* Shade */
     , (801517,  13,     0.1) /* ArmorModVsSlash */
     , (801517,  14,     0.1) /* ArmorModVsPierce */
     , (801517,  15,     0.1) /* ArmorModVsBludgeon */
     , (801517,  16,     0.1) /* ArmorModVsCold */
     , (801517,  17,     0.1) /* ArmorModVsFire */
     , (801517,  18,     0.1) /* ArmorModVsAcid */
     , (801517,  19,     0.1) /* ArmorModVsElectric */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801517,   1, 'Sarah''s Dress') /* Name */
     , (801517,  15, 'A finely knitted dress made for a glorious wedding.') /* ShortDesc */
     , (801517,  33, 'SarahDress') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801517,   1,   33554854) /* Setup */
     , (801517,   3,  536870932) /* SoundTable */
     , (801517,   6,   67108990) /* PaletteBase */
     , (801517,   7,  268436722) /* ClothingBase */
     , (801517,   8,  100670349) /* Icon */
     , (801517,  22,  872415275) /* PhysicsEffectTable */;
