DELETE FROM `weenie` WHERE `class_Id` = 800858;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800858, 'Ring of Defenders', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800858,   1,          8) /* ItemType - Jewelry */
     , (800858,   3,         21) /* PaletteTemplate - Gold */
     , (800858,   5,         15) /* EncumbranceVal */
     , (800858,   8,         10) /* Mass */
     , (800858,   9,     786432) /* ValidLocations - FingerWear */
     , (800858,  16,          1) /* ItemUseable - No */
     , (800858,  18,          1) /* UiEffects - Magical */
     , (800858,  19,       25) /* Value */
     , (800858,  33,          1) /* Bonded - Bonded */
     , (800858,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800858, 106,        200) /* ItemSpellcraft */
     , (800858, 107,        700) /* ItemCurMana */
     , (800858, 108,        700) /* ItemMaxMana */
     , (800858, 109,        300) /* ItemDifficulty */
     , (800858, 114,          1) /* Attuned - Attuned */
     , (800858, 265,         16) /* Wise */
     , (800858, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800858,  22, True ) /* Inscribable */
     , (800858,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800858,   5,  -0.033) /* ManaRate */
     , (800858,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800858,   1, 'Ring of Defenders') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800858,   1,   33554691) /* Setup */
     , (800858,   3,  536870932) /* SoundTable */
     , (800858,   6,   67111919) /* PaletteBase */
     , (800858,   7,  268435753) /* ClothingBase */
     , (800858,   8,  100677349) /* Icon */
     , (800858,  22,  872415275) /* PhysicsEffectTable */;
