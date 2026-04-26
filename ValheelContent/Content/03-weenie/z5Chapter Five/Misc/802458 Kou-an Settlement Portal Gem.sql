DELETE FROM `weenie` WHERE `class_Id` = 802458;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802458, 'Kou-an Settlement Portal Gem', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802458,   1,       2048) /* ItemType - Gem */
     , (802458,   3,          5) /* PaletteTemplate - DarkBlue */
     , (802458,   5,         50) /* EncumbranceVal */
     , (802458,   8,         10) /* Mass */
     , (802458,   9,          0) /* ValidLocations - None */
     , (802458,  11,         25) /* MaxStackSize */
     , (802458,  12,          1) /* StackSize */
     , (802458,  13,         50) /* StackUnitEncumbrance */
     , (802458,  14,         10) /* StackUnitMass */
     , (802458,  15,          0) /* StackUnitValue */
     , (802458,  16,          8) /* ItemUseable - Contained */
     , (802458,  18,         32) /* UiEffects - Fire */
     , (802458,  19,          1) /* Value */
     , (802458,  93,       3092) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity, LightingOn */
     , (802458,  94,         16) /* TargetType - Creature */
     , (802458, 106,        210) /* ItemSpellcraft */
     , (802458, 107,         50) /* ItemCurMana */
     , (802458, 108,         50) /* ItemMaxMana */
     , (802458, 109,          0) /* ItemDifficulty */
     , (802458, 110,          0) /* ItemAllegianceRankLimit */
     , (802458, 150,        103) /* HookPlacement - Hook */
     , (802458, 151,          2) /* HookType - Wall */
     , (802458, 280,       1000) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802458,  22, True ) /* Inscribable */
     , (802458,  23, True ) /* DestroyOnSell */
     , (802458,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802458, 167,      15) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802458,   1, 'Kou-an Settlement Portal Gem') /* Name */
     , (802458,  16, 'Use this portal gem to teleport to Kou-an Settlment.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802458,   1,   33556769) /* Setup */
     , (802458,   3,  536870932) /* SoundTable */
     , (802458,   6,   67111919) /* PaletteBase */
     , (802458,   7,  268435723) /* ClothingBase */
     , (802458,   8,  100672368) /* Icon */
     , (802458,  22,  872415275) /* PhysicsEffectTable */
     , (802458,  28,        157) /* Spell - Summon Primary Portal I */
     , (802458,  31,     802800) /* LinkedPortalOne - Dread Islands */;
