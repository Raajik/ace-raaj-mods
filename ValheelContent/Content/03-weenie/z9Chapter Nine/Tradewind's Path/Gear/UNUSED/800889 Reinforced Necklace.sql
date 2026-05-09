DELETE FROM `weenie` WHERE `class_Id` = 800889;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800889, 'Reinforced Necklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800889,   1,          8) /* ItemType - Jewelry */
     , (800889,   3,         21) /* PaletteTemplate - Gold */
     , (800889,   5,         90) /* EncumbranceVal */
     , (800889,   8,         60) /* Mass */
     , (800889,   9,      32768) /* ValidLocations - NeckWear */
     , (800889,  16,          1) /* ItemUseable - No */
     , (800889,  18,          1) /* UiEffects - Magical */
     , (800889,  19,         25) /* Value */
     , (800889,  33,          1) /* Bonded - Bonded */
     , (800889,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800889, 106,        200) /* ItemSpellcraft */
     , (800889, 107,        700) /* ItemCurMana */
     , (800889, 108,        700) /* ItemMaxMana */
     , (800889, 109,        300) /* ItemDifficulty */
     , (800889, 114,          1) /* Attuned - Attuned */
     , (800889, 265,         24) /* Wise */
     , (800889, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800889,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800889,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800889,   1, 'Reinforced Necklace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800889,   1,   33554688) /* Setup */
     , (800889,   3,  536870932) /* SoundTable */
     , (800889,   6,   67111919) /* PaletteBase */
     , (800889,   7,  268435750) /* ClothingBase */
     , (800889,   8,  100668682) /* Icon */
     , (800889,  22,  872415275) /* PhysicsEffectTable */
     , (800889,  36,  234881046) /* MutateFilter */;
