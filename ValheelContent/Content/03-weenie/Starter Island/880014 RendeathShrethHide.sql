DELETE FROM `weenie` WHERE `class_Id` = 880014;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (880014, 'theshrethhiderendeath', 1, '2005-02-09 10:00:00') /* Generic */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (880014,   1,        128) /* ItemType - Misc */
     , (880014,   3,          4) /* PaletteTemplate - Brown */
     , (880014,   5,        500) /* EncumbranceVal */
     , (880014,   8,        500) /* Mass */
     , (880014,   9,          0) /* ValidLocations - None */
     , (880014,  16,          1) /* ItemUseable - No */
     , (880014,  19,          0) /* Value */
     , (880014,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (880014,  22, True ) /* Inscribable */
     , (880014,  23, True ) /* DestroyOnSell */;

INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (880014,  39,       1) /* DefaultScale */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (880014,   1, 'Rendeath Shreth Hide') /* Name */
     , (880014,  33, 'ShrethHidePickup') /* Quest */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (880014,   1, 0x02000181) /* Setup */
     , (880014,   3, 0x20000014) /* SoundTable */
     , (880014,   6, 0x04000BEF) /* PaletteBase */
     , (880014,   7, 0x10000178) /* ClothingBase */
     , (880014,   8, 0x06002BBE) /* Icon */
     , (880014,  22, 0x3400002B) /* PhysicsEffectTable */;
