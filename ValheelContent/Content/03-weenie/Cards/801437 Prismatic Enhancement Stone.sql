DELETE FROM `weenie` WHERE `class_Id` = 801437;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (801437, 'PrismaticEnhancementStone', 44, '2005-02-09 10:00:00') /* CraftTool */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (801437,   1,        128) /* ItemType - Misc */
     , (801437,   5,          1) /* EncumbranceVal */
     , (801437,   8,          5) /* Mass */
     , (801437,   9,          0) /* ValidLocations - None */
     , (801437,  11,        100) /* MaxStackSize */
     , (801437,  12,          1) /* StackSize */
     , (801437,  13,          1) /* StackUnitEncumbrance */
     , (801437,  14,          5) /* StackUnitMass */
     , (801437,  15,        500) /* StackUnitValue */
     , (801437,  16,    2097160) /* ItemUseable - SourceContainedTargetRemote */
     , (801437,  18,       2048) /* UiEffects */
     , (801437,  19,        500) /* Value */
     , (801437,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (801437,  94,      33025) /* TargetType - Misc */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (801437,  22, True ) /* Inscribable */
     , (801437,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (801437,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (801437,   1, 'Prismatic Enhancement Stone') /* Name */
     , (801437,  14, 'Use this item on a non-prismatic Legendary Rare to imbue it with magical powers.') /* Use */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (801437,   1,   33556769) /* Setup */
     , (801437,   3,  536870932) /* SoundTable */
     , (801437,   6,   67111919) /* PaletteBase */
     , (801437,   7,  268435723) /* ClothingBase */
     , (801437,   8,  100673039) /* Icon */
     , (801437,  22,  872415275) /* PhysicsEffectTable */;
