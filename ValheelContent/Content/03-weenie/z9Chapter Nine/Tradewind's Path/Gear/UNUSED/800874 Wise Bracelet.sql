DELETE FROM `weenie` WHERE `class_Id` = 800874;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800874, 'Wise Bracelet', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800874,   1,          8) /* ItemType - Jewelry */
     , (800874,   3,         21) /* PaletteTemplate - Gold */
     , (800874,   5,        150) /* EncumbranceVal */
     , (800874,   8,         60) /* Mass */
     , (800874,   9,     196608) /* ValidLocations - WristWear */
     , (800874,  16,          1) /* ItemUseable - No */
     , (800874,  18,          1) /* UiEffects - Magical */
     , (800874,  19,         25) /* Value */
     , (800874,  33,          1) /* Bonded - Bonded */
     , (800874,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800874, 106,        200) /* ItemSpellcraft */
     , (800874, 107,        700) /* ItemCurMana */
     , (800874, 108,        700) /* ItemMaxMana */
     , (800874, 109,        300) /* ItemDifficulty */
     , (800874, 114,          1) /* Attuned - Attuned */
     , (800874, 265,         21) /* Wise */
     , (800874, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800874,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800874,  39,    0.69) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800874,   1, 'Wise Bracelet') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800874,   1,   33554682) /* Setup */
     , (800874,   3,  536870932) /* SoundTable */
     , (800874,   6,   67111919) /* PaletteBase */
     , (800874,   7,  268435739) /* ClothingBase */
     , (800874,   8,  100668622) /* Icon */
     , (800874,  22,  872415275) /* PhysicsEffectTable */
     , (800874,  36,  234881046) /* MutateFilter */;
