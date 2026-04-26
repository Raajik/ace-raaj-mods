DELETE FROM `weenie` WHERE `class_Id` = 800460;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800460, 'Uber Girth of the Red Dot', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800460,   1,          2) /* ItemType - Armor */
     , (800460,   3,         14) /* PaletteTemplate - Red */
     , (800460,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (800460,   5,        150) /* EncumbranceVal */
     , (800460,   8,        325) /* Mass */
     , (800460,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (800460,  16,          1) /* ItemUseable - No */
     , (800460,  18,          1) /* UiEffects - Magical */
     , (800460,  19,       4400) /* Value */
     , (800460,  27,         32) /* ArmorType - Metal */
     , (800460,  28,       1500) /* ArmorLevel */
     , (800460,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800460, 106,        300) /* ItemSpellcraft */
     , (800460, 107,       4000) /* ItemCurMana */
     , (800460, 108,       4000) /* ItemMaxMana */
     , (800460, 109,         50) /* ItemDifficulty */
     , (800460, 158,          2) /* WieldRequirements - RawSkill */
     , (800460, 159,         34) /* WieldSkillType - WarMagic */
     , (800460, 160,        285) /* WieldDifficulty */
     , (800460, 384,          3) /* PK Resist */
     , (800460, 379,          7) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800460,  22, True ) /* Inscribable */
     , (800460,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800460,   5,  -0.033) /* ManaRate */
     , (800460,  12,     0.5) /* Shade */
     , (800460,  13,       2) /* ArmorModVsSlash */
     , (800460,  14,       2) /* ArmorModVsPierce */
     , (800460,  15,       2) /* ArmorModVsBludgeon */
     , (800460,  16,       2) /* ArmorModVsCold */
     , (800460,  17,       2) /* ArmorModVsFire */
     , (800460,  18,       2) /* ArmorModVsAcid */
     , (800460,  19,       2) /* ArmorModVsElectric */
     , (800460, 110,     1.1) /* BulkMod */
     , (800460, 111,     1.5) /* SizeMod */
     , (800460, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800460,   1, 'Uber Girth of the Red Dot') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800460,   1,   33554647) /* Setup */
     , (800460,   3,  536870932) /* SoundTable */
     , (800460,   6,   67108990) /* PaletteBase */
     , (800460,   7,  268436557) /* ClothingBase */
     , (800460,   8,  100674130) /* Icon */
     , (800460,  22,  872415275) /* PhysicsEffectTable */;
