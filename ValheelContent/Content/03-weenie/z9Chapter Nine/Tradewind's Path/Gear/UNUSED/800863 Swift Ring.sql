DELETE FROM `weenie` WHERE `class_Id` = 800863;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800863, 'Swift Ring', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800863,   1,          8) /* ItemType - Jewelry */
     , (800863,   3,         21) /* PaletteTemplate - Gold */
     , (800863,   5,         15) /* EncumbranceVal */
     , (800863,   8,         10) /* Mass */
     , (800863,   9,     786432) /* ValidLocations - FingerWear */
     , (800863,  16,          1) /* ItemUseable - No */
     , (800863,  18,          1) /* UiEffects - Magical */
     , (800863,  19,         25) /* Value */
     , (800863,  33,          1) /* Bonded - Bonded */
     , (800863,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800863, 106,        200) /* ItemSpellcraft */
     , (800863, 107,        700) /* ItemCurMana */
     , (800863, 108,        700) /* ItemMaxMana */
     , (800863, 109,        300) /* ItemDifficulty */
     , (800863, 114,          1) /* Attuned - Attuned */
     , (800863, 265,         22) /* Wise */
     , (800863, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800863,  22, True ) /* Inscribable */
     , (800863,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800863,   5,  -0.033) /* ManaRate */
     , (800863,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800863,   1, 'Swift Ring') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800863,   1,   33554691) /* Setup */
     , (800863,   3,  536870932) /* SoundTable */
     , (800863,   6,   67111919) /* PaletteBase */
     , (800863,   7,  268435753) /* ClothingBase */
     , (800863,   8,  100677349) /* Icon */
     , (800863,  22,  872415275) /* PhysicsEffectTable */;
