DELETE FROM `weenie` WHERE `class_Id` = 800878;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800878, 'Soldier''s Necklace', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800878,   1,          8) /* ItemType - Jewelry */
     , (800878,   3,         21) /* PaletteTemplate - Gold */
     , (800878,   5,         90) /* EncumbranceVal */
     , (800878,   8,         60) /* Mass */
     , (800878,   9,      32768) /* ValidLocations - NeckWear */
     , (800878,  16,          1) /* ItemUseable - No */
     , (800878,  18,          1) /* UiEffects - Magical */
     , (800878,  19,         25) /* Value */
     , (800878,  33,          1) /* Bonded - Bonded */
     , (800878,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800878, 106,        200) /* ItemSpellcraft */
     , (800878, 107,        700) /* ItemCurMana */
     , (800878, 108,        700) /* ItemMaxMana */
     , (800878, 109,        300) /* ItemDifficulty */
     , (800878, 114,          1) /* Attuned - Attuned */
     , (800878, 265,         13) /* Wise */
     , (800878, 379,          5) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800878,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800878,  39,    0.67) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800878,   1, 'Soldier''s Necklace') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800878,   1,   33554688) /* Setup */
     , (800878,   3,  536870932) /* SoundTable */
     , (800878,   6,   67111919) /* PaletteBase */
     , (800878,   7,  268435750) /* ClothingBase */
     , (800878,   8,  100668682) /* Icon */
     , (800878,  22,  872415275) /* PhysicsEffectTable */
     , (800878,  36,  234881046) /* MutateFilter */;
