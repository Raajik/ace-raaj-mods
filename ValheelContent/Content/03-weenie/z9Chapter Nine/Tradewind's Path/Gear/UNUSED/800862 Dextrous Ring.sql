DELETE FROM `weenie` WHERE `class_Id` = 800862;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800862, 'Dextrous Ring', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800862,   1,          8) /* ItemType - Jewelry */
     , (800862,   3,         21) /* PaletteTemplate - Gold */
     , (800862,   5,         15) /* EncumbranceVal */
     , (800862,   8,         10) /* Mass */
     , (800862,   9,     786432) /* ValidLocations - FingerWear */
     , (800862,  16,          1) /* ItemUseable - No */
     , (800862,  18,          1) /* UiEffects - Magical */
     , (800862,  19,         25) /* Value */
     , (800862,  33,          1) /* Bonded - Bonded */
     , (800862,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800862, 106,        200) /* ItemSpellcraft */
     , (800862, 107,        700) /* ItemCurMana */
     , (800862, 108,        700) /* ItemMaxMana */
     , (800862, 109,        300) /* ItemDifficulty */
     , (800862, 114,          1) /* Attuned - Attuned */
     , (800862, 265,         20) /* Wise */
     , (800862, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800862,  22, True ) /* Inscribable */
     , (800862,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800862,   5,  -0.033) /* ManaRate */
     , (800862,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800862,   1, 'Dextrous Ring') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800862,   1,   33554691) /* Setup */
     , (800862,   3,  536870932) /* SoundTable */
     , (800862,   6,   67111919) /* PaletteBase */
     , (800862,   7,  268435753) /* ClothingBase */
     , (800862,   8,  100677349) /* Icon */
     , (800862,  22,  872415275) /* PhysicsEffectTable */;
