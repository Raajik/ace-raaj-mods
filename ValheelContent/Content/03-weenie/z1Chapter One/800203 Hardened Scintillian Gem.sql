DELETE FROM `weenie` WHERE `class_Id` = 800203;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800203, 'hardenedgemscintillating', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800203,   1,       2048) /* ItemType - Gem */
     , (800203,   3,         83) /* PaletteTemplate - Amber */
     , (800203,   5,        200) /* EncumbranceVal */
     , (800203,   8,        200) /* Mass */
     , (800203,   9,          0) /* ValidLocations - None */
     , (800203,  11,          1) /* MaxStackSize */
     , (800203,  12,          1) /* StackSize */
     , (800203,  13,        200) /* StackUnitEncumbrance */
     , (800203,  14,        200) /* StackUnitMass */
     , (800203,  15,          0) /* StackUnitValue */
     , (800203,  16,          1) /* ItemUseable - No */
     , (800203,  19,          1) /* Value */
     , (800203,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800203, 150,        103) /* HookPlacement - Hook */
     , (800203, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800203,  22, True ) /* Inscribable */
     , (800203,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800203,  39,     1.6) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800203,   1, 'Hardened Scintillating Gem') /* Name */
     , (800203,  15, 'A large, hardened, scintillating gem.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800203,   1,   33554809) /* Setup */
     , (800203,   3,  536870932) /* SoundTable */
     , (800203,   6,   67111919) /* PaletteBase */
     , (800203,   7,  268435723) /* ClothingBase */
     , (800203,   8,  100671527) /* Icon */
     , (800203,  22,  872415275) /* PhysicsEffectTable */;
