DELETE FROM `weenie` WHERE `class_Id` = 800856;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800856, 'Ring of The Soldier', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800856,   1,          8) /* ItemType - Jewelry */
     , (800856,   3,         21) /* PaletteTemplate - Gold */
     , (800856,   5,         15) /* EncumbranceVal */
     , (800856,   8,         10) /* Mass */
     , (800856,   9,     786432) /* ValidLocations - FingerWear */
     , (800856,  16,          1) /* ItemUseable - No */
     , (800856,  18,          1) /* UiEffects - Magical */
     , (800856,  19,       25) /* Value */
     , (800856,  33,          1) /* Bonded - Bonded */
     , (800856,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800856, 106,        200) /* ItemSpellcraft */
     , (800856, 107,        700) /* ItemCurMana */
     , (800856, 108,        700) /* ItemMaxMana */
     , (800856, 109,        300) /* ItemDifficulty */
     , (800856, 114,          1) /* Attuned - Attuned */
     , (800856, 265,         13) /* Wise */
     , (800856, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800856,  22, True ) /* Inscribable */
     , (800856,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800856,   5,  -0.033) /* ManaRate */
     , (800856,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800856,   1, 'Ring of The Soldier') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800856,   1,   33554691) /* Setup */
     , (800856,   3,  536870932) /* SoundTable */
     , (800856,   6,   67111919) /* PaletteBase */
     , (800856,   7,  268435753) /* ClothingBase */
     , (800856,   8,  100677349) /* Icon */
     , (800856,  22,  872415275) /* PhysicsEffectTable */;
