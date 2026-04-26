DELETE FROM `weenie` WHERE `class_Id` = 801956;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801956, 'Riley Ruuns Pack', 128, '2023-01-16 09:26:07') /* Misc */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801956,   1,        128) /* ItemType - Misc */
     , (801956,   3,         39) /* PaletteTemplate - Black */
     , (801956,   5,          5) /* EncumbranceVal */
     , (801956,   8,          5) /* Mass */
     , (801956,  11,          1) /* MaxStackSize */
     , (801956,  12,          1) /* StackSize */
     , (801956,  13,          5) /* StackUnitEncumbrance */
     , (801956,  14,          5) /* StackUnitMass */
     , (801956,  15,        500) /* StackUnitValue */
     , (801956,  16,          8) /* ItemUseable - Contained */
     , (801956,  18,          0) /* UiEffects - Lightning */
     , (801956,  19,        500) /* Value */
     , (801956,  33,          1) /* Bonded - Bonded */
     , (801956,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801956,  22, True ) /* Inscribable */
     , (801956,  63, True) /* UnlimitedUse */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801956,  39,      1.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801956,   1, 'Riley Ruun''s Pack') /* Name */
     , (801956,  33, 'RileyPack') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801956,   1,   33554769) /* Setup */
     , (801956,   3,  536870932) /* SoundTable */
     , (801956,   6,   67111919) /* PaletteBase */
     , (801956,   8,  100687125) /* Icon */
     , (801956,  22,  872415275) /* PhysicsEffectTable */
     , (801956,  52,  100686604) /* IconUnderlay */;

