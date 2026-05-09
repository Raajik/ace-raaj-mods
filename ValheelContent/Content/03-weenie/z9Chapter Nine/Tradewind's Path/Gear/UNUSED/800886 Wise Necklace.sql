DELETE FROM `weenie` WHERE `class_Id` = 800886;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800886, 'Wise Necklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800886,   1,          8) /* ItemType - Jewelry */
     , (800886,   3,         21) /* PaletteTemplate - Gold */
     , (800886,   5,         90) /* EncumbranceVal */
     , (800886,   8,         60) /* Mass */
     , (800886,   9,      32768) /* ValidLocations - NeckWear */
     , (800886,  16,          1) /* ItemUseable - No */
     , (800886,  18,          1) /* UiEffects - Magical */
     , (800886,  19,         25) /* Value */
     , (800886,  33,          1) /* Bonded - Bonded */
     , (800886,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800886, 106,        200) /* ItemSpellcraft */
     , (800886, 107,        700) /* ItemCurMana */
     , (800886, 108,        700) /* ItemMaxMana */
     , (800886, 109,        300) /* ItemDifficulty */
     , (800886, 114,          1) /* Attuned - Attuned */
     , (800886, 265,         21) /* Wise */
     , (800886, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800886,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800886,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800886,   1, 'Wise Necklace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800886,   1,   33554688) /* Setup */
     , (800886,   3,  536870932) /* SoundTable */
     , (800886,   6,   67111919) /* PaletteBase */
     , (800886,   7,  268435750) /* ClothingBase */
     , (800886,   8,  100668682) /* Icon */
     , (800886,  22,  872415275) /* PhysicsEffectTable */
     , (800886,  36,  234881046) /* MutateFilter */;
