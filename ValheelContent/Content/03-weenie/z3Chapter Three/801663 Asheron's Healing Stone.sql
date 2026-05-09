DELETE FROM `weenie` WHERE `class_Id` = 801663;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801663, 'Asherons Healing Stone', 38, '2021-11-17 16:56:08') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801663,   1,       2048) /* ItemType - Gem */
     , (801663,   3,         39) /* PaletteTemplate - Black */
     , (801663,   5,          5) /* EncumbranceVal */
     , (801663,   8,          5) /* Mass */
     , (801663,  11,          1) /* MaxStackSize */
     , (801663,  12,          1) /* StackSize */
     , (801663,  13,          5) /* StackUnitEncumbrance */
     , (801663,  14,          5) /* StackUnitMass */
     , (801663,  15,        100) /* StackUnitValue */
     , (801663,  16,          8) /* ItemUseable - Contained */
     , (801663,  17,        108) /* RareId */
     , (801663,  18,        128) /* UiEffects - Frost */
     , (801663,  19,        100) /* Value */
     , (801663,  33,          1) /* Bonded - Bonded */
     , (801663,  89,          2) /* BoosterEnum - Health */
     , (801663,  90,       1000) /* BoostValue */
     , (801663,  92,         -1) /* Structure */
     , (801663,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801663,  94,         16) /* TargetType - Creature */
     , (801663, 106,        325) /* ItemSpellcraft */
     , (801663, 107,      10000) /* ItemCurMana */
     , (801663, 108,      10000) /* ItemMaxMana */
     , (801663, 109,          0) /* ItemDifficulty */
     , (801663, 150,        103) /* HookPlacement - Hook */
     , (801663, 151,         11) /* HookType - Floor, Wall, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801663,  22, True ) /* Inscribable */
     , (801663,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801663, 167,       5) /* CooldownDuration */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801663,   1, 'Asheron''s Healing Stone') /* Name */
     , (801663,  16, 'This card can be used to cast Prodigal Invulnerability for 15 minutes.') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801663,   1,   33554809) /* Setup */
     , (801663,   3,  536870932) /* SoundTable */
     , (801663,   8,  100683150) /* Icon */
     , (801663,  22,  872415275) /* PhysicsEffectTable */;
