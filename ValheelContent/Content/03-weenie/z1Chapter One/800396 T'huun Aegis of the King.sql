DELETE FROM `weenie` WHERE `class_Id` = 800396;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800396, 'T''thuun Aegis II2', 1, '2021-11-01 00:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800396,   1,          2) /* ItemType - Armor */
     , (800396,   5,        300) /* EncumbranceVal */
     , (800396,   9,    2097152) /* ValidLocations - Shield */
     , (800396,  16,          1) /* ItemUseable - No */
     , (800396,  19,         35) /* Value */
     , (800396,  28,        200) /* ArmorLevel */
     , (800396,  33,          1) /* Bonded - Bonded*/
     , (800396,  51,          4) /* CombatUse - Shield */
     , (800396,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800396, 106,        200) /* ItemSpellcraft */
     , (800396, 107,       1000) /* ItemCurMana */
     , (800396, 108,       1000) /* ItemMaxMana */
     , (800396, 109,        250) /* ItemDifficulty */
     , (800396, 114,          1) /* Attuned - Attuned */
     , (800396, 151,          2) /* HookType - Wall */
     , (800396, 158,          7) /* WieldRequirements - Level */
     , (800396, 159,          1) /* WieldSkillType - Axe */
     , (800396, 160,        200) /* WieldDifficulty */
     , (800396, 179,  536870912) /* ImbuedEffect - IgnoreSomeMagicProjectileDamage */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800396,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800396,  13,     1) /* ArmorModVsSlash */
     , (800396,  14,     1) /* ArmorModVsPierce */
     , (800396,  15,     1) /* ArmorModVsBludgeon */
     , (800396,  16,     1) /* ArmorModVsCold */
     , (800396,  17,     1) /* ArmorModVsFire */
     , (800396,  18,     1) /* ArmorModVsAcid */
     , (800396,  19,     1) /* ArmorModVsElectric */
     , (800396,  39,     2.5) /* DefaultScale */
     , (800396, 159,    0.15) /* AbsorbMagicDamage */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800396,   1, 'T''thuun Aegis of the King') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800396,   1,   33560704) /* Setup */
     , (800396,   3,  536870932) /* SoundTable */
     , (800396,   8,  100690288) /* Icon */
     , (800396,  22,  872415275) /* PhysicsEffectTable */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800396,  5471,      2)  /* Queen's Magic Resistance */;
