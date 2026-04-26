DELETE FROM `weenie` WHERE `class_Id` = 800879;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800879, 'Adept''s Necklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800879,   1,          8) /* ItemType - Jewelry */
     , (800879,   3,         21) /* PaletteTemplate - Gold */
     , (800879,   5,         90) /* EncumbranceVal */
     , (800879,   8,         60) /* Mass */
     , (800879,   9,      32768) /* ValidLocations - NeckWear */
     , (800879,  16,          1) /* ItemUseable - No */
     , (800879,  18,          1) /* UiEffects - Magical */
     , (800879,  19,         25) /* Value */
     , (800879,  33,          1) /* Bonded - Bonded */
     , (800879,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800879, 106,        200) /* ItemSpellcraft */
     , (800879, 107,        700) /* ItemCurMana */
     , (800879, 108,        700) /* ItemMaxMana */
     , (800879, 109,        300) /* ItemDifficulty */
     , (800879, 114,          1) /* Attuned - Attuned */
     , (800879, 265,         14) /* Wise */
     , (800879, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800879,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800879,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800879,   1, 'Adept''s Necklace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800879,   1,   33554688) /* Setup */
     , (800879,   3,  536870932) /* SoundTable */
     , (800879,   6,   67111919) /* PaletteBase */
     , (800879,   7,  268435750) /* ClothingBase */
     , (800879,   8,  100668682) /* Icon */
     , (800879,  22,  872415275) /* PhysicsEffectTable */
     , (800879,  36,  234881046) /* MutateFilter */;
