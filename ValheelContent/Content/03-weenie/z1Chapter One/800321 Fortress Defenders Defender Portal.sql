DELETE FROM `weenie` WHERE `class_Id` = 800321;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800321, 'Fortress Defenders Defender Portal', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800321,   1,       2048) /* ItemType - Gem */
     , (800321,   3,          5) /* PaletteTemplate - Larlun Blue */
     , (800321,   5,         50) /* EncumbranceVal */
     , (800321,   8,         10) /* Mass */
     , (800321,   9,          0) /* ValidLocations - None */
     , (800321,  11,         25) /* MaxStackSize */
     , (800321,  12,          1) /* StackSize */
     , (800321,  13,         50) /* StackUnitEncumbrance */
     , (800321,  14,         10) /* StackUnitMass */
     , (800321,  15,          0) /* StackUnitValue */
     , (800321,  16,          8) /* ItemUseable - Contained */
     , (800321,  19,          1) /* Value */
     , (800321,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800321,  94,         16) /* TargetType - Creature */
     , (800321, 106,        210) /* ItemSpellcraft */
     , (800321, 107,         50) /* ItemCurMana */
     , (800321, 108,         50) /* ItemMaxMana */
     , (800321, 109,          0) /* ItemDifficulty */
     , (800321, 110,          0) /* ItemAllegianceRankLimit */
     , (800321, 150,        103) /* HookPlacement - Hook */
     , (800321, 151,          2) /* HookType - Wall */
     , (800321, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800321,  22, True ) /* Inscribable */
     , (800321,  23, True ) /* DestroyOnSell */
     , (800321,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800321, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800321,   1, 'Fortress Defenders Defender Portal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800321,   1,   33556769) /* Setup */
     , (800321,   3,  536870932) /* SoundTable */
     , (800321,   6,   67111919) /* PaletteBase */
     , (800321,   7,  268435723) /* ClothingBase */
     , (800321,   8,  100668364) /* Icon */
     , (800321,  22,  872415275) /* PhysicsEffectTable */
     , (800321,  28,        157) /* Spell - Summon Primary Portal I */
     , (800321,  31,     800319) /* LinkedPortalOne - The Orphanage */
     , (800321,  50,  100676404) /* IconOverlay */;
