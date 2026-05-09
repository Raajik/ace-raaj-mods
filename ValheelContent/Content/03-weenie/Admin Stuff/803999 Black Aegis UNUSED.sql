DELETE FROM `weenie` WHERE `class_Id` = 803999;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803999, 'customblackaegis', 40, '2005-02-09 10:00:00') /* AdvocateItem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803999,   1,          2) /* ItemType - Armor */
     , (803999,   3,         30) /* PaletteTemplate - Amber */
     , (803999,   5,          1) /* EncumbranceVal */
     , (803999,   8,        140) /* Mass */
     , (803999,   9,    2097152) /* ValidLocations - Shield */
     , (803999,  16,          1) /* ItemUseable - No */
     , (803999,  19,        120) /* Value */
     , (803999,  27,          2) /* ArmorType - Leather */
     , (803999,  28,         50) /* ArmorLevel */
     , (803999,  33,          1) /* Bonded - Bonded */
     , (803999,  51,          4) /* CombatUse - Shield */
     , (803999,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803999, 114,          2) /* Attuned - Sticky */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803999,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803999,  13,       1) /* ArmorModVsSlash */
     , (803999,  14,     0.8) /* ArmorModVsPierce */
     , (803999,  15,     1.2) /* ArmorModVsBludgeon */
     , (803999,  16,     0.6) /* ArmorModVsCold */
     , (803999,  17,     0.6) /* ArmorModVsFire */
     , (803999,  18,       1) /* ArmorModVsAcid */
     , (803999,  19,     0.6) /* ArmorModVsElectric */
     , (803999,  39,       1) /* DefaultScale */
     , (803999, 110,       1) /* BulkMod */
     , (803999, 111,       1) /* SizeMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803999,   1, 'Aegis') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803999,   1,   33555654) /* Setup */
     , (803999,   3,  536870932) /* SoundTable */
    /* , (803999,   6,   67111919) /* PaletteBase */
     , (803999,   7,  268435732) /* ClothingBase */
     , (803999,   8,  100669655) /* Icon */
     , (803999,  22,  872415275) /* PhysicsEffectTable */;
