DELETE FROM `weenie` WHERE `class_Id` = 310001;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (310001, 'TestStructureSpawner', 38, '2023-04-03 05:20:46') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (310001,   1,       2048) /* ItemType - Gem */
     , (310001,   3,         39) /* PaletteTemplate - Black */
     , (310001,   5,          0) /* EncumbranceVal */
     , (310001,   9,          0) /* ValidLocations - None */
     , (310001,  11,          1) /* MaxStackSize */
     , (310001,  12,          1) /* StackSize */
     , (310001,  16,          8) /* ItemUseable - Contained */
     , (310001,  18,          1) /* UiEffects - Magical */
     , (310001,  19,          1) /* Value */
     , (310001,  33,          1) /* Bonded - Bonded */
     , (310001,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (310001,  94,         16) /* TargetType - Creature */
     , (310001, 114,          1) /* Attuned - Attuned */
     , (310001, 150,        103) /* HookPlacement - Hook */
     , (310001, 151,         11) /* HookType - Floor, Wall, Yard */
	 , (310001,9064,     310002) /* GeneratorWCID */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (310001,  22, True ) /* Inscribable */
     , (310001,  63, False) /* UnlimitedUse */
	 , (310001, 9062, True) /* StuctureGenSpawner */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (310001,   1, 'TestStructureSpawner') /* Name */
     , (310001,  16, 'TestStructureSpawner') /* LongDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (310001,   1,   33556769) /* Setup */
     , (310001,   3,  536870932) /* SoundTable */
     , (310001,   6,   67111919) /* PaletteBase */
     , (310001,   7,  268435723) /* ClothingBase */
     , (310001,   8,  100672368) /* Icon */
     , (310001,  22,  872415275) /* PhysicsEffectTable */;

