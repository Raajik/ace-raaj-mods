DELETE FROM `weenie` WHERE `class_Id` = 800340;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800340, 'T''thuun Aegis II', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800340,   1,          2) /* ItemType - Armor */
     , (800340,   5,        300) /* EncumbranceVal */
     , (800340,   9,    2097152) /* ValidLocations - Shield */
     , (800340,  16,          1) /* ItemUseable - No */
     , (800340,  19,         35) /* Value */
     , (800340,  28,        500) /* ArmorLevel */
     , (800340,  33,          1) /* Bonded - Bonded*/
     , (800340,  51,          4) /* CombatUse - Shield */
     , (800340,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800340, 106,        200) /* ItemSpellcraft */
     , (800340, 107,       1000) /* ItemCurMana */
     , (800340, 108,       1000) /* ItemMaxMana */
     , (800340, 109,        250) /* ItemDifficulty */
     , (800340, 114,          1) /* Attuned - Attuned */
     , (800340, 151,          2) /* HookType - Wall */
     , (800340, 158,          7) /* WieldRequirements - Level */
     , (800340, 159,          1) /* WieldSkillType - Axe */
     , (800340, 160,        200) /* WieldDifficulty */
     , (800340, 179,  536870912) /* ImbuedEffect - IgnoreSomeMagicProjectileDamage */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800340,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800340,  13,     1.2) /* ArmorModVsSlash */
     , (800340,  14,     1.2) /* ArmorModVsPierce */
     , (800340,  15,     1.2) /* ArmorModVsBludgeon */
     , (800340,  16,     1.2) /* ArmorModVsCold */
     , (800340,  17,     1.2) /* ArmorModVsFire */
     , (800340,  18,     1.2) /* ArmorModVsAcid */
     , (800340,  19,     1.2) /* ArmorModVsElectric */
     , (800340,  39,     1.4) /* DefaultScale */
     , (800340, 159,    0.35) /* AbsorbMagicDamage */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800340,   1, 'T''thuun Aegis II') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800340,   1,   33560704) /* Setup */
     , (800340,   3,  536870932) /* SoundTable */
     , (800340,   8,  100690288) /* Icon */
     , (800340,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800340,  5471,      2)  /* Queen's Magic Resistance */;
