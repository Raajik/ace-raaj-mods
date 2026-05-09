DELETE FROM `weenie` WHERE `class_Id` = 803996;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803996, 'munchportalgem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803996,   1,       2048) /* ItemType - Gem */
     , (803996,   3,          5) /* PaletteTemplate - Larlun Blue */
     , (803996,   5,          1) /* EncumbranceVal */
     , (803996,   8,         10) /* Mass */
     , (803996,   9,          0) /* ValidLocations - None */
     , (803996,  16,          8) /* ItemUseable - Contained */
     , (803996,  18,         64) /* UiEffects - Lightning */
     , (803996,  19,          1) /* Value */
     , (803996,  33,          1) /* Bonded */
     , (803996,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (803996,  94,         16) /* TargetType - Creature */
     , (803996, 106,        300) /* ItemSpellcraft */
     , (803996, 107,         60) /* ItemCurMana */
     , (803996, 108,         60) /* ItemMaxMana */
     , (803996, 109,          0) /* ItemDifficulty */
     , (803996, 114,          1) /* Attuned */
     , (803996, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803996,  22, True ) /* Inscribable */
     , (803996,  23, True ) /* DestroyOnSell */
     , (803996,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803996, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803996,   1, 'Munch''s Portal Gem') /* Name */
     , (803996,  14, 'Double click this gem to summon a portal to a secret area.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803996,   1,    33556769) /* Setup */
     , (803996,   3,   536870932) /* SoundTable */
     , (803996,   6,    67111919) /* PaletteBase */
     , (803996,   7,   268435723) /* ClothingBase */
     , (803996,   8,  0x06002027) /* Icon */
     , (803996,  22,   872415275) /* PhysicsEffectTable */
     , (803996,  28,         157) /* Spell - Summon Primary Portal I */
     , (803996,  31,      803995) /* LinkedPortalOne - Abandoned Mines Lower */;