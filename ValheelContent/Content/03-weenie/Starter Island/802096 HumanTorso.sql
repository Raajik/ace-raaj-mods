DELETE FROM `weenie` WHERE `class_Id` = 802096;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802096, 'HumanTorso', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802096,   1,        128) /* ItemType - Misc */
     , (802096,   3,         46) /* PaletteTemplate - Tan */
     , (802096,   5,        600) /* EncumbranceVal */
     , (802096,   8,        800) /* Mass */
     , (802096,   9,          0) /* ValidLocations - None */
     , (802096,  11,          1) /* MaxStackSize */
     , (802096,  12,          1) /* StackSize */
     , (802096,  13,        600) /* StackUnitEncumbrance */
     , (802096,  14,        800) /* StackUnitMass */
     , (802096,  15,          0) /* StackUnitValue */
     , (802096,  16,          1) /* ItemUseable - No */
     , (802096,  19,          0) /* Value */
     , (802096,  33,          0) /* Bonded - Normal */
     , (802096,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802096, 114,          0) /* Attuned - Normal */
     , (802096, 150,        103) /* HookPlacement - Hook */
     , (802096, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802096,  22, True ) /* Inscribable */
     , (802096,  23, False) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802096,  39,     0.8) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802096,   1, 'Human Torso') /* Name */
     , (802096,  33, 'HumanTorsoPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802096,   1, 0x02000DFE) /* Setup */
     , (802096,   3, 0x20000014) /* SoundTable */
     , (802096,   6, 0x0400007E) /* PaletteBase */
     , (802096,   7, 0x100003F7) /* ClothingBase */
     , (802096,   8, 0x06002895) /* Icon */
     , (802096,  22, 0x3400002B) /* PhysicsEffectTable */;
