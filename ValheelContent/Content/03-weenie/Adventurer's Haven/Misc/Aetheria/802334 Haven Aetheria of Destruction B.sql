DELETE FROM `weenie` WHERE `class_Id` = 802334;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802334, 'Haven Aethereia of Destruction3', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802334,   1,       2048) /* ItemType - Gem */
     , (802334,   3,          2) /* PaletteTemplate - Blue */
     , (802334,   5,         50) /* EncumbranceVal */
     , (802334,   9, 268435456) /* ValidLocations - SigilThree */
     , (802334,  11,          1) /* MaxStackSize */
     , (802334,  12,          1) /* StackSize */
     , (802334,  13,         50) /* StackUnitEncumbrance */
     , (802334,  15,       12000) /* StackUnitValue */
     , (802334,  16,          1) /* ItemUseable - No */
     , (802334,  18,          1) /* UiEffects - Magical */
     , (802334,  19,       12000) /* Value */
     , (802334,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802334, 106,        999) /* ItemSpellcraft */
     , (802334, 107,      50000) /* ItemCurMana */
     , (802334, 108,      50000) /* ItemMaxMana */
     , (802334, 158,          7) /* WieldRequirements - Level */
     , (802334, 159,          1) /* WieldSkillType - Axe */
     , (802334, 160,        500) /* WieldDifficulty */
     , (802334, 265,         36) /* EquipmentSetId - AetheriaDestruction */
     , (802334, 319,          5) /* ItemMaxLevel */
     , (802334, 320,          2) /* ItemXpStyle - ScalesWithLevel */
     , (802334, 370,         35) /* GearMaxHealth */
     , (802334, 371,         35) /* GearMaxHealth */
     , (802334, 372,         35) /* GearMaxHealth */
     , (802334, 373,         35) /* GearMaxHealth */
     , (802334, 374,         35) /* GearMaxHealth */
     , (802334, 375,         35) /* GearMaxHealth */
     , (802334, 376,         35) /* GearMaxHealth */
     , (802334, 379,         50) /* GearMaxHealth */;

INSERT INTO `weenie_properties_int64` (`object_Id`, `type`, `value`)
VALUES (802334,   4,  750000000) /* ItemTotalXp */
     , (802334,   5, 1000000000) /* ItemBaseXp */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802334,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802334,   5,  -0.001) /* ManaRate */
     , (802334,  39,     0.8) /* DefaultScale */
     , (802334, 156,    0.15) /* ProcSpellRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802334,   1, 'Haven Aetheria of Destruction') /* Name */
     , (802334,  16, 'A glowing ball of Coalesced Aetheria.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802334,   1,   33556258) /* Setup */
     , (802334,   3,  536870932) /* SoundTable */
     , (802334,   6,   67111919) /* PaletteBase */
     , (802334,   7,  268435723) /* ClothingBase */
     , (802334,   8,      100690930) /* Icon */
     , (802334,  22,  872415275) /* PhysicsEffectTable */
     , (802334,  50,      100690930) /* IconOverlay */
     , (802334,  55,       4331) /* ProcSpell - Incantation of Nullify All Magic Self */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (802334,  5238,      2)  /* Sigil of Destruction XV */;
