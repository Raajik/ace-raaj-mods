DELETE FROM `weenie` WHERE `class_Id` = 803918;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803918, 'Tradewind Necklace of Vitality', 1, '2024-04-22 10:07:26') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803918,   1,          8) /* ItemType - Jewelry */
     , (803918,   3,          1) /* PaletteTemplate - AquaBlue */
     , (803918,   5,        100) /* EncumbranceVal */
     , (803918,   8,         90) /* Mass */
     , (803918,   9,      32768) /* ValidLocations - NeckWear */
     , (803918,  16,          1) /* ItemUseable - No */
     , (803918,  19,      50000) /* Value */
     , (803918,  33,          1) /* Bonded - Bonded */
     , (803918,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (803918, 106,        999) /* ItemSpellcraft */
     , (803918, 107,       3000) /* ItemCurMana */
     , (803918, 108,       3000) /* ItemMaxMana */
     , (803918, 109,          0) /* ItemDifficulty */
     , (803918, 151,          2) /* HookType - Wall */
	 , (803918, 158,          7) /* WieldRequirements - Level */
     , (803918, 160,      10000) /* WieldDifficulty */
     , (803918, 169,  118162702) /* TsysMutationData */
     , (803918, 370,       1000) /* GearMaxHealth */
     , (803918, 371,       1000) /* GearMaxHealth */
     , (803918, 372,       1000) /* GearMaxHealth */
     , (803918, 373,       1000) /* GearMaxHealth */
     , (803918, 376,       1250) /* GearMaxHealth */
     , (803918, 379,       1250) /* GearMaxHealth */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803918,  11, True ) /* IgnoreCollisions */
     , (803918,  13, True ) /* Ethereal */
     , (803918,  14, True ) /* GravityStatus */
     , (803918,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803918,   5,  -0.033) /* ManaRate */
     , (803918,  12,    0.66) /* Shade */
     , (803918,  39,     0.9) /* DefaultScale */
     , (803918, 156,     0.5) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803918,   1, 'Tradewind Necklace of Vitality') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803918,   1,   33557216) /* Setup */
     , (803918,   3,  536870932) /* SoundTable */
     , (803918,   6,   67111919) /* PaletteBase */
     , (803918,   7,  268435749) /* ClothingBase */
     , (803918,   8,  100671831) /* Icon */
     , (803918,  22,  872415275) /* PhysicsEffectTable */
     , (803918,  52,  100667892) /* IconUnderlay */
	 , (803918,  55,       4644) /* ProcSpell - Incantation of Drain Health */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (803918,  4355,      2) /* Incantation of Arcane Enlightenment Self */
     , (803918,  4373,      2) /* Incantation of Item Enchantment Mastery Self */;