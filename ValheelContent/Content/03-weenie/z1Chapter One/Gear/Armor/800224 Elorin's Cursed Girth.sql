DELETE FROM `weenie` WHERE `class_Id` = 800224;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800224, 'Elorin''s Cursed Girth', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800224,   1,          2) /* ItemType - Armor */
     , (800224,   3,         93) /* PaletteTemplate - Silver */
     , (800224,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (800224,   5,       1000) /* EncumbranceVal */
     , (800224,   8,        625) /* Mass */
     , (800224,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (800224,  16,          1) /* ItemUseable - No */
     , (800224,  19,         10) /* Value */
     , (800224,  27,         32) /* ArmorType - Metal */
     , (800224,  28,        800) /* ArmorLevel */
     , (800224,  33,          1) /* Bonded - Bonded */
     , (800224,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800224, 106,        200) /* ItemSpellcraft */
     , (800224, 107,       1000) /* ItemCurMana */
     , (800224, 108,       1000) /* ItemMaxMana */
     , (800224, 114,          1) /* Attuned - Attuned */
     , (800224, 124,          3) /* Version */
     , (800224, 158,          7) /* WieldRequirements - Level */
     , (800224, 159,          1) /* WieldSkillType - Axe */
     , (800224, 160,        200) /* WieldDifficulty */
     , (800224, 169,  118096132) /* TsysMutationData */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800224,  22, True ) /* Inscribable */
     , (800224, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800224,  12,    0.33) /* Shade */
     , (800224,  13,     2) /* ArmorModVsSlash */
     , (800224,  14,       2) /* ArmorModVsPierce */
     , (800224,  15,       2) /* ArmorModVsBludgeon */
     , (800224,  16,     2) /* ArmorModVsCold */
     , (800224,  17,     2) /* ArmorModVsFire */
     , (800224,  18,     2) /* ArmorModVsAcid */
     , (800224,  19,     2) /* ArmorModVsElectric */
     , (800224, 110,     0.9) /* BulkMod */
     , (800224, 111,     1.5) /* SizeMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800224,   1, 'Elorin''s Cursed Girth') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800224,   1,   33554647) /* Setup */
     , (800224,   3,  536870932) /* SoundTable */
     , (800224,   6,   67108990) /* PaletteBase */
     , (800224,   7,  268435843) /* ClothingBase */
     , (800224,   8,  100670411) /* Icon */
     , (800224,  22,  872415275) /* PhysicsEffectTable */
     , (800224,  36,  234881042) /* MutateFilter */
     , (800224,  46,  939524146) /* TsysMutationFilter */;
	 
INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800224,  6072,      2)  /* Legendary Heavy Weapon */
     , (800224,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800224,  6050,      2)  /* Legendary Dual Weild */
	 , (800224,  6044,      2)  /* Legendary Missile Weapon */
	 , (800224,  6073,      2)  /* Legendary Two Handed */
	 , (800224,  6069,      2)  /* Legendary Shield */
	 , (800224,  6048,      2)  /* Legendary Deception */
	 , (800224,  6070,      2)  /* Legendary Sneak Attack */
	 , (800224,  6053,      2)  /* Legendary Healing */
	 , (800224,  6052,      2)  /* Legendary Fletching */;
