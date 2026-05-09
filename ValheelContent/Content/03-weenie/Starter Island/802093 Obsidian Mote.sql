DELETE FROM `weenie` WHERE `class_Id` = 802093;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802093, 'obsidianmote', 1, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802093,   1,        128) /* ItemType - Misc */
     , (802093,   3,         21) /* PaletteTemplate - Gold */
     , (802093,   5,          1) /* EncumbranceVal */
     , (802093,   8,          1) /* Mass */
     , (802093,   9,          0) /* ValidLocations - None */
     , (802093,  11,          1) /* MaxStackSize */
     , (802093,  12,          1) /* StackSize */
     , (802093,  13,          1) /* StackUnitEncumbrance */
     , (802093,  14,          1) /* StackUnitMass */
     , (802093,  15,         10) /* StackUnitValue */
     , (802093,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (802093,  19,         10) /* Value */
     , (802093,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802093,  94,        128) /* TargetType - Misc */
     , (802093, 150,        103) /* HookPlacement - Hook */
     , (802093, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802093,  22, True ) /* Inscribable */
     , (802093,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802093,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802093,   1, 'Obsidian Mote') /* Name */
     , (802093,  33, 'ObsidianMote') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802093,   1,   33556406) /* Setup */
     , (802093,   3,  536870932) /* SoundTable */
     , (802093,   6,   67111919) /* PaletteBase */
     , (802093,   7,  268435966) /* ClothingBase */
     , (802093,   8,  100670504) /* Icon */
     , (802093,  22,  872415275) /* PhysicsEffectTable */;
