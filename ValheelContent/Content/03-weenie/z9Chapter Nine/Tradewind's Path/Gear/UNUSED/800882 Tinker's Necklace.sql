DELETE FROM `weenie` WHERE `class_Id` = 800882;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800882, 'Tinker''s Necklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800882,   1,          8) /* ItemType - Jewelry */
     , (800882,   3,         21) /* PaletteTemplate - Gold */
     , (800882,   5,         90) /* EncumbranceVal */
     , (800882,   8,         60) /* Mass */
     , (800882,   9,      32768) /* ValidLocations - NeckWear */
     , (800882,  16,          1) /* ItemUseable - No */
     , (800882,  18,          1) /* UiEffects - Magical */
     , (800882,  19,         25) /* Value */
     , (800882,  33,          1) /* Bonded - Bonded */
     , (800882,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800882, 106,        200) /* ItemSpellcraft */
     , (800882, 107,        700) /* ItemCurMana */
     , (800882, 108,        700) /* ItemMaxMana */
     , (800882, 109,        300) /* ItemDifficulty */
     , (800882, 114,          1) /* Attuned - Attuned */
     , (800882, 265,         17) /* Wise */
     , (800882, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800882,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800882,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800882,   1, 'Tinker''s Necklace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800882,   1,   33554688) /* Setup */
     , (800882,   3,  536870932) /* SoundTable */
     , (800882,   6,   67111919) /* PaletteBase */
     , (800882,   7,  268435750) /* ClothingBase */
     , (800882,   8,  100668682) /* Icon */
     , (800882,  22,  872415275) /* PhysicsEffectTable */
     , (800882,  36,  234881046) /* MutateFilter */;
