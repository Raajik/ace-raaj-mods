DELETE FROM `weenie` WHERE `class_Id` = 800317;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800317, 'Bael''Zharon''s Favor', 38, '2021-11-01 00:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800317,   1,       2048) /* ItemType - Gem */
     , (800317,   5,         50) /* EncumbranceVal */
     , (800317,  11,        100) /* MaxStackSize */
     , (800317,  12,          1) /* StackSize */
     , (800317,  13,         50) /* StackUnitEncumbrance */
     , (800317,  15,          0) /* StackUnitValue */
     , (800317,  16,          8) /* ItemUseable - Contained */
     , (800317,  18,          1) /* UiEffects - Magical */
     , (800317,  19,          0) /* Value */
     , (800317,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800317,  94,         16) /* TargetType - Creature */
     , (800317, 106,        300) /* ItemSpellcraft */
     , (800317, 107,        250) /* ItemCurMana */
     , (800317, 108,        250) /* ItemMaxMana */
     , (800317, 109,          0) /* ItemDifficulty */
     , (800317, 110,          0) /* ItemAllegianceRankLimit */
     , (800317, 151,          2) /* HookType - Wall */
     , (800317, 280,          2) /* SharedCooldown */;
	 
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800317,  22, True ) /* Inscribable */
     , (800317,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800317, 167,      10) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800317,   1, 'Bael''Zharon''s Favor') /* Name */
     , (800317,  14, 'Use this parchment to nullify all level 8 negative spells and lower.') /* Use */
     , (800317,  15, 'This cantrip was a design of Bael''Zharon himself. If will help you greatly in your fight against enemies.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800317,   1,   33554809) /* Setup */
     , (800317,   3,  536870932) /* SoundTable */
     , (800317,   6,   67111919) /* PaletteBase */
     , (800317,   8,  100688622) /* Icon */
     , (800317,  22,  872415275) /* PhysicsEffectTable */
     , (800317,  28,       4331) /* Spell - Moderate Coordination */;
