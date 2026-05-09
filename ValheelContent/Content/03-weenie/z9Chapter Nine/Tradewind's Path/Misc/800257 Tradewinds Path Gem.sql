DELETE FROM `weenie` WHERE `class_Id` = 800257;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800257, 'tradewindspathgem', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800257,   1,       2048) /* ItemType - Gem */
     , (800257,   3,         14) /* PaletteTemplate - Red */
     , (800257,   5,          5) /* EncumbranceVal */
     , (800257,   8,          5) /* Mass */
     , (800257,   9,          0) /* ValidLocations - None */
     , (800257,  11,         25) /* MaxStackSize */
     , (800257,  12,          1) /* StackSize */
     , (800257,  13,          5) /* StackUnitEncumbrance */
     , (800257,  14,          5) /* StackUnitMass */
     , (800257,  15,          0) /* StackUnitValue */
     , (800257,  16,          8) /* ItemUseable - Contained */
     , (800257,  18,          1) /* UiEffects - Magical */
     , (800257,  19,          0) /* Value */
     , (800257,  33,          0) /* Bonded - Normal */
     , (800257,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (800257,  94,         16) /* TargetType - Creature */
     , (800257, 106,        210) /* ItemSpellcraft */
     , (800257, 107,         70) /* ItemCurMana */
     , (800257, 108,         70) /* ItemMaxMana */
     , (800257, 109,         40) /* ItemDifficulty */
     , (800257, 110,          0) /* ItemAllegianceRankLimit */
     , (800257, 114,          0) /* Attuned - Normal */
     , (800257, 150,        103) /* HookPlacement - Hook */
     , (800257, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800257,  15, True ) /* LightsStatus */
     , (800257,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800257,  76,     0.5) /* Translucency */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800257,   1, 'Tradewinds Path Gem') /* Name */
     , (800257,  14, 'Double Click on this portal gem to transport yourself to the Tradewinds Path Trials.') /* Use */
     , (800257,  15, 'A glowing red gem.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800257,   1,   33556769) /* Setup */
     , (800257,   3,  536870932) /* SoundTable */
     , (800257,   6,   67111919) /* PaletteBase */
     , (800257,   7,  268435723) /* ClothingBase */
     , (800257,   8,  100672368) /* Icon */
     , (800257,  22,  872415275) /* PhysicsEffectTable */
     , (800257,  28,     800256) /* Spell - Free Ride to the Tradeinds Path */
     , (800257,  36,  234881046) /* MutateFilter */;
