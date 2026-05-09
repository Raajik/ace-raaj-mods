DELETE FROM `weenie` WHERE `class_Id` = 800160;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800160, 'rynthidinvasiongem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800160,   1,       2048) /* ItemType - Gem */
     , (800160,   3,          5) /* PaletteTemplate - Larlun Blue */
     , (800160,   5,         50) /* EncumbranceVal */
     , (800160,   8,         10) /* Mass */
     , (800160,   9,          0) /* ValidLocations - None */
     , (800160,  11,         25) /* MaxStackSize */
     , (800160,  12,          1) /* StackSize */
     , (800160,  13,         50) /* StackUnitEncumbrance */
     , (800160,  14,         10) /* StackUnitMass */
     , (800160,  15,          0) /* StackUnitValue */
     , (800160,  16,          8) /* ItemUseable - Contained */
     , (800160,  19,          1) /* Value */
     , (800160,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800160,  94,         16) /* TargetType - Creature */
     , (800160, 106,        210) /* ItemSpellcraft */
     , (800160, 107,         50) /* ItemCurMana */
     , (800160, 108,         50) /* ItemMaxMana */
     , (800160, 109,          0) /* ItemDifficulty */
     , (800160, 110,          0) /* ItemAllegianceRankLimit */
     , (800160, 150,        103) /* HookPlacement - Hook */
     , (800160, 151,          2) /* HookType - Wall */
     , (800160, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800160,  22, True ) /* Inscribable */
     , (800160,  23, True ) /* DestroyOnSell */
     , (800160,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800160, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800160,   1, 'Rynthid Invasion Portal Gem') /* Name */
     , (800160,  14, 'Double click this gem to summon a portal to Subway Carnage.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800160,   1,   33556769) /* Setup */
     , (800160,   3,  536870932) /* SoundTable */
     , (800160,   6,   67111919) /* PaletteBase */
     , (800160,   7,  268435723) /* ClothingBase */
     , (800160,   8,  100668364) /* Icon */
     , (800160,  22,  872415275) /* PhysicsEffectTable */
     , (800160,  28,        157) /* Spell - Summon Primary Portal I */
     , (800160,  31,     300118) /* LinkedPortalOne - Rynthid Invasion Area Portal */
     , (800160,  50,  100676404) /* IconOverlay */;
