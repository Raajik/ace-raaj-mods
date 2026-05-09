DELETE FROM `weenie` WHERE `class_Id` = 800865;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800865, 'Reinforced Ring', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800865,   1,          8) /* ItemType - Jewelry */
     , (800865,   3,         21) /* PaletteTemplate - Gold */
     , (800865,   5,         15) /* EncumbranceVal */
     , (800865,   8,         10) /* Mass */
     , (800865,   9,     786432) /* ValidLocations - FingerWear */
     , (800865,  16,          1) /* ItemUseable - No */
     , (800865,  18,          1) /* UiEffects - Magical */
     , (800865,  19,         25) /* Value */
     , (800865,  33,          1) /* Bonded - Bonded */
     , (800865,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800865, 106,        200) /* ItemSpellcraft */
     , (800865, 107,        700) /* ItemCurMana */
     , (800865, 108,        700) /* ItemMaxMana */
     , (800865, 109,        300) /* ItemDifficulty */
     , (800865, 114,          1) /* Attuned - Attuned */
     , (800865, 265,         24) /* Wise */
     , (800865, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800865,  22, True ) /* Inscribable */
     , (800865,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800865,   5,  -0.033) /* ManaRate */
     , (800865,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800865,   1, 'Reinforced Ring') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800865,   1,   33554691) /* Setup */
     , (800865,   3,  536870932) /* SoundTable */
     , (800865,   6,   67111919) /* PaletteBase */
     , (800865,   7,  268435753) /* ClothingBase */
     , (800865,   8,  100677349) /* Icon */
     , (800865,  22,  872415275) /* PhysicsEffectTable */;
