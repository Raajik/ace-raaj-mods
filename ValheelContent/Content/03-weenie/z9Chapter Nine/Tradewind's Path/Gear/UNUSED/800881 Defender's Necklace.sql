DELETE FROM `weenie` WHERE `class_Id` = 800881;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800881, 'Defender''s Necklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800881,   1,          8) /* ItemType - Jewelry */
     , (800881,   3,         21) /* PaletteTemplate - Gold */
     , (800881,   5,         90) /* EncumbranceVal */
     , (800881,   8,         60) /* Mass */
     , (800881,   9,      32768) /* ValidLocations - NeckWear */
     , (800881,  16,          1) /* ItemUseable - No */
     , (800881,  18,          1) /* UiEffects - Magical */
     , (800881,  19,         25) /* Value */
     , (800881,  33,          1) /* Bonded - Bonded */
     , (800881,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800881, 106,        200) /* ItemSpellcraft */
     , (800881, 107,        700) /* ItemCurMana */
     , (800881, 108,        700) /* ItemMaxMana */
     , (800881, 109,        300) /* ItemDifficulty */
     , (800881, 114,          1) /* Attuned - Attuned */
     , (800881, 265,         16) /* Wise */
     , (800881, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800881,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800881,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800881,   1, 'Defender''s Necklace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800881,   1,   33554688) /* Setup */
     , (800881,   3,  536870932) /* SoundTable */
     , (800881,   6,   67111919) /* PaletteBase */
     , (800881,   7,  268435750) /* ClothingBase */
     , (800881,   8,  100668682) /* Icon */
     , (800881,  22,  872415275) /* PhysicsEffectTable */
     , (800881,  36,  234881046) /* MutateFilter */;
