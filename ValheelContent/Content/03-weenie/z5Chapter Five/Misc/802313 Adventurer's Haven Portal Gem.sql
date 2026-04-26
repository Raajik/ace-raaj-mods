DELETE FROM `weenie` WHERE `class_Id` = 802313;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802313, 'AdventurersHavenPortalGem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802313,   1,       2048) /* ItemType - Gem */
     , (802313,   3,          5) /* PaletteTemplate - DarkBlue */
     , (802313,   5,         50) /* EncumbranceVal */
     , (802313,   8,         10) /* Mass */
     , (802313,   9,          0) /* ValidLocations - None */
     , (802313,  11,         25) /* MaxStackSize */
     , (802313,  12,          1) /* StackSize */
     , (802313,  13,         50) /* StackUnitEncumbrance */
     , (802313,  14,         10) /* StackUnitMass */
     , (802313,  15,          0) /* StackUnitValue */
     , (802313,  16,          8) /* ItemUseable - Contained */
     , (802313,  18,         32) /* UiEffects - Fire */
     , (802313,  19,          1) /* Value */
     , (802313,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802313,  94,         16) /* TargetType - Creature */
     , (802313, 106,        210) /* ItemSpellcraft */
     , (802313, 107,         50) /* ItemCurMana */
     , (802313, 108,         50) /* ItemMaxMana */
     , (802313, 109,          0) /* ItemDifficulty */
     , (802313, 110,          0) /* ItemAllegianceRankLimit */
     , (802313, 150,        103) /* HookPlacement - Hook */
     , (802313, 151,          2) /* HookType - Wall */
     , (802313, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802313,  22, True ) /* Inscribable */
     , (802313,  23, True ) /* DestroyOnSell */
     , (802313,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802313, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802313,   1, 'Adventurer''s Haven Portal Gem') /* Name */
     , (802313,  14, 'Double click this gem to summon a portal to Adventurer''s Haven.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802313,   1,   33556769) /* Setup */
     , (802313,   3,  536870932) /* SoundTable */
     , (802313,   6,   67111919) /* PaletteBase */
     , (802313,   7,  268435723) /* ClothingBase */
     , (802313,   8,  100672368) /* Icon */
     , (802313,  22,  872415275) /* PhysicsEffectTable */
     , (802313,  28,        157) /* Spell - Summon Primary Portal I */
     , (802313,  31,       2080) /* LinkedPortalOne - Dread Islands */;
