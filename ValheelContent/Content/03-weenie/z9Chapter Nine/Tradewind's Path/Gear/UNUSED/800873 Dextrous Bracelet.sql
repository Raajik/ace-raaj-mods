DELETE FROM `weenie` WHERE `class_Id` = 800873;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800873, 'Dextrous Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800873,   1,          8) /* ItemType - Jewelry */
     , (800873,   3,         21) /* PaletteTemplate - Gold */
     , (800873,   5,        150) /* EncumbranceVal */
     , (800873,   8,         60) /* Mass */
     , (800873,   9,     196608) /* ValidLocations - WristWear */
     , (800873,  16,          1) /* ItemUseable - No */
     , (800873,  18,          1) /* UiEffects - Magical */
     , (800873,  19,         25) /* Value */
     , (800873,  33,          1) /* Bonded - Bonded */
     , (800873,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800873, 106,        200) /* ItemSpellcraft */
     , (800873, 107,        700) /* ItemCurMana */
     , (800873, 108,        700) /* ItemMaxMana */
     , (800873, 109,        300) /* ItemDifficulty */
     , (800873, 114,          1) /* Attuned - Attuned */
     , (800873, 265,         20) /* Wise */
     , (800873, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800873,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800873,  39,    0.69) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800873,   1, 'Dextrous Bracelet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800873,   1,   33554682) /* Setup */
     , (800873,   3,  536870932) /* SoundTable */
     , (800873,   6,   67111919) /* PaletteBase */
     , (800873,   7,  268435739) /* ClothingBase */
     , (800873,   8,  100668622) /* Icon */
     , (800873,  22,  872415275) /* PhysicsEffectTable */
     , (800873,  36,  234881046) /* MutateFilter */;
