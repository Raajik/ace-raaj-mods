DELETE FROM `weenie` WHERE `class_Id` = 800342;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800342, 'Arcanum Crystal of Lore', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800342,   1,       2048) /* ItemType - Gem */
     , (800342,   3,         39) /* PaletteTemplate - Black */
     , (800342,   5,          5) /* EncumbranceVal */
     , (800342,   8,          5) /* Mass */
     , (800342,  11,        100) /* MaxStackSize */
     , (800342,  12,          1) /* StackSize */
     , (800342,  13,          5) /* StackUnitEncumbrance */
     , (800342,  14,          5) /* StackUnitMass */
     , (800342,  15,          250) /* StackUnitValue */
     , (800342,  16,          8) /* ItemUseable - Contained */
     , (800342,  18,          1) /* UiEffects - Magical */
     , (800342,  19,          250) /* Value */
     , (800342,  26,          1) /* AccountRequirements - AsheronsCall_Subscription */
     , (800342,  33,          1) /* Bonded - Bonded */
     , (800342,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800342,  94,         16) /* TargetType - Creature */
     , (800342, 106,        325) /* ItemSpellcraft */
     , (800342, 107,      10000) /* ItemCurMana */
     , (800342, 108,      10000) /* ItemMaxMana */
     , (800342, 109,          0) /* ItemDifficulty */
     , (800342, 114,          1) /* Attuned - Attuned */
     , (800342, 150,        103) /* HookPlacement - Hook */
     , (800342, 151,         11) /* HookType - Floor, Wall, Yard */
     /*, (800342, 267,      86400) /* Lifespan */
     , (800342, 280,          2) /* SharedCooldown */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800342,  11, True ) /* IgnoreCollisions */
     , (800342,  13, True ) /* Ethereal */
     , (800342,  14, True ) /* GravityStatus */
     , (800342,  19, True ) /* Attackable */
     , (800342,  22, True ) /* Inscribable */
     , (800342,  63, True ) /* UnlimitedUse */
     , (800342, 108, True ) /* RareUsesTimer */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800342,  39,     1.2) /* DefaultScale */
     , (800342, 167,      10) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800342,   1, 'Arcanum Crystal of Lore') /* Name */
     , (800342,  16, 'Using this gem will increase your Arcane Lore skill by 250 for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800342,   1,   33554809) /* Setup */
     , (800342,   3,  536870932) /* SoundTable */
     , (800342,   6,   67111919) /* PaletteBase */
     , (800342,   7,  268435723) /* ClothingBase */
     , (800342,   8,  100686697) /* Icon */
     , (800342,  22,  872415275) /* PhysicsEffectTable */
     , (800342,  28,       3682) /* Spell - Prodigal Arcane Enlightenment */
     , (800342,  50,  100686628) /* IconOverlay */
     , (800342,  52,  100686604) /* IconUnderlay */;
