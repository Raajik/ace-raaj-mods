DELETE FROM `weenie` WHERE `class_Id` = 800320;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800320, 'Fortress Defenders Attacker Portal', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800320,   1,       2048) /* ItemType - Gem */
     , (800320,   3,          5) /* PaletteTemplate - Larlun Blue */
     , (800320,   5,         50) /* EncumbranceVal */
     , (800320,   8,         10) /* Mass */
     , (800320,   9,          0) /* ValidLocations - None */
     , (800320,  11,         25) /* MaxStackSize */
     , (800320,  12,          1) /* StackSize */
     , (800320,  13,         50) /* StackUnitEncumbrance */
     , (800320,  14,         10) /* StackUnitMass */
     , (800320,  15,          0) /* StackUnitValue */
     , (800320,  16,          8) /* ItemUseable - Contained */
     , (800320,  19,          1) /* Value */
     , (800320,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800320,  94,         16) /* TargetType - Creature */
     , (800320, 106,        210) /* ItemSpellcraft */
     , (800320, 107,         50) /* ItemCurMana */
     , (800320, 108,         50) /* ItemMaxMana */
     , (800320, 109,          0) /* ItemDifficulty */
     , (800320, 110,          0) /* ItemAllegianceRankLimit */
     , (800320, 150,        103) /* HookPlacement - Hook */
     , (800320, 151,          2) /* HookType - Wall */
     , (800320, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800320,  22, True ) /* Inscribable */
     , (800320,  23, True ) /* DestroyOnSell */
     , (800320,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800320, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800320,   1, 'Fortress Defenders Attacker Portal') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800320,   1,   33556769) /* Setup */
     , (800320,   3,  536870932) /* SoundTable */
     , (800320,   6,   67111919) /* PaletteBase */
     , (800320,   7,  268435723) /* ClothingBase */
     , (800320,   8,  100668364) /* Icon */
     , (800320,  22,  872415275) /* PhysicsEffectTable */
     , (800320,  28,        157) /* Spell - Summon Primary Portal I */
     , (800320,  31,     800318) /* LinkedPortalOne - The Orphanage */
     , (800320,  50,  100676404) /* IconOverlay */;
