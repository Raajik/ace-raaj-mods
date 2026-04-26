DELETE FROM `weenie` WHERE `class_Id` = 800641;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800641, 'Venthor Wings', 2, '2021-11-01 00:00:00') /* Clothing */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800641,   1,        128) /* ItemType - Misc */
     , (800641,   3,         39) /* PaletteTemplate - Black */
     , (800641,   5,        500) /* EncumbranceVal */
     , (800641,   8,        500) /* Mass */
     , (800641,   9,          0) /* ValidLocations - None */
     , (800641,  16,          1) /* ItemUseable - No */
     , (800641,  19,        500) /* Value */
     , (800641,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800641, 114,          2) /* Attuned - Attuned */
     , (800641, 150,        103) /* HookPlacement - Hook */
     , (800641, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800641,  22, True ) /* Inscribable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800641,   1, 'Venthor Wings') /* Name */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800641,   1,   33561386) /* Setup */
     , (800641,   3,  536870932) /* SoundTable */
     , (800641,   7,  268437607) /* ClothingBase */
     , (800641,   8,  100693238) /* Icon */
     , (800641,  22,  872415275) /* PhysicsEffectTable */
     , (800641,  50,  100690999) /* IconOverlay */;
