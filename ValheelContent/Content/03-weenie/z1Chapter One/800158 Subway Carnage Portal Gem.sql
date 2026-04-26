DELETE FROM `weenie` WHERE `class_Id` = 800158;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800158, 'subwaycarnagegem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800158,   1,       2048) /* ItemType - Gem */
     , (800158,   3,          5) /* PaletteTemplate - Larlun Blue */
     , (800158,   5,         50) /* EncumbranceVal */
     , (800158,   8,         10) /* Mass */
     , (800158,   9,          0) /* ValidLocations - None */
     , (800158,  11,         25) /* MaxStackSize */
     , (800158,  12,          1) /* StackSize */
     , (800158,  13,         50) /* StackUnitEncumbrance */
     , (800158,  14,         10) /* StackUnitMass */
     , (800158,  15,          0) /* StackUnitValue */
     , (800158,  16,          8) /* ItemUseable - Contained */
     , (800158,  19,          1) /* Value */
     , (800158,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800158,  94,         16) /* TargetType - Creature */
     , (800158, 106,        210) /* ItemSpellcraft */
     , (800158, 107,         50) /* ItemCurMana */
     , (800158, 108,         50) /* ItemMaxMana */
     , (800158, 109,          0) /* ItemDifficulty */
     , (800158, 110,          0) /* ItemAllegianceRankLimit */
     , (800158, 150,        103) /* HookPlacement - Hook */
     , (800158, 151,          2) /* HookType - Wall */
     , (800158, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800158,  22, True ) /* Inscribable */
     , (800158,  23, True ) /* DestroyOnSell */
     , (800158,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800158, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800158,   1, 'Subway Carnage Portal Gem') /* Name */
     , (800158,  14, 'Double click this gem to summon a portal to Subway Carnage.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800158,   1,   33556769) /* Setup */
     , (800158,   3,  536870932) /* SoundTable */
     , (800158,   6,   67111919) /* PaletteBase */
     , (800158,   7,  268435723) /* ClothingBase */
     , (800158,   8,  100668364) /* Icon */
     , (800158,  22,  872415275) /* PhysicsEffectTable */
     , (800158,  28,        157) /* Spell - Summon Primary Portal I */
     , (800158,  31,     800005) /* LinkedPortalOne - Abandoned Mines Lower */;
