DELETE FROM `weenie` WHERE `class_Id` = 801535;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801535, 'MountainThronePortalGem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801535,   1,       2048) /* ItemType - Gem */
     , (801535,   3,          5) /* PaletteTemplate - Larlun Blue */
     , (801535,   5,         50) /* EncumbranceVal */
     , (801535,   8,         10) /* Mass */
     , (801535,   9,          0) /* ValidLocations - None */
     , (801535,  11,         25) /* MaxStackSize */
     , (801535,  12,          1) /* StackSize */
     , (801535,  13,         50) /* StackUnitEncumbrance */
     , (801535,  14,         10) /* StackUnitMass */
     , (801535,  15,          0) /* StackUnitValue */
     , (801535,  16,          8) /* ItemUseable - Contained */
     , (801535,  18,         32) /* UiEffects - Fire */
     , (801535,  19,          1) /* Value */
     , (801535,  92,          1) /* Structure */
     , (801535,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (801535,  94,         16) /* TargetType - Creature */
     , (801535, 106,        210) /* ItemSpellcraft */
     , (801535, 107,         50) /* ItemCurMana */
     , (801535, 108,         50) /* ItemMaxMana */
     , (801535, 109,          0) /* ItemDifficulty */
     , (801535, 110,          0) /* ItemAllegianceRankLimit */
     , (801535, 150,        103) /* HookPlacement - Hook */
     , (801535, 151,          2) /* HookType - Wall */
     , (801535, 267,        300) /* Lifespan */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801535,  22, True ) /* Inscribable */
     , (801535,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801535,   1, 'Mountain Throne Portal Gem') /* Name */
     , (801535,  14, 'Double click this gem to summon a portal to Mountain Throne of the Dark Order.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801535,   1,   33556769) /* Setup */
     , (801535,   3,  536870932) /* SoundTable */
     , (801535,   6,   67111919) /* PaletteBase */
     , (801535,   7,  268435723) /* ClothingBase */
     , (801535,   8,      25259) /* Icon */
     , (801535,  22,  872415275) /* PhysicsEffectTable */
     , (801535,  28,        157) /* Spell - Summon Primary Portal I */
     , (801535,  31,     801537) /* LinkedPortalOne - Rynthid Invasion Area Portal */;
