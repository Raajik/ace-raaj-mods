DELETE FROM `weenie` WHERE `class_Id` = 800890;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800890, 'Ring of the Archer', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800890,   1,          8) /* ItemType - Jewelry */
     , (800890,   3,         21) /* PaletteTemplate - Gold */
     , (800890,   5,         15) /* EncumbranceVal */
     , (800890,   8,         10) /* Mass */
     , (800890,   9,     786432) /* ValidLocations - FingerWear */
     , (800890,  16,          1) /* ItemUseable - No */
     , (800890,  18,          1) /* UiEffects - Magical */
     , (800890,  19,       25) /* Value */
     , (800890,  33,          1) /* Bonded - Bonded */
     , (800890,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800890, 106,        200) /* ItemSpellcraft */
     , (800890, 107,        700) /* ItemCurMana */
     , (800890, 108,        700) /* ItemMaxMana */
     , (800890, 109,        300) /* ItemDifficulty */
     , (800890, 114,          1) /* Attuned - Attuned */
     , (800890, 265,         15) /* Wise */
     , (800890, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800890,  22, True ) /* Inscribable */
     , (800890,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800890,   5,  -0.033) /* ManaRate */
     , (800890,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800890,   1, 'Ring of the Archer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800890,   1,   33554691) /* Setup */
     , (800890,   3,  536870932) /* SoundTable */
     , (800890,   6,   67111919) /* PaletteBase */
     , (800890,   7,  268435753) /* ClothingBase */
     , (800890,   8,  100677349) /* Icon */
     , (800890,  22,  872415275) /* PhysicsEffectTable */;
