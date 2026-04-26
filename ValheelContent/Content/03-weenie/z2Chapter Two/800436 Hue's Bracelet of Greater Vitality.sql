DELETE FROM `weenie` WHERE `class_Id` = 800436;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800436, 'Hue''s Bracelet of Greater Vitality', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800436,   1,          8) /* ItemType - Jewelry */
     , (800436,   3,         82) /* PaletteTemplate - PinkPurple */
     , (800436,   5,         40) /* EncumbranceVal */
     , (800436,   8,         30) /* Mass */
     , (800436,   9,     196608) /* ValidLocations - WristWear */
     , (800436,  16,          1) /* ItemUseable - No */
     , (800436,  18,          1) /* UiEffects - Magical */
     , (800436,  19,         30) /* Value */
     , (800436,  33,          1) /* Bonded - Bonded */
     , (800436,  36,       9999) /* ResistMagic */
     , (800436,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800436, 106,        999) /* ItemSpellcraft */
     , (800436, 107,       1000) /* ItemCurMana */
     , (800436, 108,       1000) /* ItemMaxMana */
     , (800436, 109,         50) /* ItemDifficulty */
     , (800436, 114,          1) /* Attuned - Attuned */
     , (800436, 158,          1) /* WieldRequirements - Skill */
     , (800436, 159,          6) /* WieldSkillType - MeleeDefense */
     , (800436, 160,        400) /* WieldDifficulty */
     , (800436, 379,         40) /* Health Boost */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800436,  22, True ) /* Inscribable */
     , (800436,  23, True ) /* DestroyOnSell */
     , (800436,  69, False) /* IsSellable */
     , (800436,  99, True ) /* Ivoryable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800436,   5,  -0.033) /* ManaRate */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800436,   1, 'Hue''s Bracelet of Greater Vitality') /* Name */
     , (800436,  16, 'A rare Vitality infused bracelet.') /* LongDesc */
     , (800436,  33, 'HueBracelet') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800436,   1,   33554683) /* Setup */
     , (800436,   3,  536870932) /* SoundTable */
     , (800436,   6,   67111919) /* PaletteBase */
     , (800436,   7,  268436286) /* ClothingBase */
     , (800436,   8,  100675477) /* Icon */
     , (800436,  22,  872415275) /* PhysicsEffectTable */;

