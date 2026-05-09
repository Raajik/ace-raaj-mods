DELETE FROM `weenie` WHERE `class_Id` = 880024;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (880024, 'Crums Locket', 1, '2023-02-25 12:44:54') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (880024,   1,          8) /* ItemType - Jewelry */
     , (880024,   3,         21) /* PaletteTemplate - Gold */
     , (880024,   5,         45) /* EncumbranceVal */
     , (880024,   8,         30) /* Mass */
     , (880024,   9,      32768) /* ValidLocations - NeckWear */
     , (880024,  16,          1) /* ItemUseable - No */
     , (880024,  18,          1) /* UiEffects - Magical */
     , (880024,  19,          1) /* Value */
     , (880024,  33,          1) /* Bonded */
     , (880024,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (880024, 106,        150) /* ItemSpellcraft */
     , (880024, 107,      99999) /* ItemCurMana */
     , (880024, 108,      99999) /* ItemMaxMana */
     , (880024, 109,         15) /* ItemDifficulty */
     , (880024, 114,          1) /* Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (880024,  22, True ) /* Inscribable */
     , (880024,  84, True ) /* IgnoreCloIcons */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (880024,   0,       0) /*  */
     , (880024,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (880024,   1, 'Crums Locket') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (880024,   1, 0x02000101) /* Setup */
     , (880024,   3, 0x20000014) /* SoundTable */
     , (880024,   6, 0x04000BEF) /* PaletteBase */
     , (880024,   7, 0x10000125) /* ClothingBase */
     , (880024,   8, 0x06002F8C) /* Icon */
     , (880024,  22, 0x3400002B) /* PhysicsEffectTable */
     , (880024,  36, 0x0E000016) /* MutateFilter */;

INSERT INTO `weenie_properties_spell_book` (`object_Id`, `spell`, `probability`)
VALUES (880024,  3963,      2) /* Epic Coordination */
     , (880024,  3964,      2) /* Epic Focus */
     , (880024,  3965,      2) /* Epic Strength */
     , (880024,  4019,      2) /* Epic Quickness */
     , (880024,  4226,      2) /* Epic Endurance */
     , (880024,  4227,      2) /* Epic Willpower */
     , (880024,  4232,      2) /* Epic Leadership */
     , (880024,  4696,      2) /* Epic Invulnerability */
     , (880024,  4684,      2) /* Epic Arcane Prowess */
     , (880024,  4692,      2) /* Epic Fealty */;

