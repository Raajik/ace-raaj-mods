DELETE FROM `weenie` WHERE `class_Id` = 800355;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800355, 'Chubby Bunny Slippers', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800355,   1,          4) /* ItemType - Clothing */
     , (800355,   3,          4) /* PaletteTemplate - Brown */
     , (800355,   4,      65536) /* ClothingPriority - Feet */
     , (800355,   5,        500) /* EncumbranceVal */
     , (800355,   9,        256) /* ValidLocations - FootWear */
     , (800355,  16,          1) /* ItemUseable - No */
     , (800355,  19,         10) /* Value */
     , (800355,  27,          2) /* ArmorType - Leather */
     , (800355,  28,          1) /* ArmorLevel */
     , (800355,  33,          1) /* Bonded - Bonded */
     , (800355,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800355, 106,         50) /* ItemSpellcraft */
     , (800355, 107,         50) /* ItemCurMana */
     , (800355, 108,         50) /* ItemMaxMana */
     , (800355, 109,         15) /* ItemDifficulty */
     , (800355, 114,          1) /* Attuned - Attuned */
     , (800355, 150,        103) /* HookPlacement - Hook */
     , (800355, 151,          1) /* HookType - Floor */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800355,  22, True ) /* Inscribable */
     , (800355,  69, False) /* IsSellable */
     , (800355, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800355,   5,  -0.033) /* ManaRate */
     , (800355,  13,     0.1) /* ArmorModVsSlash */
     , (800355,  14,     0.1) /* ArmorModVsPierce */
     , (800355,  15,     0.1) /* ArmorModVsBludgeon */
     , (800355,  16,     0.1) /* ArmorModVsCold */
     , (800355,  17,     0.1) /* ArmorModVsFire */
     , (800355,  18,     0.1) /* ArmorModVsAcid */
     , (800355,  19,     0.1) /* ArmorModVsElectric */
     , (800355,  39,     1.5) /* DefaultScale */
     , (800355, 165,     0.1) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800355,   1, 'Chubby Bunny Slippers') /* Name */
     , (800355,  16, 'These make you run fast and jump high! Maybe even multiply...') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800355,   1,   33557435) /* Setup */
     , (800355,   6,   67108990) /* PaletteBase */
     , (800355,   7,  268437202) /* ClothingBase */
     , (800355,   8,  100672378) /* Icon */
     , (800355,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800355,  6071,      2)  /* Legendary Sprint */
     , (800355,  6058,      2)  /* Legendary Jump */;
