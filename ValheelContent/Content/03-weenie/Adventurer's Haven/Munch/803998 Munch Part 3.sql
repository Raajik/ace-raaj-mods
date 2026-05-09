DELETE FROM `weenie` WHERE `class_Id` = 803998;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (803998, 'munchpart3', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (803998,   1,       2048) /* ItemType - Gem */
     , (803998,   3,          5) /* PaletteTemplate - Larlun Blue */
     , (803998,   5,          1) /* EncumbranceVal */
     , (803998,   8,         10) /* Mass */
     , (803998,   9,          0) /* ValidLocations - None */
     , (803998,  16,          8) /* ItemUseable - Contained */
     , (803998,  18,         64) /* UiEffects - Lightning */
     , (803998,  19,          1) /* Value */
     , (803998,  33,          1) /* Bonded */
     , (803998,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (803998,  94,         16) /* TargetType - Creature */
     , (803998, 106,        300) /* ItemSpellcraft */
     , (803998, 107,         60) /* ItemCurMana */
     , (803998, 108,         60) /* ItemMaxMana */
     , (803998, 109,          0) /* ItemDifficulty */
     , (803998, 114,          1) /* Attuned */
     , (803998, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (803998,  22, True ) /* Inscribable */
     , (803998,  23, True ) /* DestroyOnSell */
     , (803998,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (803998, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (803998,   1, 'Munch Part 3') /* Name */
     , (803998,  14, 'Double click this gem to summon a portal to a secret area.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (803998,   1,    33556769) /* Setup */
     , (803998,   3,   536870932) /* SoundTable */
     , (803998,   6,    67111919) /* PaletteBase */
     , (803998,   7,   268435723) /* ClothingBase */
     , (803998,   8,  0x06002027) /* Icon */
     , (803998,  22,   872415275) /* PhysicsEffectTable */
     , (803998,  28,         157) /* Spell - Summon Primary Portal I */
     , (803998,  31,      803997) /* LinkedPortalOne - Abandoned Mines Lower */;