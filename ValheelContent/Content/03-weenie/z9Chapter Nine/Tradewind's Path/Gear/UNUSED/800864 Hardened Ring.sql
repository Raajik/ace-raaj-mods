DELETE FROM `weenie` WHERE `class_Id` = 800864;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800864, 'Hardened Ring', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800864,   1,          8) /* ItemType - Jewelry */
     , (800864,   3,         21) /* PaletteTemplate - Gold */
     , (800864,   5,         15) /* EncumbranceVal */
     , (800864,   8,         10) /* Mass */
     , (800864,   9,     786432) /* ValidLocations - FingerWear */
     , (800864,  16,          1) /* ItemUseable - No */
     , (800864,  18,          1) /* UiEffects - Magical */
     , (800864,  19,         25) /* Value */
     , (800864,  33,          1) /* Bonded - Bonded */
     , (800864,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800864, 106,        200) /* ItemSpellcraft */
     , (800864, 107,        700) /* ItemCurMana */
     , (800864, 108,        700) /* ItemMaxMana */
     , (800864, 109,        300) /* ItemDifficulty */
     , (800864, 114,          1) /* Attuned - Attuned */
     , (800864, 265,         23) /* Wise */
     , (800864, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800864,  22, True ) /* Inscribable */
     , (800864,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800864,   5,  -0.033) /* ManaRate */
     , (800864,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800864,   1, 'Hardened Ring') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800864,   1,   33554691) /* Setup */
     , (800864,   3,  536870932) /* SoundTable */
     , (800864,   6,   67111919) /* PaletteBase */
     , (800864,   7,  268435753) /* ClothingBase */
     , (800864,   8,  100677349) /* Icon */
     , (800864,  22,  872415275) /* PhysicsEffectTable */;
