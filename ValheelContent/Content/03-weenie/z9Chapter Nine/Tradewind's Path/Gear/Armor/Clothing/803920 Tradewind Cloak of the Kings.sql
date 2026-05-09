DELETE FROM `weenie` WHERE `class_Id` = 803920;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803920, 'Tradewind Cloak of the Kings', 2, '2023-07-04 12:42:31') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803920,   1,          4) /* ItemType - Clothing */
     , (803920,   4,     131072) /* ClothingPriority - 131072 */
     , (803920,   5,         75) /* EncumbranceVal */
     , (803920,   9,  134217728) /* ValidLocations - Cloak */
     , (803920,  16,          1) /* ItemUseable - No */
     , (803920,  18,          0) /* UiEffects - Magical */
     , (803920,  19,      10000) /* Value */
     , (803920,  28,          0) /* ArmorLevel */
     , (803920,  33,          1) /* Bonded - Bonded */
     , (803920,  36,       9999) /* ResistMagic */
     , (803920,  65,        101) /* Placement - Resting */
     , (803920,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803920, 105,          8) /* ItemWorkmanship */
     , (803920, 114,          1) /* Attuned - Attuned */
     , (803920, 131,          6) /* MaterialType - Silk */
     , (803920, 158,          7) /* WieldRequirements - Level */
     , (803920, 159,          1) /* WieldSkillType - Axe */
     , (803920, 160,      10000) /* WieldDifficulty */
     , (803920, 265,         71) /* EquipmentSetId - Ninja */
     , (803920, 370,       1500) /* Damage */
     , (803920, 371,       1500) /* Damage Resist */
     , (803920, 374,       1500) /* Critical Damage */
     , (803920, 375,       1500) /* Critical Damage Resist */
     , (803920, 376,       1500) /* Gear Heal Boost */
     , (803920, 379,       2250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803920,   1, False) /* Stuck */
     , (803920,  11, True ) /* IgnoreCollisions */
     , (803920,  13, True ) /* Ethereal */
     , (803920,  14, True ) /* GravityStatus */
     , (803920,  19, True ) /* Attackable */
     , (803920,  22, True ) /* Inscribable */
     , (803920, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803920,   1,       5) /* HeartbeatInterval */
     , (803920,   2,       0) /* HeartbeatTimestamp */
     , (803920,  13,       2) /* ArmorModVsSlash */
     , (803920,  14,       2) /* ArmorModVsPierce */
     , (803920,  15,       2) /* ArmorModVsBludgeon */
     , (803920,  16,       2) /* ArmorModVsCold */
     , (803920,  17,       2) /* ArmorModVsFire */
     , (803920,  18,       2) /* ArmorModVsAcid */
     , (803920,  19,       2) /* ArmorModVsElectric */
     , (803920, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803920,   1, 'Tradewind Cloak of the Kings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803920,   1, 0x02001B2A) /* Setup */
     , (803920,   3, 0x20000014) /* SoundTable */
     , (803920,   7, 0x100007F6) /* ClothingBase */
     , (803920,   8, 0x060070A6) /* Icon */
     , (803920,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803920,  52,  100667892) /* IconUnderlay */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803920,  4407,      2)  /* Epic Focus */;