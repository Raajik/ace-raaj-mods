DELETE FROM `weenie` WHERE `class_Id` = 803623;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803623, 'LuckyWhiteRabbitUltraFoot', 2, '2005-02-09 10:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803623,   1,          2) /* ItemType - Armor */
     , (803623,   3,         20) /* PaletteTemplate - Silver */
     , (803623,   4,      32768) /* ClothingPriority - Hands */
     , (803623,   5,          1) /* EncumbranceVal */
     , (803623,   8,          1) /* Mass */
     , (803623,   9,         32) /* ValidLocations - HandWear */
     , (803623,  16,          1) /* ItemUseable - No */
     , (803623,  18,          1) /* UiEffects - Magical */
     , (803623,  19,          1) /* Value */
     , (803623,  27,          2) /* ArmorType - Leather */
     , (803623,  28,       3700) /* ArmorLevel */
     , (803623,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803623, 106,        200) /* ItemSpellcraft */
     , (803623, 107,        999) /* ItemCurMana */
     , (803623, 108,        999) /* ItemMaxMana */
     , (803623, 150,        103) /* HookPlacement - Hook */
     , (803623, 151,          2) /* HookType - Wall */
     , (803623, 370,        250) /* GearMaxHealth */
     , (803623, 371,        250) /* GearMaxHealth */
     , (803623, 372,        250) /* GearMaxHealth */
     , (803623, 373,        250) /* GearMaxHealth */
     , (803623, 379,        250) /* GearMaxHealth */
	 , (803623, 9041,         4) /* Mirra Sockets */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803623,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803623,   5,   -0.01) /* ManaRate */
     , (803623,  12,    0.86) /* Shade */
     , (803623,  13,       2) /* ArmorModVsSlash */
     , (803623,  14,       2) /* ArmorModVsPierce */
     , (803623,  15,       2) /* ArmorModVsBludgeon */
     , (803623,  16,       2) /* ArmorModVsCold */
     , (803623,  17,       2) /* ArmorModVsFire */
     , (803623,  18,       2) /* ArmorModVsAcid */
     , (803623,  19,       2) /* ArmorModVsElectric */
     , (803623, 110,       1) /* BulkMod */
     , (803623, 111,       1) /* SizeMod */
     , (803623, 156,    0.25) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803623,   1, 'Lucky White Rabbit Ultra Foot') /* Name */
     , (803623,  15, 'It is really a Rabbit Foot.') /* ShortDesc */
     , (803623,  16, 'It may look like a Mattekar Arm Guard, but it is actually a Lucky Rabbit Foot from White Rabbit Ultra. The left one, specifically.') /* LongDesc */
     , (803623,  33, 'LuckyWhiteRabbitUltraFoot') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803623,   1,   33557017) /* Setup */
     , (803623,   3,  536870932) /* SoundTable */
     , (803623,   6,   67108990) /* PaletteBase */
     , (803623,   7,  268436172) /* ClothingBase */
     , (803623,   8,  100671516) /* Icon */
     , (803623,  22,  872415275) /* PhysicsEffectTable */
	 /*, (803623,  55,       3902) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803623,   2098,      2)  /* Invulnerability Self IV */
     , (803623,   2928,      2)  /* Invulnerability Self IV */
     , (803623,   2929,      2)  /* Invulnerability Self IV */
     , (803623,   2930,      2)  /* Invulnerability Self IV */
     , (803623,   2932,      2)  /* Invulnerability Self IV */
     , (803623,   2933,      2)  /* Invulnerability Self IV */
     , (803623,   2934,      2)  /* Invulnerability Self IV */
     , (803623,   2384,      2)  /* Invulnerability Self IV */
     , (803623,   2382,      2)  /* Invulnerability Self IV */
     , (803623,   2424,      2)  /* Invulnerability Self IV */;
