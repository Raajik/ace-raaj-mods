DELETE FROM `weenie` WHERE `class_Id` = 800357;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800357, 'Master Cloak of Beal''Zharon', 2, '2021-11-17 16:56:08') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800357,   1,          4) /* ItemType - Clothing */
     , (800357,   4,     131072) /* ClothingPriority - 131072 */
     , (800357,   5,         10) /* EncumbranceVal */
     , (800357,   9,  134217728) /* ValidLocations - Cloak */
     , (800357,  16,          1) /* ItemUseable - No */
     , (800357,  18,          0) /* UiEffects - Magical */
     , (800357,  19,    9999999) /* Value */
     , (800357,  28,          0) /* ArmorLevel */
     , (800357,  33,          1) /* Bonded - Bonded */
     , (800357,  36,       9999) /* ResistMagic */
     , (800357,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800357, 114,          1) /* Attuned - Attuned */
     , (800357, 158,          7) /* WieldRequirements - Level */
     , (800357, 159,          1) /* WieldSkillType - Axe */
     , (800357, 160,        180) /* WieldDifficulty */
     , (800357, 265,         68) /* EquipmentSetId - CloakMagicDefense */
     , (800357, 319,          4) /* ItemMaxLevel */
     , (800357, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (800357, 352,          1) /* CloakWeaveProc */
     , (800357, 384,          5) /* PK Dmg Resist */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (800357,   4,          0) /* ItemTotalXp */
     , (800357,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800357,  22, True ) /* Inscribable */
     , (800357,  23, True ) /* DestroyOnSell */
     , (800357,  99, True ) /* Ivoryable */
     , (800357, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800357,  13,     1.2) /* ArmorModVsSlash */
     , (800357,  14,     1.2) /* ArmorModVsPierce */
     , (800357,  15,     1.2) /* ArmorModVsBludgeon */
     , (800357,  16,     1.2) /* ArmorModVsCold */
     , (800357,  17,     1.2) /* ArmorModVsFire */
     , (800357,  18,     1.1) /* ArmorModVsAcid */
     , (800357,  19,     1.2) /* ArmorModVsElectric */
     , (800357, 165,     1.2) /* ArmorModVsNether */
	 , (800357,  156,    0.05) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800357,   1, 'Master Cloak of Beal''Zharon') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800357,   1,   33561386) /* Setup */
     , (800357,   3,  536870932) /* SoundTable */
     , (800357,   7,  268437598) /* ClothingBase */
     , (800357,   8,  100693224) /* Icon */
     , (800357,  22,  872415275) /* PhysicsEffectTable */
     , (800357,  50,  100690999) /* IconOverlay */
     , (800357,  55,       4347) /* ProcSpell - Nullify 2-6 Life */;
