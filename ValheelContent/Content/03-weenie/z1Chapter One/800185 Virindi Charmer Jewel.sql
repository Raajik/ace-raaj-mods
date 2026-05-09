DELETE FROM `weenie` WHERE `class_Id` = 800185;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800185, 'virindicharmer', 38, '2005-02-09 10:00:00') /* Gem */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800185,   1,       2048) /* ItemType - Gem */
     , (800185,   3,         39) /* PaletteTemplate - Black */
     , (800185,   5,         10) /* EncumbranceVal */
     , (800185,   8,         10) /* Mass */
     , (800185,   9,          0) /* ValidLocations - None */
     , (800185,  11,          1) /* MaxStackSize */
     , (800185,  12,          1) /* StackSize */
     , (800185,  13,         10) /* StackUnitEncumbrance */
     , (800185,  14,         10) /* StackUnitMass */
     , (800185,  15,          1) /* StackUnitValue */
     , (800185,  18,          1) /* UiEffects - Magical */
     , (800185,  19,          1) /* Value */
     , (800185,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800185,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800185,   1, 'Virindi Charmer') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800185,   1,   33554809) /* Setup */
     , (800185,   3,  536870932) /* SoundTable */
     , (800185,   6,   67111919) /* PaletteBase */
     , (800185,   7,  268435723) /* ClothingBase */
     , (800185,   8,  100668359) /* Icon */
     , (800185,  22,  872415275) /* PhysicsEffectTable */
     , (800185,  36,  234881046) /* MutateFilter */;
