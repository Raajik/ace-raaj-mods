DELETE FROM `weenie` WHERE `class_Id` = 800861;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800861, 'Hearty Ring', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800861,   1,          8) /* ItemType - Jewelry */
     , (800861,   3,         21) /* PaletteTemplate - Gold */
     , (800861,   5,         15) /* EncumbranceVal */
     , (800861,   8,         10) /* Mass */
     , (800861,   9,     786432) /* ValidLocations - FingerWear */
     , (800861,  16,          1) /* ItemUseable - No */
     , (800861,  18,          1) /* UiEffects - Magical */
     , (800861,  19,         25) /* Value */
     , (800861,  33,          1) /* Bonded - Bonded */
     , (800861,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800861, 106,        200) /* ItemSpellcraft */
     , (800861, 107,        700) /* ItemCurMana */
     , (800861, 108,        700) /* ItemMaxMana */
     , (800861, 109,        300) /* ItemDifficulty */
     , (800861, 114,          1) /* Attuned - Attuned */
     , (800861, 265,         19) /* Wise */
     , (800861, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800861,  22, True ) /* Inscribable */
     , (800861,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800861,   5,  -0.033) /* ManaRate */
     , (800861,  39,     0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800861,   1, 'Hearty Ring') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800861,   1,   33554691) /* Setup */
     , (800861,   3,  536870932) /* SoundTable */
     , (800861,   6,   67111919) /* PaletteBase */
     , (800861,   7,  268435753) /* ClothingBase */
     , (800861,   8,  100677349) /* Icon */
     , (800861,  22,  872415275) /* PhysicsEffectTable */;
