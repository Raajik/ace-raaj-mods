DELETE FROM `weenie` WHERE `class_Id` = 801614;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801614, 'materialrareeternalivory2', 44, '2021-11-17 16:56:08') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801614,   1,        128) /* ItemType - Misc */
     , (801614,   3,         77) /* PaletteTemplate - BlueGreen */
     , (801614,   5,          5) /* EncumbranceVal */
     , (801614,   8,          5) /* Mass */
     , (801614,  11,          1) /* MaxStackSize */
     , (801614,  12,          1) /* StackSize */
     , (801614,  13,          5) /* StackUnitEncumbrance */
     , (801614,  14,          5) /* StackUnitMass */
     , (801614,  15,      1) /* StackUnitValue */
     , (801614,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801614,  17,        151) /* RareId */
     , (801614,  19,      1) /* Value */
     , (801614,  33,          1) /* Bonded - Slippery */
     , (801614,  92,        100) /* Structure */
     , (801614,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801614,  94,      35215) /* TargetType - Jewelry, Misc, Gem, RedirectableItemEnchantmentTarget */
     , (801614, 150,        103) /* HookPlacement - Hook */
     , (801614, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801614,  11, True ) /* IgnoreCollisions */
     , (801614,  13, True ) /* Ethereal */
     , (801614,  14, True ) /* GravityStatus */
     , (801614,  19, True ) /* Attackable */
     , (801614,  22, True ) /* Inscribable */
     , (801614,  23, True ) /* DestroyOnSell */
     , (801614,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801614,   1, 'Infinite Ivory') /* Name */
     , (801614,  14, 'A bag that contains endless amounts of ivory. No matter how much ivory is used the bag will always remain full. Apply this material to any of a set of specific quest items in order to unattune it from your soul. Note that this action will also cause it to only be wieldable by you. Applying this material does not require a tinkering skill, does not add a tinker to the target''s count, and cannot destroy the target.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801614,   1,   33554817) /* Setup */
     , (801614,   3,  536870932) /* SoundTable */
     , (801614,   6,   67111919) /* PaletteBase */
     , (801614,   7,  268436430) /* ClothingBase */
     , (801614,   8,  100673215) /* Icon */
     , (801614,  22,  872415275) /* PhysicsEffectTable */
     , (801614,  50,  100673279) /* IconOverlay */
     , (801614,  52,  100686604) /* IconUnderlay */;
