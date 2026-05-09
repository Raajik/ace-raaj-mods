DELETE FROM `weenie` WHERE `class_Id` = 800888;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800888, 'Hardened Necklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800888,   1,          8) /* ItemType - Jewelry */
     , (800888,   3,         21) /* PaletteTemplate - Gold */
     , (800888,   5,         90) /* EncumbranceVal */
     , (800888,   8,         60) /* Mass */
     , (800888,   9,      32768) /* ValidLocations - NeckWear */
     , (800888,  16,          1) /* ItemUseable - No */
     , (800888,  18,          1) /* UiEffects - Magical */
     , (800888,  19,         25) /* Value */
     , (800888,  33,          1) /* Bonded - Bonded */
     , (800888,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800888, 106,        200) /* ItemSpellcraft */
     , (800888, 107,        700) /* ItemCurMana */
     , (800888, 108,        700) /* ItemMaxMana */
     , (800888, 109,        300) /* ItemDifficulty */
     , (800888, 114,          1) /* Attuned - Attuned */
     , (800888, 265,         23) /* Wise */
     , (800888, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800888,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800888,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800888,   1, 'Hardened Necklace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800888,   1,   33554688) /* Setup */
     , (800888,   3,  536870932) /* SoundTable */
     , (800888,   6,   67111919) /* PaletteBase */
     , (800888,   7,  268435750) /* ClothingBase */
     , (800888,   8,  100668682) /* Icon */
     , (800888,  22,  872415275) /* PhysicsEffectTable */
     , (800888,  36,  234881046) /* MutateFilter */;
