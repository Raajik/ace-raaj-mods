DELETE FROM `weenie` WHERE `class_Id` = 802329;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802329, 'Haven Aethereia of Destruction2', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802329,   1,       2048) /* ItemType - Gem */
     , (802329,   3,          2) /* PaletteTemplate - Blue */
     , (802329,   5,         50) /* EncumbranceVal */
     , (802329,   9, 536870912) /* ValidLocations - SigilThree */
     , (802329,  11,          1) /* MaxStackSize */
     , (802329,  12,          1) /* StackSize */
     , (802329,  13,         50) /* StackUnitEncumbrance */
     , (802329,  15,       12000) /* StackUnitValue */
     , (802329,  16,          1) /* ItemUseable - No */
     , (802329,  18,          1) /* UiEffects - Magical */
     , (802329,  19,       12000) /* Value */
     , (802329,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802329, 106,        999) /* ItemSpellcraft */
     , (802329, 107,      50000) /* ItemCurMana */
     , (802329, 108,      50000) /* ItemMaxMana */
     , (802329, 158,          7) /* WieldRequirements - Level */
     , (802329, 159,          1) /* WieldSkillType - Axe */
     , (802329, 160,        500) /* WieldDifficulty */
     , (802329, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (802329, 319,          5) /* ItemMaxLevel */
     , (802329, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802329, 370,         35) /* GearMaxHealth */
     , (802329, 371,         35) /* GearMaxHealth */
     , (802329, 372,         35) /* GearMaxHealth */
     , (802329, 373,         35) /* GearMaxHealth */
     , (802329, 374,         35) /* GearMaxHealth */
     , (802329, 375,         35) /* GearMaxHealth */
     , (802329, 376,         35) /* GearMaxHealth */
     , (802329, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802329,   4,  750000000) /* ItemTotalXp */
     , (802329,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802329,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802329,   5,  -0.001) /* ManaRate */
     , (802329,  39,     0.8) /* DefaultScale */
     , (802329, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802329,   1, 'Haven Aetheria of Destruction') /* Name */
     , (802329,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802329,   1,   33556258) /* Setup */
     , (802329,   3,  536870932) /* SoundTable */
     , (802329,   6,   67111919) /* PaletteBase */
     , (802329,   7,  268435723) /* ClothingBase */
     , (802329,   8,      100690931) /* Icon */
     , (802329,  22,  872415275) /* PhysicsEffectTable */
     , (802329,  50,      100690931) /* IconOverlay */
     , (802329,  55,       2933) /* ProcSpell - Incantation of Nullify All Magic Self */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802329,  5238,      2)  /* Sigil of Destruction XV */;
