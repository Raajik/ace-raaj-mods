DELETE FROM `weenie` WHERE `class_Id` = 801479;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801479, 'ESCloak', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801479,   1,          4) /* ItemType - Clothing */
     , (801479,   3,          2) /* PaletteTemplate - Blue */
     , (801479,   4,     131072) /* ClothingPriority - 131072 */
     , (801479,   5,         75) /* EncumbranceVal */
     , (801479,   9,  134217728) /* ValidLocations - Cloak */
     , (801479,  16,          1) /* ItemUseable - No */
     , (801479,  18,         64) /* UiEffects - Magical */
     , (801479,  19,          1) /* Value */
     , (801479,  28,       1500) /* ArmorLevel */
     , (801479,  36,       9999) /* ResistMagic */
     , (801479,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801479, 158,          7) /* WieldRequirements - Level */
     , (801479, 159,          1) /* WieldSkillType - Axe */
     , (801479, 160,        350) /* WieldDifficulty */
     , (801479, 169,         16) /* TsysMutationData */
     , (801479, 319,          5) /* ItemMaxLevel */
     , (801479, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (801479, 352,          1) /* CloakWeaveProc */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (801479,   4,          0) /* ItemTotalXp */
     , (801479,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801479,  22, True ) /* Inscribable */
     , (801479,  84, True ) /* IgnoreCloIcons */
     , (801479, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801479,  13,     1.75) /* ArmorModVsSlash */
     , (801479,  14,     1.75) /* ArmorModVsPierce */
     , (801479,  15,     1.75) /* ArmorModVsBludgeon */
     , (801479,  16,     1.75) /* ArmorModVsCold */
     , (801479,  17,     1.75) /* ArmorModVsFire */
     , (801479,  18,     1.75) /* ArmorModVsAcid */
     , (801479,  19,     1.75) /* ArmorModVsElectric */
	 , (801479, 156,        1) /* ProcSpellRate */
     , (801479, 165,     1.75) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801479,   1, 'Enlightened Skies Cloak') /* Name */
     , (801479,  16, 'Enlightened Skies Cloak') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801479,   1,   33561386) /* Setup */
     , (801479,   3,  536870932) /* SoundTable */
     , (801479,   6,  268437490) /* PaletteBase */
     , (801479,   7,  268437483) /* ClothingBase */
     , (801479,   8,  100692124) /* Icon */
     , (801479,  22,  872415275) /* PhysicsEffectTable */
     , (801479,  36,  234881054) /* MutateFilter */
     , (801479,  52,  100689896) /* IconUnderlay */
	 , (801479,  55,       4643) /* ProcSpell - Incantation of Drain Health Other */;
