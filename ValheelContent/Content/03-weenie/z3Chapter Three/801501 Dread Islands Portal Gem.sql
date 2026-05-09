DELETE FROM `weenie` WHERE `class_Id` = 801501;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801501, 'dreadislandsportalgem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801501,   1,       2048) /* ItemType - Gem */
     , (801501,   3,          5) /* PaletteTemplate - DarkBlue */
     , (801501,   5,         50) /* EncumbranceVal */
     , (801501,   8,         10) /* Mass */
     , (801501,   9,          0) /* ValidLocations - None */
     , (801501,  11,         25) /* MaxStackSize */
     , (801501,  12,          1) /* StackSize */
     , (801501,  13,         50) /* StackUnitEncumbrance */
     , (801501,  14,         10) /* StackUnitMass */
     , (801501,  15,          0) /* StackUnitValue */
     , (801501,  16,          8) /* ItemUseable - Contained */
     , (801501,  18,         32) /* UiEffects - Fire */
     , (801501,  19,          1) /* Value */
     , (801501,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (801501,  94,         16) /* TargetType - Creature */
     , (801501, 106,        210) /* ItemSpellcraft */
     , (801501, 107,         50) /* ItemCurMana */
     , (801501, 108,         50) /* ItemMaxMana */
     , (801501, 109,          0) /* ItemDifficulty */
     , (801501, 110,          0) /* ItemAllegianceRankLimit */
     , (801501, 150,        103) /* HookPlacement - Hook */
     , (801501, 151,          2) /* HookType - Wall */
     , (801501, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801501,  22, True ) /* Inscribable */
     , (801501,  23, True ) /* DestroyOnSell */
     , (801501,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801501, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801501,   1, 'Dread Islands Portal Gem') /* Name */
     , (801501,  14, 'Double click this gem to summon a portal to Dread Islands.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801501,   1,   33556769) /* Setup */
     , (801501,   3,  536870932) /* SoundTable */
     , (801501,   6,   67111919) /* PaletteBase */
     , (801501,   7,  268435723) /* ClothingBase */
     , (801501,   8,      25259) /* Icon */
     , (801501,  22,  872415275) /* PhysicsEffectTable */
     , (801501,  28,        157) /* Spell - Summon Primary Portal I */
     , (801501,  31,     801500) /* LinkedPortalOne - Dread Islands */;
