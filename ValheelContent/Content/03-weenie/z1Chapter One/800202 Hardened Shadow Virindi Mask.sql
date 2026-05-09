DELETE FROM `weenie` WHERE `class_Id` = 800202;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800202, 'Hardened Shadow Virindi Mask', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800202,   1,          2) /* ItemType - Armor */
     , (800202,   3,          3) /* PaletteTemplate - BluePurple */
     , (800202,   4,      16384) /* ClothingPriority - Head */
     , (800202,   5,        300) /* EncumbranceVal */
     , (800202,   8,         75) /* Mass */
     , (800202,   9,          1) /* ValidLocations - HeadWear */
     , (800202,  16,          1) /* ItemUseable - No */
     , (800202,  18,          1) /* UiEffects - Magical */
     , (800202,  19,       2000) /* Value */
     , (800202,  27,          2) /* ArmorType - Leather */
     , (800202,  28,        180) /* ArmorLevel */
     , (800202,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800202, 106,        200) /* ItemSpellcraft */
     , (800202, 107,        200) /* ItemCurMana */
     , (800202, 108,        200) /* ItemMaxMana */
     , (800202, 109,        120) /* ItemDifficulty */
     , (800202, 150,        103) /* HookPlacement - Hook */
     , (800202, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800202,  22, True ) /* Inscribable */
     , (800202,  23, True ) /* DestroyOnSell */
     , (800202, 100, True ) /* Dyable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800202,   5,  -0.033) /* ManaRate */
     , (800202,  12,    0.66) /* Shade */
     , (800202,  13,       1) /* ArmorModVsSlash */
     , (800202,  14,       1) /* ArmorModVsPierce */
     , (800202,  15,       1) /* ArmorModVsBludgeon */
     , (800202,  16,       2) /* ArmorModVsCold */
     , (800202,  17,       1) /* ArmorModVsFire */
     , (800202,  18,       1) /* ArmorModVsAcid */
     , (800202,  19,       2) /* ArmorModVsElectric */
     , (800202, 110,       1) /* BulkMod */
     , (800202, 111,       1) /* SizeMod */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800202,   1, 'Hardened Shadow Virindi Mask') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800202,   1,   33556827) /* Setup */
     , (800202,   3,  536870932) /* SoundTable */
     , (800202,   6,   67108990) /* PaletteBase */
     , (800202,   7,  268436258) /* ClothingBase */
     , (800202,   8,  100671028) /* Icon */
     , (800202,  22,  872415275) /* PhysicsEffectTable */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (800202,   247,      2)  /* Invulnerability Self IV */;
