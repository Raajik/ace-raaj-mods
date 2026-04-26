DELETE FROM `weenie` WHERE `class_Id` = 800880;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800880, 'Archer''s Necklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800880,   1,          8) /* ItemType - Jewelry */
     , (800880,   3,         21) /* PaletteTemplate - Gold */
     , (800880,   5,         90) /* EncumbranceVal */
     , (800880,   8,         60) /* Mass */
     , (800880,   9,      32768) /* ValidLocations - NeckWear */
     , (800880,  16,          1) /* ItemUseable - No */
     , (800880,  18,          1) /* UiEffects - Magical */
     , (800880,  19,         25) /* Value */
     , (800880,  33,          1) /* Bonded - Bonded */
     , (800880,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800880, 106,        200) /* ItemSpellcraft */
     , (800880, 107,        700) /* ItemCurMana */
     , (800880, 108,        700) /* ItemMaxMana */
     , (800880, 109,        300) /* ItemDifficulty */
     , (800880, 114,          1) /* Attuned - Attuned */
     , (800880, 265,         15) /* Wise */
     , (800880, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800880,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800880,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800880,   1, 'Archer''s Necklace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800880,   1,   33554688) /* Setup */
     , (800880,   3,  536870932) /* SoundTable */
     , (800880,   6,   67111919) /* PaletteBase */
     , (800880,   7,  268435750) /* ClothingBase */
     , (800880,   8,  100668682) /* Icon */
     , (800880,  22,  872415275) /* PhysicsEffectTable */
     , (800880,  36,  234881046) /* MutateFilter */;
