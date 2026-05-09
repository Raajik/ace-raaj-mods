DELETE FROM `weenie` WHERE `class_Id` = 800296;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800296, 'Bael''Zharon Infused Girth', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800296,   1,          2) /* ItemType - Armor */
     , (800296,   3,         14) /* PaletteTemplate - Red */
     , (800296,   4,       2048) /* ClothingPriority - OuterwearAbdomen */
     , (800296,   5,        150) /* EncumbranceVal */
     , (800296,   8,        325) /* Mass */
     , (800296,   9,       1024) /* ValidLocations - AbdomenArmor */
     , (800296,  16,          1) /* ItemUseable - No */
     , (800296,  18,          1) /* UiEffects - Magical */
     , (800296,  19,          1) /* Value */
     , (800296,  27,         32) /* ArmorType - Metal */
     , (800296,  28,        800) /* ArmorLevel */
     , (800296,  33,          1) /* Bonded - Bonded */
     , (800296,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800296, 106,        300) /* ItemSpellcraft */
     , (800296, 107,       4000) /* ItemCurMana */
     , (800296, 108,       4000) /* ItemMaxMana */
     , (800296, 109,        300) /* ItemDifficulty */
     , (800296, 114,          1) /* Attuned - Attuned */
     , (800296, 158,          7) /* WieldRequirements - RawSkill */
     , (800296, 159,          1) /* WieldSkillType - WarMagic */
     , (800296, 160,        180) /* WieldDifficulty */
     , (800296, 384,          1) /* PK Resist */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800296,  22, True ) /* Inscribable */
     , (800296,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800296,   5,    -0.5) /* ManaRate */
     , (800296,  12,     0.5) /* Shade */
     , (800296,  13,     1.2) /* ArmorModVsSlash */
     , (800296,  14,     1.2) /* ArmorModVsPierce */
     , (800296,  15,     1.2) /* ArmorModVsBludgeon */
     , (800296,  16,     1.2) /* ArmorModVsCold */
     , (800296,  17,     1.2) /* ArmorModVsFire */
     , (800296,  18,     1.2) /* ArmorModVsAcid */
     , (800296,  19,     1.2) /* ArmorModVsElectric */
     , (800296, 110,       1) /* BulkMod */
     , (800296, 111,       1) /* SizeMod */
     , (800296, 165,     1.2) /* ArmorModVsNether */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800296,   1, 'Bael''Zharon Infused Girth') /* Name */
     , (800296,  16, 'A girth forged in the fires of Bael''Zharon''s mountain.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800296,   1,   33554647) /* Setup */
     , (800296,   3,  536870932) /* SoundTable */
     , (800296,   6,   67108990) /* PaletteBase */
     , (800296,   7,  268436556) /* ClothingBase */
     , (800296,   8,  100674129) /* Icon */
     , (800296,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800296,  6072,      2)  /* Legendary Heavy Weapon */
     , (800296,  6047,      2)  /* Legendary Finesse Weapon */
	 , (800296,  6050,      2)  /* Legendary Dual Weild */
	 , (800296,  6044,      2)  /* Legendary Missile Weapon */
	 , (800296,  6073,      2)  /* Legendary Two Handed */
	 , (800296,  6069,      2)  /* Legendary Shield */
	 , (800296,  6048,      2)  /* Legendary Deception */
	 , (800296,  6070,      2)  /* Legendary Sneak Attack */
	 , (800296,  6053,      2)  /* Legendary Healing */
	 , (800296,  6052,      2)  /* Legendary Fletching */;