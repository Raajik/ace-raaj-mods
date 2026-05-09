DELETE FROM `weenie` WHERE `class_Id` = 804000;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (804000, 'munchtowergem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (804000,   1,       2048) /* ItemType - Gem */
     , (804000,   3,          5) /* PaletteTemplate - Larlun Blue */
     , (804000,   5,          1) /* EncumbranceVal */
     , (804000,   8,         10) /* Mass */
     , (804000,   9,          0) /* ValidLocations - None */
     , (804000,  16,          8) /* ItemUseable - Contained */
     , (804000,  18,         64) /* UiEffects - Lightning */
     , (804000,  19,          1) /* Value */
     , (804000,  33,          1) /* Bonded */
     , (804000,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (804000,  94,         16) /* TargetType - Creature */
     , (804000, 106,        300) /* ItemSpellcraft */
     , (804000, 107,         60) /* ItemCurMana */
     , (804000, 108,         60) /* ItemMaxMana */
     , (804000, 109,          0) /* ItemDifficulty */
     , (804000, 114,          1) /* Attuned */
     , (804000, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (804000,  22, True ) /* Inscribable */
     , (804000,  23, True ) /* DestroyOnSell */
     , (804000,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (804000, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (804000,   1, 'Munch''s Tower') /* Name */
     , (804000,  14, 'Double click this gem to summon a portal to Munch''s Tower') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (804000,   1,    33556769) /* Setup */
     , (804000,   3,   536870932) /* SoundTable */
     , (804000,   6,    67111919) /* PaletteBase */
     , (804000,   7,   268435723) /* ClothingBase */
     , (804000,   8,  0x06002027) /* Icon */
     , (804000,  22,   872415275) /* PhysicsEffectTable */
     , (804000,  28,         157) /* Spell - Summon Primary Portal I */
     , (804000,  31,      803999) /* LinkedPortalOne - Abandoned Mines Lower */;