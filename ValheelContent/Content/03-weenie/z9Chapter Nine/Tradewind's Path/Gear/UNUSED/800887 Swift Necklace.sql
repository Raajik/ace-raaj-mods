DELETE FROM `weenie` WHERE `class_Id` = 800887;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800887, 'Swift Necklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800887,   1,          8) /* ItemType - Jewelry */
     , (800887,   3,         21) /* PaletteTemplate - Gold */
     , (800887,   5,         90) /* EncumbranceVal */
     , (800887,   8,         60) /* Mass */
     , (800887,   9,      32768) /* ValidLocations - NeckWear */
     , (800887,  16,          1) /* ItemUseable - No */
     , (800887,  18,          1) /* UiEffects - Magical */
     , (800887,  19,         25) /* Value */
     , (800887,  33,          1) /* Bonded - Bonded */
     , (800887,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800887, 106,        200) /* ItemSpellcraft */
     , (800887, 107,        700) /* ItemCurMana */
     , (800887, 108,        700) /* ItemMaxMana */
     , (800887, 109,        300) /* ItemDifficulty */
     , (800887, 114,          1) /* Attuned - Attuned */
     , (800887, 265,         22) /* Wise */
     , (800887, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800887,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800887,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800887,   1, 'Swift Necklace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800887,   1,   33554688) /* Setup */
     , (800887,   3,  536870932) /* SoundTable */
     , (800887,   6,   67111919) /* PaletteBase */
     , (800887,   7,  268435750) /* ClothingBase */
     , (800887,   8,  100668682) /* Icon */
     , (800887,  22,  872415275) /* PhysicsEffectTable */
     , (800887,  36,  234881046) /* MutateFilter */;
