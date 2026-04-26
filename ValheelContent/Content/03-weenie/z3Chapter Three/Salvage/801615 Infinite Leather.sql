DELETE FROM `weenie` WHERE `class_Id` = 801615;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801615, 'materialrareeternalleather2', 44, '2021-11-17 16:56:08') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801615,   1,        128) /* ItemType - Misc */
     , (801615,   3,         77) /* PaletteTemplate - BlueGreen */
     , (801615,   5,          5) /* EncumbranceVal */
     , (801615,   8,          5) /* Mass */
     , (801615,  11,          1) /* MaxStackSize */
     , (801615,  12,          1) /* StackSize */
     , (801615,  13,          5) /* StackUnitEncumbrance */
     , (801615,  14,          5) /* StackUnitMass */
     , (801615,  15,      1) /* StackUnitValue */
     , (801615,  16,     524296) /* ItemUseable - SourceContainedTargetContained */
     , (801615,  17,        152) /* RareId */
     , (801615,  19,      1) /* Value */
     , (801615,  33,         -1) /* Bonded - Slippery */
     , (801615,  92,        100) /* Structure */
     , (801615,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801615,  94,      35215) /* TargetType - Jewelry, Misc, Gem, RedirectableItemEnchantmentTarget */
     , (801615, 150,        103) /* HookPlacement - Hook */
     , (801615, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801615,  11, True ) /* IgnoreCollisions */
     , (801615,  13, True ) /* Ethereal */
     , (801615,  14, True ) /* GravityStatus */
     , (801615,  19, True ) /* Attackable */
     , (801615,  22, True ) /* Inscribable */
     , (801615,  23, True ) /* DestroyOnSell */
     , (801615,  63, True ) /* UnlimitedUse */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801615,   1, 'Infinite Leather') /* Name */
     , (801615,  14, 'A bag that contains endless amounts of leather. No matter how much leather is used the bag will always remain full. Apply this material to a treasure-generated item in order to render the item "Retained." Retained items cannot be salvaged or sold to vendors. Applying this material does not require a tinkering skill, does not add a tinker to the target''s count, and cannot destroy the target.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801615,   1,   33554817) /* Setup */
     , (801615,   3,  536870932) /* SoundTable */
     , (801615,   6,   67111919) /* PaletteBase */
     , (801615,   7,  268435833) /* ClothingBase */
     , (801615,   8,  100689666) /* Icon */
     , (801615,  22,  872415275) /* PhysicsEffectTable */
     , (801615,  50,  100673283) /* IconOverlay */
     , (801615,  52,  100686604) /* IconUnderlay */;
