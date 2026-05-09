DELETE FROM `weenie` WHERE `class_Id` = 800305;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800305, 'King of the Hill Arena Portal Gem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800305,   1,       2048) /* ItemType - Gem */
     , (800305,   3,          5) /* PaletteTemplate - Larlun Blue */
     , (800305,   5,         50) /* EncumbranceVal */
     , (800305,   8,         10) /* Mass */
     , (800305,   9,          0) /* ValidLocations - None */
     , (800305,  11,         25) /* MaxStackSize */
     , (800305,  12,          1) /* StackSize */
     , (800305,  13,         50) /* StackUnitEncumbrance */
     , (800305,  14,         10) /* StackUnitMass */
     , (800305,  15,          0) /* StackUnitValue */
     , (800305,  16,          8) /* ItemUseable - Contained */
     , (800305,  19,          1) /* Value */
     , (800305,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800305,  94,         16) /* TargetType - Creature */
     , (800305, 106,        210) /* ItemSpellcraft */
     , (800305, 107,         50) /* ItemCurMana */
     , (800305, 108,         50) /* ItemMaxMana */
     , (800305, 109,          0) /* ItemDifficulty */
     , (800305, 110,          0) /* ItemAllegianceRankLimit */
     , (800305, 150,        103) /* HookPlacement - Hook */
     , (800305, 151,          2) /* HookType - Wall */
     , (800305, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800305,  22, True ) /* Inscribable */
     , (800305,  23, True ) /* DestroyOnSell */
     , (800305,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800305, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800305,   1, 'King of the Hill Arena Portal Gem') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800305,   1,   33556769) /* Setup */
     , (800305,   3,  536870932) /* SoundTable */
     , (800305,   6,   67111919) /* PaletteBase */
     , (800305,   7,  268435723) /* ClothingBase */
     , (800305,   8,  100668364) /* Icon */
     , (800305,  22,  872415275) /* PhysicsEffectTable */
     , (800305,  28,        157) /* Spell - Summon Primary Portal I */
     , (800305,  31,     800304) /* LinkedPortalOne - The Orphanage */
     , (800305,  50,  100676404) /* IconOverlay */;
