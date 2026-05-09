DELETE FROM `weenie` WHERE `class_Id` = 800885;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800885, 'Dextrous Necklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800885,   1,          8) /* ItemType - Jewelry */
     , (800885,   3,         21) /* PaletteTemplate - Gold */
     , (800885,   5,         90) /* EncumbranceVal */
     , (800885,   8,         60) /* Mass */
     , (800885,   9,      32768) /* ValidLocations - NeckWear */
     , (800885,  16,          1) /* ItemUseable - No */
     , (800885,  18,          1) /* UiEffects - Magical */
     , (800885,  19,         25) /* Value */
     , (800885,  33,          1) /* Bonded - Bonded */
     , (800885,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800885, 106,        200) /* ItemSpellcraft */
     , (800885, 107,        700) /* ItemCurMana */
     , (800885, 108,        700) /* ItemMaxMana */
     , (800885, 109,        300) /* ItemDifficulty */
     , (800885, 114,          1) /* Attuned - Attuned */
     , (800885, 265,         20) /* Wise */
     , (800885, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800885,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800885,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800885,   1, 'Dextrous Necklace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800885,   1,   33554688) /* Setup */
     , (800885,   3,  536870932) /* SoundTable */
     , (800885,   6,   67111919) /* PaletteBase */
     , (800885,   7,  268435750) /* ClothingBase */
     , (800885,   8,  100668682) /* Icon */
     , (800885,  22,  872415275) /* PhysicsEffectTable */
     , (800885,  36,  234881046) /* MutateFilter */;
