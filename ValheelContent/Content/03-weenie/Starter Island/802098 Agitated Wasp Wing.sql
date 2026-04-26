DELETE FROM `weenie` WHERE `class_Id` = 802098;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (802098, 'AgitatedWaspWing', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (802098,   1,        128) /* ItemType - Misc */
     , (802098,   3,         14) /* PaletteTemplate - Red */
     , (802098,   5,         25) /* EncumbranceVal */
     , (802098,   8,         10) /* Mass */
     , (802098,   9,          0) /* ValidLocations - None */
     , (802098,  16,          1) /* ItemUseable - No */
     , (802098,  19,          5) /* Value */
     , (802098,  33,          1) /* Bonded - Bonded */
     , (802098,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (802098, 114,          1) /* Attuned - Attuned */
     , (802098, 150,        103) /* HookPlacement - Hook */
     , (802098, 151,          2) /* HookType - Wall */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (802098,  22, True ) /* Inscribable */
     , (802098,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (802098,  39,     1.1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (802098,   1, 'Agitated Wasp Wing') /* Name */
     , (802098,  33, 'AgitatedWingPickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (802098,   1,   33558524) /* Setup */
     , (802098,   3,  536870932) /* SoundTable */
     , (802098,   6,   67109312) /* PaletteBase */
     , (802098,   7,  268435546) /* ClothingBase */
     , (802098,   8,  100670062) /* Icon */
     , (802098,  22,  872415275) /* PhysicsEffectTable */;
