DELETE FROM `weenie` WHERE `class_Id` = 800635;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (800635, 'Ursuin Ravager Paw', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (800635,   1,        128) /* ItemType - Misc */
     , (800635,   3,         39) /* PaletteTemplate - Black */
     , (800635,   5,        500) /* EncumbranceVal */
     , (800635,   8,        500) /* Mass */
     , (800635,   9,          0) /* ValidLocations - None */
     , (800635,  16,          1) /* ItemUseable - No */
     , (800635,  19,        500) /* Value */
     , (800635,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (800635, 114,          2) /* Attuned - Attuned */
     , (800635, 150,        103) /* HookPlacement - Hook */
     , (800635, 151,          9) /* HookType - Floor, Yard */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (800635,  22, True ) /* Inscribable */
     , (800635,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (800635,  39,       2) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (800635,   1, 'Ursuin Ravager Paw') /* Name */
     , (800635,  15, 'A Large Ursuin Ravager paw.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (800635,   1,   33557018) /* Setup */
     , (800635,   3,  536870932) /* SoundTable */
     , (800635,   6,   67111893) /* PaletteBase */
     , (800635,   7,  268436173) /* ClothingBase */
     , (800635,   8,  100671518) /* Icon */
     , (800635,  22,  872415275) /* PhysicsEffectTable */;
