DELETE FROM `weenie` WHERE `class_Id` = 802701;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802701, 'RawIronOre', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802701,   1,        128) /* ItemType - Misc */
     , (802701,   5,       4000) /* EncumbranceVal */
     , (802701,   8,          5) /* Mass */
     , (802701,   9,          0) /* ValidLocations - None */
     , (802701,  11,          1) /* MaxStackSize */
     , (802701,  12,          1) /* StackSize */
     , (802701,  13,       4000) /* StackUnitEncumbrance */
     , (802701,  14,          5) /* StackUnitMass */
     , (802701,  15,       1500) /* StackUnitValue */
     , (802701,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (802701,  19,       1500) /* Value */
     , (802701,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802701,  94,        128) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802701,  22, True ) /* Inscribable */
     , (802701,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802701,  39,       0.5) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802701,   1, 'Raw Iron Ore') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802701,   1,   33555863) /* Setup */
     , (802701,   3,  536870932) /* SoundTable */
     , (802701,   6,   67111919) /* PaletteBase */
     , (802701,   7,  268436306) /* ClothingBase */
     , (802701,   8,  100671137) /* Icon */
     , (802701,  22,  872415275) /* PhysicsEffectTable */;
