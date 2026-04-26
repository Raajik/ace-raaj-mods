DELETE FROM `weenie` WHERE `class_Id` = 800883;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800883, 'Crafter''s Necklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800883,   1,          8) /* ItemType - Jewelry */
     , (800883,   3,         21) /* PaletteTemplate - Gold */
     , (800883,   5,         90) /* EncumbranceVal */
     , (800883,   8,         60) /* Mass */
     , (800883,   9,      32768) /* ValidLocations - NeckWear */
     , (800883,  16,          1) /* ItemUseable - No */
     , (800883,  18,          1) /* UiEffects - Magical */
     , (800883,  19,         25) /* Value */
     , (800883,  33,          1) /* Bonded - Bonded */
     , (800883,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800883, 106,        200) /* ItemSpellcraft */
     , (800883, 107,        700) /* ItemCurMana */
     , (800883, 108,        700) /* ItemMaxMana */
     , (800883, 109,        300) /* ItemDifficulty */
     , (800883, 114,          1) /* Attuned - Attuned */
     , (800883, 265,         18) /* Wise */
     , (800883, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800883,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800883,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800883,   1, 'Crafter''s Necklace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800883,   1,   33554688) /* Setup */
     , (800883,   3,  536870932) /* SoundTable */
     , (800883,   6,   67111919) /* PaletteBase */
     , (800883,   7,  268435750) /* ClothingBase */
     , (800883,   8,  100668682) /* Icon */
     , (800883,  22,  872415275) /* PhysicsEffectTable */
     , (800883,  36,  234881046) /* MutateFilter */;
