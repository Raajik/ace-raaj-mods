DELETE FROM `weenie` WHERE `class_Id` = 800884;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800884, 'Hearty Necklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800884,   1,          8) /* ItemType - Jewelry */
     , (800884,   3,         21) /* PaletteTemplate - Gold */
     , (800884,   5,         90) /* EncumbranceVal */
     , (800884,   8,         60) /* Mass */
     , (800884,   9,      32768) /* ValidLocations - NeckWear */
     , (800884,  16,          1) /* ItemUseable - No */
     , (800884,  18,          1) /* UiEffects - Magical */
     , (800884,  19,         25) /* Value */
     , (800884,  33,          1) /* Bonded - Bonded */
     , (800884,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800884, 106,        200) /* ItemSpellcraft */
     , (800884, 107,        700) /* ItemCurMana */
     , (800884, 108,        700) /* ItemMaxMana */
     , (800884, 109,        300) /* ItemDifficulty */
     , (800884, 114,          1) /* Attuned - Attuned */
     , (800884, 265,         19) /* Wise */
     , (800884, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800884,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800884,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800884,   1, 'Hearty Necklace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800884,   1,   33554688) /* Setup */
     , (800884,   3,  536870932) /* SoundTable */
     , (800884,   6,   67111919) /* PaletteBase */
     , (800884,   7,  268435750) /* ClothingBase */
     , (800884,   8,  100668682) /* Icon */
     , (800884,  22,  872415275) /* PhysicsEffectTable */
     , (800884,  36,  234881046) /* MutateFilter */;
