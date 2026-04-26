DELETE FROM `weenie` WHERE `class_Id` = 802700;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802700, 'DrudgeForgeHammer', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802700,   1,        128) /* ItemType - Misc */
     , (802700,   5,       4000) /* EncumbranceVal */
     , (802700,   8,          5) /* Mass */
     , (802700,   9,          0) /* ValidLocations - None */
     , (802700,  11,          1) /* MaxStackSize */
     , (802700,  12,          1) /* StackSize */
     , (802700,  13,       4000) /* StackUnitEncumbrance */
     , (802700,  14,          5) /* StackUnitMass */
     , (802700,  15,       1500) /* StackUnitValue */
     , (802700,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802700,  19,       1500) /* Value */
     , (802700,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802700,  94,        128) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802700,  22, True ) /* Inscribable */
     , (802700,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802700,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802700,   1, 'Drudge Forge Hammer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802700,   1,   33554766) /* Setup */
     , (802700,   3,  536870932) /* SoundTable */
     , (802700,   6,   67111919) /* PaletteBase */
     , (802700,   7,  268435776) /* ClothingBase */
     , (802700,   8,  100669065) /* Icon */
     , (802700,  22,  872415275) /* PhysicsEffectTable */;
