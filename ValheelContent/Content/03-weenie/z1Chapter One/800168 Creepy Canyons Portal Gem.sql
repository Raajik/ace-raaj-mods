DELETE FROM `weenie` WHERE `class_Id` = 800168;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800168, 'creepycanyonsgem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800168,   1,       2048) /* ItemType - Gem */
     , (800168,   3,          5) /* PaletteTemplate - Larlun Blue */
     , (800168,   5,         50) /* EncumbranceVal */
     , (800168,   8,         10) /* Mass */
     , (800168,   9,          0) /* ValidLocations - None */
     , (800168,  11,         25) /* MaxStackSize */
     , (800168,  12,          1) /* StackSize */
     , (800168,  13,         50) /* StackUnitEncumbrance */
     , (800168,  14,         10) /* StackUnitMass */
     , (800168,  15,          0) /* StackUnitValue */
     , (800168,  16,          8) /* ItemUseable - Contained */
     , (800168,  19,          1) /* Value */
     , (800168,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800168,  94,         16) /* TargetType - Creature */
     , (800168, 106,        210) /* ItemSpellcraft */
     , (800168, 107,         50) /* ItemCurMana */
     , (800168, 108,         50) /* ItemMaxMana */
     , (800168, 109,          0) /* ItemDifficulty */
     , (800168, 110,          0) /* ItemAllegianceRankLimit */
     , (800168, 150,        103) /* HookPlacement - Hook */
     , (800168, 151,          2) /* HookType - Wall */
     , (800168, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800168,  22, True ) /* Inscribable */
     , (800168,  23, True ) /* DestroyOnSell */
     , (800168,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800168, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800168,   1, 'Creepy Canyons Portal Gem') /* Name */
     , (800168,  14, 'Double click this gem to summon a portal to Creepy Canyons.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800168,   1,   33556769) /* Setup */
     , (800168,   3,  536870932) /* SoundTable */
     , (800168,   6,   67111919) /* PaletteBase */
     , (800168,   7,  268435723) /* ClothingBase */
     , (800168,   8,  100668364) /* Icon */
     , (800168,  22,  872415275) /* PhysicsEffectTable */
     , (800168,  28,        157) /* Spell - Summon Primary Portal I */
     , (800168,  31,     31315) /* LinkedPortalOne - Creepy Canyons */
     , (800168,  50,  100676404) /* IconOverlay */;
