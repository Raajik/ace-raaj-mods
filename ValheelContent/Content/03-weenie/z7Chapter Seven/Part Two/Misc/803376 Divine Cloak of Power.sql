DELETE FROM `weenie` WHERE `class_Id` = 803376;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803376, 'Divine Cloak of Power', 2, '2023-07-04 12:42:31') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803376,   1,          4) /* ItemType - Clothing */
     , (803376,   4,     131072) /* ClothingPriority - 131072 */
     , (803376,   5,         75) /* EncumbranceVal */
     , (803376,   9,  134217728) /* ValidLocations - Cloak */
     , (803376,  16,          1) /* ItemUseable - No */
     , (803376,  18,         32) /* UiEffects - Magical */
     , (803376,  19,      10000) /* Value */
     , (803376,  28,          0) /* ArmorLevel */
     , (803376,  33,          1) /* Bonded - Bonded */
     , (803376,  36,       9999) /* ResistMagic */
     , (803376,  65,        101) /* Placement - Resting */
     , (803376,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803376, 105,          8) /* ItemWorkmanship */
     , (803376, 114,          1) /* Attuned - Attuned */
     , (803376, 131,          6) /* MaterialType - Silk */
     , (803376, 158,          7) /* WieldRequirements - Level */
     , (803376, 159,          1) /* WieldSkillType - Axe */
     , (803376, 160,          1) /* WieldDifficulty */
     , (803376, 265,         71) /* EquipmentSetId - Ninja */
     , (803376, 370,        500) /* Damage */
     , (803376, 371,        500) /* Damage Resist */
     , (803376, 374,        500) /* Critical Damage */
     , (803376, 375,        500) /* Critical Damage Resist */
     , (803376, 379,       2000) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803376,   1, False) /* Stuck */
     , (803376,  11, True ) /* IgnoreCollisions */
     , (803376,  13, True ) /* Ethereal */
     , (803376,  14, True ) /* GravityStatus */
     , (803376,  19, True ) /* Attackable */
     , (803376,  22, True ) /* Inscribable */
     , (803376, 100, False) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803376,   1,       5) /* HeartbeatInterval */
     , (803376,   2,       0) /* HeartbeatTimestamp */
     , (803376,  13,       2) /* ArmorModVsSlash */
     , (803376,  14,       2) /* ArmorModVsPierce */
     , (803376,  15,       2) /* ArmorModVsBludgeon */
     , (803376,  16,       2) /* ArmorModVsCold */
     , (803376,  17,       2) /* ArmorModVsFire */
     , (803376,  18,       2) /* ArmorModVsAcid */
     , (803376,  19,       2) /* ArmorModVsElectric */
     , (803376, 165,       2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803376,   1, 'Divine Cloak of Power') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803376,   1, 0x02001B2A) /* Setup */
     , (803376,   3, 0x20000014) /* SoundTable */
     , (803376,   7, 0x100007F6) /* ClothingBase */
     , (803376,   8, 0x060070A6) /* Icon */
     , (803376,  22, 0x3400002B) /* PhysicsEffectTable */
     , (803376,  52, 0x06003359) /* IconUnderlay */;